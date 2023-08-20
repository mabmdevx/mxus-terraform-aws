resource "aws_secretsmanager_secret" "sm_stg" {
  name = "${var.project_code}-stg"

  tags = {
    Environment_Name    = "stg"
    Service_Name        = "secret"
    Project_Name        = var.project_name
    Appplication_Name   = var.application_name
  }
}

resource "aws_secretsmanager_secret_version" "sm_secret_version_stg" {
  secret_id     = aws_secretsmanager_secret.sm_stg.id
  secret_string = jsonencode({
    "aws_rds_username" = "${var.aws_rds_username_stg}"
    "aws_rds_password" = "${var.aws_rds_password_stg}"
  })
}