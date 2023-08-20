#!/bin/bash
echo "Destroying ECS Fargate Service - stg"
terraform destroy -target=module.ecs_fg_service.aws_ecs_service.ecs_fg_service_stg_api \
 -target=module.ecs_fg_service.aws_ecs_service.ecs_fg_service_stg_ui --auto-approve

echo "Destroying ECS Fargate Service - prd"
terraform destroy -target=module.ecs_fg_service.aws_ecs_service.ecs_fg_service_prd_api \
 -target=module.ecs_fg_service.aws_ecs_service.ecs_fg_service_prd_ui --auto-approve

echo "Destroying ECS Fargate Service - dev1"
terraform destroy -target=module.ecs_fg_service.aws_ecs_service.ecs_fg_service_dev1_api \
 -target=module.ecs_fg_service.aws_ecs_service.ecs_fg_service_dev1_ui --auto-approve