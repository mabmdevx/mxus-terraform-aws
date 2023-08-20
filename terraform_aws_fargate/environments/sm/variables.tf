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