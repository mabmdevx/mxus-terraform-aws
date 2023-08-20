module "s3" {
    source = "./environments/s3"

    project_code = var.project_code
    project_name = var.project_name
    application_name = var.application_name
}

module "rds" {
    source = "./environments/rds"

    project_code = var.project_code
    project_name = var.project_name
    application_name = var.application_name

    aws_rds_delete_protection_flag = var.aws_rds_delete_protection_flag
    aws_rds_subnet_group_name = var.aws_rds_subnet_group_name
    aws_rds_security_groups = var.aws_rds_security_groups
    aws_rds_monitoring_role_arn = var.aws_rds_monitoring_role_arn
    aws_rds_username_stg = var.aws_rds_username_stg
    aws_rds_password_stg = var.aws_rds_password_stg
    aws_rds_username_prd = var.aws_rds_username_prd
    aws_rds_password_prd = var.aws_rds_password_prd
    aws_rds_username_dev1 = var.aws_rds_username_dev1
    aws_rds_password_dev1 = var.aws_rds_password_dev1
}

module "ecr" {
    source = "./environments/ecr"

    project_code = var.project_code
    project_name = var.project_name
    application_name = var.application_name

    aws_ecr_force_delete_flag = var.aws_ecr_force_delete_flag
}

module "tg" {
    source = "./environments/tg"

    project_code        = var.project_code
    project_name        = var.project_name
    application_name    = var.application_name

    aws_vpc_id          = var.aws_vpc_id
}

module "sm" {
    source = "./environments/sm"

    project_code = var.project_code
    project_name = var.project_name
    application_name = var.application_name

    aws_rds_username_stg = var.aws_rds_username_stg
    aws_rds_password_stg = var.aws_rds_password_stg
    aws_rds_username_prd = var.aws_rds_username_prd
    aws_rds_password_prd = var.aws_rds_password_prd
    aws_rds_username_dev1 = var.aws_rds_username_dev1
    aws_rds_password_dev1 = var.aws_rds_password_dev1
}

module "ecs_fg_cluster" {
    source = "./environments/ecs_fg_cluster"

    project_code = var.project_code
    project_name = var.project_name
    application_name = var.application_name
}

module "ecs_fg_task" {
    source = "./environments/ecs_fg_task"

    project_code = var.project_code
    project_name = var.project_name
    application_name = var.application_name

    aws_account_id = var.aws_account_id
    aws_ecs_task_execution_role_arn = var.aws_ecs_task_execution_role_arn
    
    aws_secrets_arn_stg = var.aws_secrets_arn_stg
    aws_secrets_arn_prd = var.aws_secrets_arn_prd
    aws_secrets_arn_dev1 = var.aws_secrets_arn_dev1
}

module "ecs_fg_service" {
    source = "./environments/ecs_fg_service"

    project_code = var.project_code
    project_name = var.project_name
    application_name = var.application_name

    aws_secrets_arn_stg = var.aws_secrets_arn_stg
    aws_ecs_fg_cluster_arn_stg_api = var.aws_ecs_fg_cluster_arn_stg_api
    aws_ecs_fg_task_arn_stg_api = var.aws_ecs_fg_task_arn_stg_api
    aws_tg_arn_stg_api = var.aws_tg_arn_stg_api
    aws_ecs_fg_cluster_arn_stg_ui = var.aws_ecs_fg_cluster_arn_stg_ui
    aws_ecs_fg_task_arn_stg_ui = var.aws_ecs_fg_task_arn_stg_ui
    aws_tg_arn_stg_ui = var.aws_tg_arn_stg_ui

    aws_secrets_arn_prd = var.aws_secrets_arn_prd
    aws_ecs_fg_cluster_arn_prd_api = var.aws_ecs_fg_cluster_arn_prd_api
    aws_ecs_fg_task_arn_prd_api = var.aws_ecs_fg_task_arn_prd_api
    aws_tg_arn_prd_api = var.aws_tg_arn_prd_api
    aws_ecs_fg_cluster_arn_prd_ui = var.aws_ecs_fg_cluster_arn_prd_ui
    aws_ecs_fg_task_arn_prd_ui = var.aws_ecs_fg_task_arn_prd_ui
    aws_tg_arn_prd_ui = var.aws_tg_arn_prd_ui

    aws_secrets_arn_dev1 = var.aws_secrets_arn_dev1
    aws_ecs_fg_cluster_arn_dev1_api = var.aws_ecs_fg_cluster_arn_dev1_api
    aws_ecs_fg_task_arn_dev1_api = var.aws_ecs_fg_task_arn_dev1_api
    aws_tg_arn_dev1_api = var.aws_tg_arn_dev1_api
    aws_ecs_fg_cluster_arn_dev1_ui = var.aws_ecs_fg_cluster_arn_dev1_ui
    aws_ecs_fg_task_arn_dev1_ui = var.aws_ecs_fg_task_arn_dev1_ui
    aws_tg_arn_dev1_ui = var.aws_tg_arn_dev1_ui
}

#module "cf" {
#    source = "./environments/cf"
#    project_code = var.project_code
#    project_name = var.project_name
#    application_name = var.application_name
#}

#module "alb" {
#    source = "./common/alb"
#}

#module "alb_listener_rule" {
#    source = "./common/alb_listener_rule"
#}