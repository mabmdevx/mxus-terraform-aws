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

variable "aws_account_id" {
    type = string
    description = "AWS Account ID"
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