//! SeaORM Entity. Generated by sea-orm-codegen 0.6.0

use sea_orm::entity::prelude::*;
use serde::{Deserialize, Serialize};

#[derive(Clone, Debug, PartialEq, DeriveEntityModel, Serialize, Deserialize)]
#[sea_orm(table_name = "casbin_rule")]
pub struct Model {
    #[sea_orm(primary_key)]
    pub id: i32,
    pub ptype: Option<String>,
    pub v0: Option<String>,
    pub v1: Option<String>,
    pub v2: Option<String>,
    pub v3: Option<String>,
    pub v4: Option<String>,
    pub v5: Option<String>,
}

#[derive(Copy, Clone, Debug, EnumIter)]
pub enum Relation {}

impl RelationTrait for Relation {
    fn def(&self) -> RelationDef {
        panic!("No RelationDef")
    }
}

impl ActiveModelBehavior for ActiveModel {}
