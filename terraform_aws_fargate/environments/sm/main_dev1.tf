resource "aws_secretsmanager_secret" "sm_dev1" {
  name = "${var.project_code}-dev1"

  tags = {
    Environment_Name    = "dev1"
    Service_Name        = "secret"
    Project_Name        = var.project_name
    Appplication_Name   = var.application_name
  }
}

resource "aws_secretsmanager_secret_version" "sm_secret_version_dev1" {
  secret_id     = aws_secretsmanager_secret.sm_dev1.id
  secret_string = jsonencode({
    "aws_rds_username" = "${var.aws_rds_username_dev1}"
    "aws_rds_password" = "${var.aws_rds_password_dev1}"
  })
}