# API
resource "aws_ecs_cluster" "ecs_fg_cluster_prd_api" {
  name = "${var.project_code}-ecs-fg-cluster-prd-api"

  setting {
    name  = "containerInsights"
    value = "enabled"
  }

  tags = {
    Name = "${var.project_code}-ecs-fg-cluster-prd-api"
    Project_Name = var.project_name
    Application_name = var.application_name
  }

}


# UI
resource "aws_ecs_cluster" "ecs_fg_cluster_prd_ui" {
  name = "${var.project_code}-ecs-fg-cluster-prd-ui"

  setting {
    name  = "containerInsights"
    value = "enabled"
  }

  tags = {
    Name = "${var.project_code}-ecs-fg-cluster-prd-ui"
    Project_Name = var.project_name
    Application_name = var.application_name
  }

}