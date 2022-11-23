use std::{collections::HashMap, sync::Arc};

use db::{
    common::ctx::ApiInfo,
    db_conn,
    system::entities::{sys_role_api, sys_user},
    DB,
};
use once_cell::sync::Lazy;
use sea_orm::{ColumnTrait, ConnectionTrait, EntityTrait, QueryFilter, TransactionTrait};
use tokio::sync::Mutex;
use tracing::info;


pub static ALL_APIS: Lazy<Arc<Mutex<HashMap<String, ApiInfo>>>> = Lazy::new(|| {
    let apis: HashMap<String, ApiInfo> = HashMap::new();
    Arc::new(Mutex::new(apis))
});

pub async fn init_all_api() {
    api_init_func().await;
}

pub async fn re_init_all_api() {
    let mut apis = ALL_APIS.lock().await;
    apis.clear();
    drop(apis);
    api_init_func().await;
}

async fn api_init_func() {
    let db = DB.get_or_init(db_conn).await;
    let res = self::get_menus(db, false, true,true).await;
    match res {
        Ok(menus) => {
            for menu in menus {
                self::add_api(db, &menu.id, &menu.api, &menu.menu_name, &menu.data_cache_method, &menu.log_method).await;
            }
            let apis = ALL_APIS.lock().await;
            info!("初始化时获取路由API成功:{:#?}", apis);
            drop(apis);
        }
        Err(e) => {
            info!("初始化时获取路由API失败:{:#?}", e)
        }
    }
}

pub async fn add_api<C>(db: &C, api_id: &str, api: &str, menu_name: &str, data_cache_method: &str, log_method: &str)
where
    C: TransactionTrait + ConnectionTrait,
{
    let related_api = match system::get_related_api_by_db_name(db, api_id).await {
        Ok(x) => Some(x),
        Err(e) => {
            info!("{}", e);
            None
        }
    };

    let api_info = ApiInfo {
        name: menu_name.to_string(),
        related_api,
        data_cache_method: data_cache_method.to_string(),
        log_method: log_method.to_string(),
    };
    let mut apis = ALL_APIS.lock().await;
    apis.entry(api.to_string())
        .and_modify(|x| {
            *x = api_info.clone();
        })
        .or_insert(api_info);
    drop(apis)
}

pub async fn remove_api(api: &str) {
    let mut apis = ALL_APIS.lock().await;
    apis.remove(api);
    drop(apis)
}

pub async fn is_in(api: &str) -> bool {
    let apis = ALL_APIS.lock().await;
    let res = apis.get(api).is_some();
    drop(apis);
    res
}

pub async fn check_api_permission(api: &str, method: &str, user_id: &str) -> bool {
    let db = DB.get_or_init(db_conn).await;
    let role_id = match sys_user::Entity::find().filter(sys_user::Column::Id.eq(user_id)).one(db).await {
        Ok(v) => match v {
            Some(user) => user.role_id,
            None => {
                info!("未查找到当前用户:{:?}", &user_id);
                return false;
            }
        },
        Err(e) => {
            info!("查找用户出现错误:{:#?}", e);
            return false;
        }
    };
    match sys_role_api::Entity::find()
        .filter(sys_role_api::Column::Api.eq(api))
        .filter(sys_role_api::Column::Method.eq(method))
        .filter(sys_role_api::Column::RoleId.eq(role_id))
        .one(db)
        .await
    {
        Ok(x) => x.is_some(),
        Err(e) => {
            info!("检查API权限出现错误:{:#?}", e);
            false
        }
    }
}

/// 获取全部菜单 或者 除开按键api级别的外的路由   
/// is_router 是否是菜单路由，用于前端生成路由   
/// is_only_api 仅获取按键，api级别的路由   
/// 不能同时为true   
/// 同时false 为获取全部路由   
/// is_only_enabled 获取启用的路由，false 为全部路由  
pub async fn get_menus<C>(db: &C, is_router: bool, is_only_api: bool,is_only_enabled:bool) -> Result<Vec<MenuResp>>
where
    C: TransactionTrait + ConnectionTrait,
{
    let mut s = SysMenu::find().filter(sys_menu::Column::DeletedAt.is_null());
    if is_router {
        s = s.filter(sys_menu::Column::MenuType.ne("F"));
    };
    if is_only_api {
        s = s.filter(sys_menu::Column::MenuType.eq("F"));
    };
    if is_only_enabled {
        s = s.filter(sys_menu::Column::Status.eq("1"));
    };

    let res = s.order_by(sys_menu::Column::OrderSort, Order::Asc).into_model::<MenuResp>().all(db).await?;
    Ok(res)
}
