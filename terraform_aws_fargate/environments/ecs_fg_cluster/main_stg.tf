# API
resource "aws_ecs_cluster" "ecs_fg_cluster_stg_api" {
  name = "${var.project_code}-ecs-fg-cluster-stg-api"

  setting {
    name  = "containerInsights"
    value = "enabled"
  }

  tags = {
    Name = "${var.project_code}-ecs-fg-cluster-stg-api"
    Project_Name = var.project_name
    Application_name = var.application_name
  }

}


# UI
resource "aws_ecs_cluster" "ecs_fg_cluster_stg_ui" {
  name = "${var.project_code}-ecs-fg-cluster-stg-ui"

  setting {
    name  = "containerInsights"
    value = "enabled"
  }

  tags = {
    Name = "${var.project_code}-ecs-fg-cluster-stg-ui"
    Project_Name = var.project_name
    Application_name = var.application_name
  }

}