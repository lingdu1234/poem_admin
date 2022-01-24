use crate::apps::common::models::{CudResData, ListData, PageParams, RespData};
use crate::apps::system::entities::sys_role_dept;
use chrono::{Local, NaiveDateTime};
use poem::{error::BadRequest, http::StatusCode, Error, Result};
use sea_orm::{
    ActiveModelTrait, ColumnTrait, ConnectionTrait, DatabaseConnection, EntityTrait, Order,
    PaginatorTrait, QueryFilter, QueryOrder, Set,
};

use crate::apps::system::models::sys_dept::RespTree;

use super::super::entities::{prelude::*, sys_dept};
use super::super::models::sys_dept::{AddReq, DeleteReq, EditReq, Resp, SearchReq};

/// get_list 获取列表
/// page_params 分页参数
/// db 数据库连接 使用db.0
pub async fn get_sort_list(
    db: &DatabaseConnection,
    page_params: PageParams,
    req: SearchReq,
) -> Result<ListData<sys_dept::Model>> {
    let page_num = page_params.page_num.unwrap_or(1);
    let page_per_size = page_params.page_size.unwrap_or(10);
    //  生成查询条件
    let mut s = SysDept::find();

    if let Some(x) = req.dept_id {
        s = s.filter(sys_dept::Column::DeptId.eq(x));
    }

    if let Some(x) = req.dept_name {
        s = s.filter(sys_dept::Column::DeptName.contains(&x));
    }
    if let Some(x) = req.status {
        s = s.filter(sys_dept::Column::Status.eq(x));
    }
    if let Some(x) = req.begin_time {
        s = s.filter(sys_dept::Column::CreatedAt.gte(x));
    }
    if let Some(x) = req.end_time {
        s = s.filter(sys_dept::Column::CreatedAt.lte(x));
    }
    // 获取全部数据条数
    let total = s.clone().count(db).await.map_err(BadRequest)?;
    // 分页获取数据
    let paginator = s
        .order_by_asc(sys_dept::Column::OrderNum)
        .paginate(db, page_per_size);
    let total_pages = paginator.num_pages().await.map_err(BadRequest)?;
    let list = paginator
        .fetch_page(page_num - 1)
        .await
        .map_err(BadRequest)?;

    let res = ListData {
        total,
        page_num,
        list,
        total_pages,
    };
    Ok(res)
}

pub async fn check_data_is_exist(dept_name: String, db: &DatabaseConnection) -> Result<bool> {
    let s1 = SysDept::find().filter(sys_dept::Column::DeptName.eq(dept_name));
    let count1 = s1.count(db).await.map_err(BadRequest)?;
    Ok(count1 > 0)
}

/// add 添加

pub async fn add(db: &DatabaseConnection, req: AddReq) -> Result<CudResData<String>> {
    //  检查字典类型是否存在
    if check_data_is_exist(req.clone().dept_name, db).await? {
        return Err(Error::from_string("数据已存在", StatusCode::BAD_REQUEST));
    }

    let uid = scru128::scru128().to_string();
    let now: NaiveDateTime = Local::now().naive_local();
    let user = sys_dept::ActiveModel {
        dept_id: Set(uid.clone()),
        parent_id: Set(req.parent_id),
        dept_name: Set(req.dept_name),
        order_num: Set(req.order_num),
        leader: Set(req.leader),
        status: Set(req.status),
        phone: Set(req.phone),
        email: Set(req.email),
        created_at: Set(Some(now)),
        ..Default::default()
    };
    let txn = db.begin().await.map_err(BadRequest)?;
    //  let re =   user.insert(db).await?; 这个多查询一次结果
    let _ = SysDept::insert(user).exec(&txn).await.map_err(BadRequest)?;
    txn.commit().await.map_err(BadRequest)?;
    let res = CudResData {
        id: Some(uid),
        msg: "添加成功".to_string(),
    };
    Ok(res)
}

/// delete 完全删除
pub async fn delete(db: &DatabaseConnection, req: DeleteReq) -> Result<String> {
    let mut s = SysDept::delete_many();

    s = s.filter(sys_dept::Column::DeptId.eq(req.dept_id));

    //开始删除
    let d = s.exec(db).await.map_err(BadRequest)?;

    match d.rows_affected {
        0 => Err(Error::from_string(
            "删除失败,数据不存在",
            StatusCode::BAD_REQUEST,
        )),
        i => Ok(format!("成功删除{}条数据", i)),
    }
}

// edit 修改
pub async fn edit(db: &DatabaseConnection, req: EditReq) -> Result<String> {
    //  检查字典类型是否存在
    let s1 = SysDept::find()
        .filter(sys_dept::Column::DeptName.eq(req.clone().dept_name))
        .filter(sys_dept::Column::DeptId.ne(req.clone().dept_id))
        .count(db)
        .await
        .map_err(BadRequest)?;
    if s1 > 0 {
        return Err(Error::from_string("数据已存在", StatusCode::BAD_REQUEST));
    }
    let uid = req.dept_id;
    let s_s = SysDept::find_by_id(uid.clone())
        .one(db)
        .await
        .map_err(BadRequest)?;
    let s_r: sys_dept::ActiveModel = s_s.unwrap().into();
    let now: NaiveDateTime = Local::now().naive_local();
    let act = sys_dept::ActiveModel {
        parent_id: Set(req.parent_id),
        dept_name: Set(req.dept_name),
        order_num: Set(req.order_num),
        status: Set(req.status),
        leader: Set(req.leader),
        phone: Set(req.phone),
        email: Set(req.email),
        updated_at: Set(Some(now)),
        ..s_r
    };
    // 更新
    act.update(db).await.map_err(BadRequest)?; //这个两种方式一样 都要多查询一次
    Ok(format!("用户<{}>数据更新成功", uid))
}

/// get_user_by_id 获取用户Id获取用户   
/// db 数据库连接 使用db.0
pub async fn get_by_id(db: &DatabaseConnection, req: SearchReq) -> Result<Resp> {
    let mut s = SysDept::find();
    s = s.filter(sys_dept::Column::DeletedAt.is_null());
    //
    if let Some(x) = req.dept_id {
        s = s.filter(sys_dept::Column::DeptId.eq(x));
    } else {
        return Err(Error::from_string("请求参数错误", StatusCode::BAD_REQUEST));
    }

    let res = match s.into_model::<Resp>().one(db).await.map_err(BadRequest)? {
        Some(m) => m,
        None => return Err(Error::from_string("数据不存在", StatusCode::BAD_REQUEST)),
    };

    Ok(res)
}

/// get_all 获取全部   
/// db 数据库连接 使用db.0
pub async fn get_all(db: &DatabaseConnection) -> Result<Vec<Resp>> {
    let s = SysDept::find()
        .filter(sys_dept::Column::DeletedAt.is_null())
        .filter(sys_dept::Column::Status.eq(1))
        .order_by(sys_dept::Column::OrderNum, Order::Asc)
        .into_model::<Resp>()
        .all(db)
        .await
        .map_err(BadRequest)?;
    Ok(s)
}

pub async fn get_dept_tree(db: &DatabaseConnection) -> Result<Vec<RespTree>> {
    // 获取全部数据
    let dept_list = get_all(db).await.unwrap();

    // 创建树
    let mut tree: Vec<RespTree> = Vec::new();
    for item in dept_list {
        let tree_item = RespTree {
            data: item,
            ..Default::default()
        };
        tree.push(tree_item);
    }
    let res = creat_menu_tree(tree, "0".to_string());
    Ok(res)
}

pub fn creat_menu_tree(depts: Vec<RespTree>, pid: String) -> Vec<RespTree> {
    let mut tree: Vec<RespTree> = Vec::new();
    for mut t in depts.clone() {
        if t.data.parent_id == pid {
            t.children = Some(creat_menu_tree(depts.clone(), t.data.dept_id.clone()));
            tree.push(t.clone());
        }
    }
    tree
}

//  根据角色id获取授权部门
pub async fn get_dept_by_role_id(db: &DatabaseConnection, role_id: String) -> Result<Vec<String>> {
    let mut dept_ids: Vec<String> = Vec::new();
    let mut s = SysRoleDept::find();
    s = s.filter(sys_role_dept::Column::RoleId.eq(role_id));
    let res = s.all(db).await.map_err(BadRequest)?;
    for item in res {
        dept_ids.push(item.dept_id);
    }
    Ok(dept_ids)
}