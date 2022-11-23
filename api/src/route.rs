use configs::CFG;
use poem::{endpoint::StaticFilesEndpoint, get, post, Endpoint, EndpointExt, Route};

use super::{system, test};

pub fn api() -> Route {
    Route::new()
        .nest(&CFG.web.upload_url, StaticFilesEndpoint::new(&CFG.web.upload_dir).show_files_listing())
        // 无需授权Api.通用模块
        .nest("/comm", no_auth_api())
        // 系统管理模块
        .nest("/system", set_system_middleware())
        //  测试模块
        .nest(
            "/test",
            test::test_api()
                .with(middleware_fn::ApiAuth)
                .with_if(CFG.log.enable_oper_log, middleware_fn::OperLog)
                .with(middleware_fn::Ctx),
        )
}

fn set_system_middleware() -> impl Endpoint {
    system::system_api()
        .with(middleware_fn::ApiAuth)
        .with_if(CFG.log.enable_oper_log, middleware_fn::OperLog)
        .with_if(CFG.server.cache_time > 0 && CFG.server.cache_method == 0, middleware_fn::Cache)
        .with_if(CFG.server.cache_time > 0 && CFG.server.cache_method == 1, middleware_fn::SkyTableCache)
        .with(middleware_fn::Ctx)
}

//

pub fn no_auth_api() -> Route {
    Route::new()
        .at("/login", post(system::login)) // 登录
        .at("/get_captcha", get(system::get_captcha)) // 获取验证码
        .at("/log_out", post(system::log_out)) // 退出登录
}
