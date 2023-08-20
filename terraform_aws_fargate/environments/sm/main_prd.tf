resource "aws_secretsmanager_secret" "sm_prd" {
  name = "${var.project_code}-prd"

  tags = {
    Environment_Name    = "prd"
    Service_Name        = "secret"
    Project_Name        = var.project_name
    Appplication_Name   = var.application_name
  }
}

resource "aws_secretsmanager_secret_version" "sm_secret_version_prd" {
  secret_id     = aws_secretsmanager_secret.sm_prd.id
  secret_string = jsonencode({
    "aws_rds_username" = "${var.aws_rds_username_prd}"
    "aws_rds_password" = "${var.aws_rds_password_prd}"
  })
}