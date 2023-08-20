
#!/bin/bash
echo "Applying ECS Fargate Task - Stage"
terraform apply -target=module.ecs_fg_task.aws_ecs_task_definition.ecs_fg_task_stg_api \
 -target=module.ecs_fg_task.aws_ecs_task_definition.ecs_fg_task_stg_ui --auto-approve

echo "Applying ECS Fargate Task - Prod"
terraform apply -target=module.ecs_fg_task.aws_ecs_task_definition.ecs_fg_task_prd_api \
 -target=module.ecs_fg_task.aws_ecs_task_definition.ecs_fg_task_prd_ui --auto-approve

echo "Applying ECS Fargate Task - Dev1"
terraform apply -target=module.ecs_fg_task.aws_ecs_task_definition.ecs_fg_task_dev1_api \
 -target=module.ecs_fg_task.aws_ecs_task_definition.ecs_fg_task_dev1_ui --auto-approve