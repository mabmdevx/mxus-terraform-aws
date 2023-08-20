#!/bin/bash
echo "Applying ECS Fargate Cluster - stg"
terraform apply -target=module.ecs_fg_cluster.aws_ecs_cluster.ecs_fg_cluster_stg_api \
 -target=module.ecs_fg_cluster.aws_ecs_cluster.ecs_fg_cluster_stg_ui --auto-approve

echo "Applying ECS Fargate Cluster - prd"
terraform apply -target=module.ecs_fg_cluster.aws_ecs_cluster.ecs_fg_cluster_prd_api \
 -target=module.ecs_fg_cluster.aws_ecs_cluster.ecs_fg_cluster_prd_ui --auto-approve

echo "Applying ECS Fargate Cluster - dev1"
terraform apply -target=module.ecs_fg_cluster.aws_ecs_cluster.ecs_fg_cluster_dev1_api \
 -target=module.ecs_fg_cluster.aws_ecs_cluster.ecs_fg_cluster_dev1_ui --auto-approve