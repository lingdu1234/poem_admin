use app_service::{service_utils::jwt::Claims, system};
use db::{
    common::res::{ListData, PageParams, Res},
    db_conn,
    system::{
        models::sys_dept::{DeptResp, RespTree, SysDeptAddReq, SysDeptDeleteReq, SysDeptEditReq, SysDeptSearchReq},
        prelude::SysDeptModel,
    },
    DB,
};
use poem::{
    handler,
    web::{Json, Query},
};

/// get_list 获取列表
/// page_params 分页参数
/// db 数据库连接 使用db.0
#[handler]
pub async fn get_sort_list(Query(page_params): Query<PageParams>, Query(req): Query<SysDeptSearchReq>) -> Res<ListData<SysDeptModel>> {
    let db = DB.get_or_init(db_conn).await;
    let res = system::sys_dept::get_sort_list(db, page_params, req).await;
    match res {
        Ok(x) => Res::with_data(x),
        Err(e) => Res::with_err(&e.to_string()),
    }
}
/// add 添加
#[handler]
pub async fn add(Json(req): Json<SysDeptAddReq>, user: Claims) -> Res<String> {
    let db = DB.get_or_init(db_conn).await;
    let res = system::sys_dept::add(db, req, user.id).await;
    match res {
        Ok(x) => Res::with_msg(&x),
        Err(e) => Res::with_err(&e.to_string()),
    }
}

/// delete 完全删除
#[handler]
pub async fn delete(Json(req): Json<SysDeptDeleteReq>) -> Res<String> {
    let db = DB.get_or_init(db_conn).await;
    let res = system::sys_dept::delete(db, req).await;
    match res {
        Ok(x) => Res::with_msg(&x),
        Err(e) => Res::with_err(&e.to_string()),
    }
}

// edit 修改
#[handler]
pub async fn edit(Json(req): Json<SysDeptEditReq>, user: Claims) -> Res<String> {
    let db = DB.get_or_init(db_conn).await;
    let res = system::sys_dept::edit(db, req, user.id).await;
    match res {
        Ok(x) => Res::with_msg(&x),
        Err(e) => Res::with_err(&e.to_string()),
    }
}

/// get_user_by_id 获取用户Id获取用户
/// db 数据库连接 使用db.0
#[handler]
pub async fn get_by_id(Query(req): Query<SysDeptSearchReq>) -> Res<DeptResp> {
    let db = DB.get_or_init(db_conn).await;
    if let Some(x) = req.dept_id {
        let res = system::sys_dept::get_by_id(db, &x).await;
        match res {
            Ok(x) => Res::with_data(x),
            Err(e) => Res::with_err(&e.to_string()),
        }
    } else {
        Res::with_err("参数错误")
    }
}

/// get_all 获取全部
#[handler]
pub async fn get_all() -> Res<Vec<DeptResp>> {
    let db = DB.get_or_init(db_conn).await;
    let res = system::sys_dept::get_all(db).await;
    match res {
        Ok(x) => Res::with_data(x),
        Err(e) => Res::with_err(&e.to_string()),
    }
}

#[handler]
pub async fn get_dept_tree() -> Res<Vec<RespTree>> {
    let db = DB.get_or_init(db_conn).await;
    let res = system::sys_dept::get_dept_tree(db).await;
    match res {
        Ok(x) => Res::with_data(x),
        Err(e) => Res::with_err(&e.to_string()),
    }
}
