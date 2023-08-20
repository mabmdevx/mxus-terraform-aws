# API
resource "aws_ecs_task_definition" "ecs_fg_task_prd_api" {
  family                   = "${var.project_code}-ecs-fg-task-prd-api"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  execution_role_arn       = var.aws_ecs_task_execution_role_arn 
  cpu                      = 1024
  memory                   = 2048
  container_definitions    = <<TASK_DEFINITION
[
  {
    "name": "${var.project_code}-ecr-prd-api",
    "image": "${var.aws_account_id}.dkr.ecr.us-east-1.amazonaws.com/${var.project_code}-ecr-prd-api:latest",
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
            "awslogs-group": "/ecs/${var.project_code}-ecs-fg-task-prd-api",
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
            "valueFrom": "${var.aws_secrets_arn_prd}"
        }
    ]
  }
]
TASK_DEFINITION

    runtime_platform {
        operating_system_family = "LINUX"
    }

    tags = {
        Name = "${var.project_code}-ecs-fg-task-prd-api"
        Environment_Name    =   "prd"
        Service_Name        =   "api"
        Project_Name        =   var.project_name
        Application_Name    =   var.application_name
    }

}


# UI
resource "aws_ecs_task_definition" "ecs_fg_task_prd_ui" {
  family                   = "${var.project_code}-ecs-fg-task-prd-ui"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  execution_role_arn       = var.aws_ecs_task_execution_role_arn 
  cpu                      = 1024
  memory                   = 2048
  container_definitions    = <<TASK_DEFINITION
[
  {
    "name": "${var.project_code}-ecr-prd-ui",
    "image": "${var.aws_account_id}.dkr.ecr.us-east-1.amazonaws.com/${var.project_code}-ecr-prd-ui:latest",
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
            "awslogs-group": "/ecs/${var.project_code}-ecs-fg-task-prd-ui",
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
        Name = "${var.project_code}-ecs-fg-task-prd-ui"
        Environment_Name    =   "prd"
        Service_Name        =   "ui"
        Project_Name        =   var.project_name
        Application_Name    =   var.application_name
    }

}