# API
resource "aws_ecs_cluster" "ecs_fg_cluster_dev1_api" {
  name = "${var.project_code}-ecs-fg-cluster-dev1-api"

  setting {
    name  = "containerInsights"
    value = "enabled"
  }

  tags = {
    Name = "${var.project_code}-ecs-fg-cluster-dev1-api"
    Project_Name = var.project_name
    Application_name = var.application_name
  }

}


# UI
resource "aws_ecs_cluster" "ecs_fg_cluster_dev1_ui" {
  name = "${var.project_code}-ecs-fg-cluster-dev1-ui"

  setting {
    name  = "containerInsights"
    value = "enabled"
  }

  tags = {
    Name = "${var.project_code}-ecs-fg-cluster-dev1-ui"
    Project_Name = var.project_name
    Application_name = var.application_name
  }

}