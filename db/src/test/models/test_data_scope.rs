use serde::Deserialize;
#[derive(Deserialize, Debug)]
pub struct TestDataScopeSearchReq {
    pub data_a: Option<String>,
    pub data_b: Option<String>,
}

#[derive(Deserialize, Debug)]
pub struct TestDataScopeAddReq {
    pub data_a: String,
    pub data_b: String,
}

#[derive(Deserialize)]
pub struct TestDataScopeDeleteReq {
    pub ids: Vec<String>,
}
