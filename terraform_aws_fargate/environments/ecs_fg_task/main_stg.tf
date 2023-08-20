# API
resource "aws_ecs_task_definition" "ecs_fg_task_stg_api" {
  family                   = "${var.project_code}-ecs-fg-task-stg-api"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  execution_role_arn       = var.aws_ecs_task_execution_role_arn 
  cpu                      = 1024
  memory                   = 2048
  container_definitions    = <<TASK_DEFINITION
[
  {
    "name": "${var.project_code}-ecr-stg-api",
    "image": "${var.aws_account_id}.dkr.ecr.us-east-1.amazonaws.com/${var.project_code}-ecr-stg-api:latest",
    "cpu": 1024,
    "memory": 2048,
    "essential": true,
    "portMappings": [
        {
            "containerPort": 443
        }
    ],
    "logConfiguration": {
        "logDriver": "awslogs",
        "secretOptions": null,
        "options": {
            "awslogs-create-group": "true",
            "awslogs-group": "/ecs/${var.project_code}-ecs-fg-task-stg-api",
            "awslogs-region": "us-east-1",
            "awslogs-stream-prefix": "ecs"
        }
    },
    "environment": [
        {
            "name": "LOG_LEVEL",
            "value": "debug"
        }
    ],
    "secrets":[
        {
            "name": "APP_SECRETS",
            "valueFrom": "${var.aws_secrets_arn_stg}"
        }
    ]
  }
]
TASK_DEFINITION

    runtime_platform {
        operating_system_family = "LINUX"
    }

    tags = {
        Name = "${var.project_code}-ecs-fg-task-stg-api"
        Environment_Name    =   "stg"
        Service_Name        =   "api"
        Project_Name        =   var.project_name
        Application_Name    =   var.application_name
    }

}


# UI
resource "aws_ecs_task_definition" "ecs_fg_task_stg_ui" {
  family                   = "${var.project_code}-ecs-fg-task-stg-ui"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  execution_role_arn       = var.aws_ecs_task_execution_role_arn 
  cpu                      = 1024
  memory                   = 2048
  container_definitions    = <<TASK_DEFINITION
[
  {
    "name": "${var.project_code}-ecr-stg-ui",
    "image": "${var.aws_account_id}.dkr.ecr.us-east-1.amazonaws.com/${var.project_code}-ecr-stg-ui:latest",
    "cpu": 1024,
    "memory": 2048,
    "essential": true,
    "portMappings": [
        {
            "containerPort": 443
        }
    ],
    "logConfiguration": {
        "logDriver": "awslogs",
        "secretOptions": null,
        "options": {
            "awslogs-create-group": "true",
            "awslogs-group": "/ecs/${var.project_code}-ecs-fg-task-stg-ui",
            "awslogs-region": "us-east-1",
            "awslogs-stream-prefix": "ecs"
        }
    }
  }
]
TASK_DEFINITION

    runtime_platform {
        operating_system_family = "LINUX"
    }

    tags = {
        Name = "${var.project_code}-ecs-fg-task-stg-ui"
        Environment_Name    =   "stg"
        Service_Name        =   "ui"
        Project_Name        =   var.project_name
        Application_Name    =   var.application_name
    }

}