use app_service::{service_utils::jwt::Claims, system};
use db::{
    common::res::{ListData, PageParams, Res},
    db_conn,
    system::{
        models::sys_post::{SysPostAddReq, SysPostDeleteReq, SysPostEditReq, SysPostResp, SysPostSearchReq},
        prelude::SysPostModel,
    },
    DB,
};
use poem::{
    handler,
    web::{Json, Query},
};

/// get_list 获取列表
/// page_params 分页参数
#[handler]
pub async fn get_sort_list(Query(page_params): Query<PageParams>, Query(req): Query<SysPostSearchReq>) -> Res<ListData<SysPostModel>> {
    let db = DB.get_or_init(db_conn).await;
    let res = system::sys_post::get_sort_list(db, page_params, req).await;
    match res {
        Ok(x) => Res::with_data(x),
        Err(e) => Res::with_err(&e.to_string()),
    }
}

/// add 添加
#[handler]
pub async fn add(Json(req): Json<SysPostAddReq>, user: Claims) -> Res<String> {
    let db = DB.get_or_init(db_conn).await;
    let res = system::sys_post::add(db, req, user.id).await;
    match res {
        Ok(x) => Res::with_msg(&x),
        Err(e) => Res::with_err(&e.to_string()),
    }
}

/// delete 完全删除
#[handler]
pub async fn delete(Json(req): Json<SysPostDeleteReq>) -> Res<String> {
    let db = DB.get_or_init(db_conn).await;
    let res = system::sys_post::delete(db, req).await;
    match res {
        Ok(x) => Res::with_msg(&x),
        Err(e) => Res::with_err(&e.to_string()),
    }
}

// edit 修改
#[handler]
pub async fn edit(Json(req): Json<SysPostEditReq>, user: Claims) -> Res<String> {
    let db = DB.get_or_init(db_conn).await;
    let res = system::sys_post::edit(db, req, user.id).await;
    match res {
        Ok(x) => Res::with_msg(&x),
        Err(e) => Res::with_err(&e.to_string()),
    }
}

/// get_user_by_id 获取用户Id获取用户
#[handler]
pub async fn get_by_id(Query(req): Query<SysPostSearchReq>) -> Res<SysPostResp> {
    let db = DB.get_or_init(db_conn).await;
    let res = system::sys_post::get_by_id(db, req).await;
    match res {
        Ok(x) => Res::with_data(x),
        Err(e) => Res::with_err(&e.to_string()),
    }
}

/// get_all 获取全部
#[handler]
pub async fn get_all() -> Res<Vec<SysPostResp>> {
    let db = DB.get_or_init(db_conn).await;
    let res = system::sys_post::get_all(db).await;
    match res {
        Ok(x) => Res::with_data(x),
        Err(e) => Res::with_err(&e.to_string()),
    }
}
