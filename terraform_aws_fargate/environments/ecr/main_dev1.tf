# API
resource "aws_ecr_repository" "ecr_dev1_api" {
  name                 = "${var.project_code}-ecr-dev1-api"
  image_tag_mutability = "MUTABLE"
  force_delete = var.aws_ecr_force_delete_flag

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "${var.project_code}-ecr-dev1-api"
    Project_Name = var.project_name
    Application_Name = var.application_name
  }

}


# UI
resource "aws_ecr_repository" "ecr_dev1_ui" {
  name                 = "${var.project_code}-ecr-dev1-ui"
  image_tag_mutability = "MUTABLE"
  force_delete = var.aws_ecr_force_delete_flag

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "${var.project_code}-ecr-dev1-ui"
    Project_Name = var.project_name
    Application_Name = var.application_name
  }

}