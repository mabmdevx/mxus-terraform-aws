# API
resource "aws_ecs_service" "ecs_fg_service_stg_api" {
  launch_type                           = "FARGATE"
  name                                  = "${var.project_code}-ecs-fg-service-stg-api"
  cluster                               = "${var.aws_ecs_fg_cluster_arn_stg_api}"
  task_definition                       = "${var.aws_ecs_fg_task_arn_stg_api}"
  desired_count                         = 1
  deployment_minimum_healthy_percent    = 100
  deployment_maximum_percent            = 200
  health_check_grace_period_seconds     = 30

  load_balancer {
    target_group_arn = "${var.aws_tg_arn_stg_api}"
    container_name   = "${var.project_code}-ecr-prd-api"
    container_port   = 443
  }

  tags = {
    Name = "${var.project_code}-ecs-fg-service-prd-api"
    Project_Name = var.project_name
    Application_Name = var.application_name
  }

}


# UI
resource "aws_ecs_service" "ecs_fg_service_stg_ui" {
  launch_type                           = "FARGATE"
  name                                  = "${var.project_code}-ecs-fg-service-stg-ui"
  cluster                               = "${var.aws_ecs_fg_cluster_arn_stg_ui}"
  task_definition                       = "${var.aws_ecs_fg_task_arn_stg_ui}"
  desired_count                         = 1
  deployment_minimum_healthy_percent    = 100
  deployment_maximum_percent            = 200
  health_check_grace_period_seconds     = 30

  load_balancer {
    target_group_arn = "${var.aws_tg_arn_stg_ui}"
    container_name   = "${var.project_code}-ecr-stg-ui"
    container_port   = 443
  }

  tags = {
    Name = "${var.project_code}-ecs-fg-service-stg-ui"
    Project_Name = var.project_name
    Application_Name = var.application_name
  }

}