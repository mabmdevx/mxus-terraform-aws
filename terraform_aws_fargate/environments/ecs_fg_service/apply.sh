#!/bin/bash
echo "Applying ECS Fargate Service - stg"
terraform apply -target=module.ecs_fg_service.aws_ecs_service.ecs_fg_service_stg_api \
 -target=module.ecs_fg_service.aws_ecs_service.ecs_fg_service_stg_ui --auto-approve

echo "Applying ECS Fargate Service - prd"
terraform apply -target=module.ecs_fg_service.aws_ecs_service.ecs_fg_service_prd_api \
 -target=module.ecs_fg_service.aws_ecs_service.ecs_fg_service_prd_ui --auto-approve

echo "Applying ECS Fargate Service - dev1"
terraform apply -target=module.ecs_fg_service.aws_ecs_service.ecs_fg_service_dev1_api \
 -target=module.ecs_fg_service.aws_ecs_service.ecs_fg_service_dev1_ui --auto-approve