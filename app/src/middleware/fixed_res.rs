use poem::{Endpoint, Middleware, Request, Response, Result, IntoResponse};

pub struct FixedRes;

impl<E: Endpoint> Middleware<E> for FixedRes {
    type Output = CacheEndpoint<E>;

    fn transform(&self, ep: E) -> Self::Output {
        CacheEndpoint { ep }
    }
}

/// Endpoint for `Tracing` middleware.
pub struct CacheEndpoint<E> {
    ep: E,
}

#[poem::async_trait]
impl<E: Endpoint> Endpoint for CacheEndpoint<E> {
    type Output = Response;

    async fn call(&self, req: Request) -> Result<Self::Output> {
        let res_end = self.ep.call(req).await;
        match res_end {
            Ok(v) => {
                let res = v.into_response();
                let res_ctx = match res.into_body().into_string().await {
                    Ok(str) => str,
                    Err(_) => "".to_string(),
                };

                let res_ctx_ = res_ctx.clone();

                Ok(res_ctx.into_response())
            }
            Err(e) => Err(e),
        }
    }
}
