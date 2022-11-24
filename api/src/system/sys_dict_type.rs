use app_service::{service_utils::jwt::Claims, system};
use db::{
    common::res::{ListData, PageParams, Res},
    db_conn,
    system::{
        models::sys_dict_type::{SysDictTypeAddReq, SysDictTypeDeleteReq, SysDictTypeEditReq, SysDictTypeSearchReq},
        prelude::SysDictTypeModel,
    },
    DB,
};
use poem::{
    handler,
    web::{Json, Query},
    IntoResponse,
};

/// get_list 获取列表
/// page_params 分页参数
#[handler]
pub async fn get_sort_list(Query(page_params): Query<PageParams>, Query(req): Query<SysDictTypeSearchReq>) -> Res<ListData<SysDictTypeModel>> {
    let db = DB.get_or_init(db_conn).await;
    let res = system::sys_dict_type::get_sort_list(db, page_params, req).await;
    match res {
        Ok(x) => Res::with_data(x),
        Err(e) => Res::with_err(&e.to_string()),
    }
}
/// add 添加
#[handler]
pub async fn add(Json(req): Json<SysDictTypeAddReq>, user: Claims) -> Res<String> {
    let db = DB.get_or_init(db_conn).await;
    let res = system::sys_dict_type::add(db, req, user.id).await;
    match res {
        Ok(x) => Res::with_msg(&x),
        Err(e) => Res::with_err(&e.to_string()),
    }
}

/// delete 完全删除
#[handler]
pub async fn delete(Json(req): Json<SysDictTypeDeleteReq>) -> Res<String> {
    let db = DB.get_or_init(db_conn).await;
    let res = system::sys_dict_type::delete(db, req).await;
    match res {
        Ok(x) => Res::with_msg(&x),
        Err(e) => Res::with_err(&e.to_string()),
    }
}

// edit 修改
#[handler]
pub async fn edit(Json(edit_req): Json<SysDictTypeEditReq>, user: Claims) -> Res<String> {
    let db = DB.get_or_init(db_conn).await;
    let res = system::sys_dict_type::edit(db, edit_req, user.id).await;
    match res {
        Ok(x) => Res::with_msg(&x),
        Err(e) => Res::with_err(&e.to_string()),
    }
}

/// get_user_by_id 获取用户Id获取用户
#[handler]
pub async fn get_by_id(Query(req): Query<SysDictTypeSearchReq>) -> impl IntoResponse {
    let db = DB.get_or_init(db_conn).await;
    let res = system::sys_dict_type::get_by_id(db, req).await;
    match res {
        Ok(x) => Res::with_data(x),
        Err(e) => Res::with_err(&e.to_string()),
    }
}

/// get_all 获取全部

#[handler]
pub async fn get_all() -> impl IntoResponse {
    let db = DB.get_or_init(db_conn).await;
    let res = system::sys_dict_type::get_all(db).await;
    match res {
        Ok(x) => Res::with_data(x),
        Err(e) => Res::with_err(&e.to_string()),
    }
}
