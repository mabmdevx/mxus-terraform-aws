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