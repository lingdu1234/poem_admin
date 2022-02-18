//! SeaORM Entity. Generated by sea-orm-codegen 0.6.0

use sea_orm::entity::prelude::*;
use serde::{Deserialize, Serialize};

#[derive(Clone, Debug, PartialEq, DeriveEntityModel, Serialize, Deserialize)]
#[sea_orm(table_name = "sys_job_log")]
pub struct Model {
    #[sea_orm(primary_key, auto_increment = false)]
    pub job_log_id: String,
    pub job_id: String,
    pub lot_id: i64,
    pub lot_order: i64,
    pub job_name: String,
    pub job_group: String,
    pub invoke_target: String,
    pub job_params: Option<String>,
    pub job_message: Option<String>,
    pub status: String,
    pub exception_info: Option<String>,
    pub is_once: Option<String>,
    pub created_at: DateTime,
    pub elapsed_time: i64,
}

#[derive(Copy, Clone, Debug, EnumIter)]
pub enum Relation {}

impl RelationTrait for Relation {
    fn def(&self) -> RelationDef {
        panic!("No RelationDef")
    }
}

impl ActiveModelBehavior for ActiveModel {}
