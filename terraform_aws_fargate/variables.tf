variable "aws_access_key" {
    description = "AWS Access Key"
    type = string
}

variable "aws_secret_key" {
    description = "AWS Secret Key"
    type = string
}

variable "aws_region" {
    description = "AWS Region"
    type = string
}

variable "project_code" {
    description = "Project Code"
    type = string
}

variable "project_name" {
    type = string
    description = "Project Name"
}

variable "application_name" {
    type = string
    description = "Application Name"
}

variable "aws_account_id" {
    type = string
    description = "AWS Account ID"
}

variable "aws_vpc_id" {
    type = string
    description = "AWS VPC ID"
}

variable "aws_ecr_force_delete_flag" {
    description = "AWS ECR Force Delete Flag"
    type = bool
    default = false
}

variable "aws_rds_delete_protection_flag" {
    description = "AWS RDS Delete Protection Flag"
    type = bool
    default = true
}

variable "aws_rds_subnet_group_name" {
    description = "AWS RDS Subnet Group Name"
    type = string
}

variable "aws_rds_security_groups" {
    description = "AWS RDS Security Groups"
    type = list(string)
}

variable "aws_rds_monitoring_role_arn" {
    description = "AWS RDS Monitoring Role ARN"
    type = string
}

variable "aws_rds_username_stg" {
    type = string
    description = "AWS RDS Username Stage"
}

variable "aws_rds_password_stg" {
    type = string
    description = "AWS RDS Password Stage"
}

variable "aws_rds_username_prd" {
    type = string
    description = "AWS RDS Username Prod"
}

variable "aws_rds_password_prd" {
    type = string
    description = "AWS RDS Password Prod"
}

variable "aws_rds_username_dev1" {
    type = string
    description = "AWS RDS Username Dev1"
}

variable "aws_rds_password_dev1" {
    type = string
    description = "AWS RDS Password Dev1"
}

variable "aws_ecs_task_execution_role_arn" {
    type = string
    description = "AWS ECS Task Execution Role ARN"
}

variable "aws_secrets_arn_stg" {
    type = string
    description = "AWS Secrets ARN Stage"
}

variable "aws_secrets_arn_prd" {
    type = string
    description = "AWS Secrets ARN Prod"
}

variable "aws_secrets_arn_dev1" {
    type = string
    description = "AWS Secrets ARN Dev1"
}

variable "aws_ecs_fg_cluster_arn_stg_api" {
    type = string
    description = "ARN for ECS Fargate Cluster - Stage - API"
}

variable "aws_ecs_fg_task_arn_stg_api" {
    type = string
    description = "ARN for ECS Fargate Task - Stage - API"
}

variable "aws_tg_arn_stg_api" {
    type = string
    description = "ARN for Target Group - Stage - API"
}

variable "aws_ecs_fg_cluster_arn_stg_ui" {
    type = string
    description = "ARN for ECS Fargate Cluster - Stage - UI"
}

variable "aws_ecs_fg_task_arn_stg_ui" {
    type = string
    description = "ARN for ECS Fargate Task - Stage - UI"
}

variable "aws_tg_arn_stg_ui" {
    type = string
    description = "ARN for Target Group - Stage - UI"
}

variable "aws_ecs_fg_cluster_arn_prd_api" {
    type = string
    description = "ARN for ECS Fargate Cluster - Prod - API"
}

variable "aws_ecs_fg_task_arn_prd_api" {
    type = string
    description = "ARN for ECS Fargate Task - Prod - API"
}

variable "aws_tg_arn_prd_api" {
    type = string
    description = "ARN for Target Group - Prod - API"
}

variable "aws_ecs_fg_cluster_arn_prd_ui" {
    type = string
    description = "ARN for ECS Fargate Cluster - Prod - UI"
}

variable "aws_ecs_fg_task_arn_prd_ui" {
    type = string
    description = "ARN for ECS Fargate Task - Prod - UI"
}

variable "aws_tg_arn_prd_api" {
    type = string
    description = "ARN for Target Group - Prod - UI"
}

variable "aws_ecs_fg_cluster_arn_dev1_api" {
    type = string
    description = "ARN for ECS Fargate Cluster - Dev1 - API"
}

variable "aws_ecs_fg_task_arn_dev1_api" {
    type = string
    description = "ARN for ECS Fargate Task - Dev1 - API"
}

variable "aws_tg_arn_dev1_api" {
    type = string
    description = "ARN for Target Group - Dev1 - API"
}

variable "aws_ecs_fg_cluster_arn_dev1_ui" {
    type = string
    description = "ARN for ECS Fargate Cluster - Dev1 - UI"
}

variable "aws_ecs_fg_task_arn_dev1_ui" {
    type = string
    description = "ARN for ECS Fargate Task - Dev1 - UI"
}

variable "aws_tg_arn_dev1_ui" {
    type = string
    description = "ARN for Target Group - Dev1 - UI"
}