variable "project_code" {
    type = string
    description = "Project Code"
}

variable "project_name" {
    type = string
    description = "Project Name"
}

variable "application_name" {
    type = string
    description = "Application Name"
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