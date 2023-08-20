# API
resource "aws_ecr_repository" "ecr_prd_api" {
  name                 = "${var.project_code}-ecr-prd-api"
  image_tag_mutability = "MUTABLE"
  force_delete = var.aws_ecr_force_delete_flag

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "${var.project_code}-ecr-prd-api"
    Project_Name = var.project_name
    Application_Name = var.application_name
  }

}


# UI
resource "aws_ecr_repository" "ecr_prd_ui" {
  name                 = "${var.project_code}-ecr-prd-ui"
  image_tag_mutability = "MUTABLE"
  force_delete = var.aws_ecr_force_delete_flag

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "${var.project_code}-ecr-prd-ui"
    Project_Name = var.project_name
    Application_Name = var.application_name
  }

}