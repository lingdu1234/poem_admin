use app_service::{service_utils::jwt::Claims, system};
use db::{
    common::res::Res,
    db_conn,
    system::{
        models::sys_update_log::{SysUpdateLogAddReq, SysUpdateLogDeleteReq, SysUpdateLogEditReq},
        prelude::SysUpdateLogModel,
    },
    DB,
};
use poem::{handler, web::Json};

/// add 添加
#[handler]
pub async fn add(Json(req): Json<SysUpdateLogAddReq>, user: Claims) -> Res<String> {
    let db = DB.get_or_init(db_conn).await;
    let res = system::sys_update_log::add(db, req, &user.id).await;
    match res {
        Ok(x) => Res::with_msg(&x),
        Err(e) => Res::with_err(&e.to_string()),
    }
}

/// delete 完全删除
#[handler]
pub async fn delete(Json(req): Json<SysUpdateLogDeleteReq>) -> Res<String> {
    let db = DB.get_or_init(db_conn).await;
    let res = system::sys_update_log::soft_delete(db, &req.id).await;
    match res {
        Ok(x) => Res::with_msg(&x),
        Err(e) => Res::with_err(&e.to_string()),
    }
}

// edit 修改
#[handler]
pub async fn edit(Json(req): Json<SysUpdateLogEditReq>, user: Claims) -> Res<String> {
    let db = DB.get_or_init(db_conn).await;
    let res = system::sys_update_log::edit(db, req, &user.id).await;
    match res {
        Ok(x) => Res::with_msg(&x),
        Err(e) => Res::with_err(&e.to_string()),
    }
}

/// get_all 获取全部
#[handler]
pub async fn get_all() -> Res<Vec<SysUpdateLogModel>> {
    let db = DB.get_or_init(db_conn).await;
    let res = system::sys_update_log::get_all(db).await;
    match res {
        Ok(x) => Res::with_data(x),
        Err(e) => Res::with_err(&e.to_string()),
    }
}
