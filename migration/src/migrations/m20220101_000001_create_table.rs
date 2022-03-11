use anyhow::Result;
use db::{system::entities::*, test::entities::*};
pub use sea_orm::{ConnectionTrait, DatabaseConnection, DatabaseTransaction, Schema};
use sea_schema::migration::*;

use super::super::db_utils::{creat_one_table as Cot, create_table_index as Cti, drop_one_table as Dot, init_data};

pub struct Migration;

impl MigrationName for Migration {
    fn name(&self) -> &str {
        "m20220101_000001_create_table"
    }
}

#[async_trait::async_trait]
impl MigrationTrait for Migration {
    async fn up(&self, manager: &SchemaManager) -> Result<(), DbErr> {
        create_table(manager).await?;
        create_index(manager).await?;
        init_data(manager, Migration.name()).await?;
        Ok(())
    }

    async fn down(&self, manager: &SchemaManager) -> Result<(), DbErr> {
        drop_table(manager).await
    }
}

/// 创建表格
async fn create_table(manager: &SchemaManager<'_>) -> Result<(), DbErr> {
    println!("开始创建表格----------");
    let db = manager.get_connection();
    // create_table(manager).await
    let builder = manager.get_database_backend();
    let schema = Schema::new(builder);

    Cot(db, builder, &schema, sys_dept::Entity).await?;
    Cot(db, builder, &schema, sys_dict_data::Entity).await?;
    Cot(db, builder, &schema, sys_dict_type::Entity).await?;
    Cot(db, builder, &schema, sys_job::Entity).await?;
    Cot(db, builder, &schema, sys_menu::Entity).await?;
    Cot(db, builder, &schema, sys_post::Entity).await?;
    Cot(db, builder, &schema, sys_role_api::Entity).await?;
    Cot(db, builder, &schema, sys_role_dept::Entity).await?;
    Cot(db, builder, &schema, sys_role::Entity).await?;
    Cot(db, builder, &schema, sys_user_post::Entity).await?;
    Cot(db, builder, &schema, sys_user_role::Entity).await?;
    Cot(db, builder, &schema, sys_user::Entity).await?;
    Cot(db, builder, &schema, sys_api_db::Entity).await?;

    Cot(db, builder, &schema, sys_user_online::Entity).await?;
    Cot(db, builder, &schema, sys_job_log::Entity).await?;
    Cot(db, builder, &schema, sys_oper_log::Entity).await?;
    Cot(db, builder, &schema, sys_login_log::Entity).await?;

    // -----test-------
    Cot(db, builder, &schema, test_data_scope::Entity).await?;

    Ok(())
}

//  创建索引
async fn create_index(m: &SchemaManager<'_>) -> Result<(), DbErr> {
    println!("开始创建索引----------");
    Cti(m, sys_api_db::Entity, "db", vec![sys_api_db::Column::Db], "i").await?;
    Cti(m, sys_dept::Entity, "pid", vec![sys_dept::Column::ParentId], "i").await?;
    Cti(m, sys_dict_data::Entity, "d_type_a", vec![sys_dict_data::Column::DictType], "i").await?;
    Cti(m, sys_dict_type::Entity, "d_type_b", vec![sys_dict_type::Column::DictType], "i").await?;
    Cti(m, sys_job::Entity, "t_id", vec![sys_job::Column::TaskId], "i").await?;
    Cti(m, sys_job_log::Entity, "job_id", vec![sys_job_log::Column::JobId], "i").await?;
    Cti(m, sys_role_api::Entity, "api", vec![sys_role_api::Column::Api], "i").await?;
    Cti(m, sys_role_api::Entity, "role_id_a", vec![sys_role_api::Column::RoleId], "i").await?;
    Cti(m, sys_role_dept::Entity, "role_id_b", vec![sys_role_dept::Column::RoleId], "i").await?;
    Cti(m, sys_role_dept::Entity, "dept_id_a", vec![sys_role_dept::Column::DeptId], "i").await?;
    Cti(m, sys_user::Entity, "role_id_c", vec![sys_user::Column::RoleId], "i").await?;
    Cti(m, sys_user::Entity, "dept_id_b", vec![sys_user::Column::DeptId], "i").await?;
    Cti(m, sys_user_online::Entity, "u_id", vec![sys_user_online::Column::UId], "i").await?;
    Cti(m, sys_user_online::Entity, "t_id", vec![sys_user_online::Column::TokenId], "i").await?;
    Cti(m, sys_user_role::Entity, "user_id", vec![sys_user_role::Column::UserId], "i").await?;
    Cti(m, sys_user_role::Entity, "r_id", vec![sys_user_role::Column::RoleId], "i").await?;

    Cti(m, sys_menu::Entity, "p_o", vec![sys_menu::Column::Pid, sys_menu::Column::OrderSort], "u").await?;
    // 测试
    Cti(m, test_data_scope::Entity, "created_by", vec![test_data_scope::Column::CreatedBy], "i").await?;

    Ok(())
}

// 删除表格
async fn drop_table(manager: &SchemaManager<'_>) -> Result<(), DbErr> {
    println!("开始删除表格----------");
    //
    Dot(manager, sys_dept::Entity).await?;
    Dot(manager, sys_dict_data::Entity).await?;
    Dot(manager, sys_dict_type::Entity).await?;
    Dot(manager, sys_job::Entity).await?;
    Dot(manager, sys_menu::Entity).await?;
    Dot(manager, sys_post::Entity).await?;
    Dot(manager, sys_role_api::Entity).await?;
    Dot(manager, sys_role_dept::Entity).await?;
    Dot(manager, sys_role::Entity).await?;
    Dot(manager, sys_user_post::Entity).await?;
    Dot(manager, sys_user_role::Entity).await?;
    Dot(manager, sys_user::Entity).await?;
    Dot(manager, sys_api_db::Entity).await?;

    Dot(manager, sys_user_online::Entity).await?;
    Dot(manager, sys_job_log::Entity).await?;
    Dot(manager, sys_oper_log::Entity).await?;
    Dot(manager, sys_login_log::Entity).await?;

    // -----test-------
    Dot(manager, test_data_scope::Entity).await?;

    Ok(())
}