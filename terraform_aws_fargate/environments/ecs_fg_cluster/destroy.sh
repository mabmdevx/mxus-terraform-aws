#!/bin/bash
echo "Destroying ECS Fargate Cluster - stg"
terraform destroy -target=module.ecs_fg_cluster.aws_ecs_cluster.ecs_fg_cluster_stg_api \
 -target=module.ecs_fg_cluster.aws_ecs_cluster.ecs_fg_cluster_stg_ui --auto-approve

echo "Destroying ECS Fargate Cluster - prd"
terraform destroy -target=module.ecs_fg_cluster.aws_ecs_cluster.ecs_fg_cluster_prd_api \
 -target=module.ecs_fg_cluster.aws_ecs_cluster.ecs_fg_cluster_prd_ui --auto-approve

echo "Destroying ECS Fargate Cluster - dev1"
terraform destroy -target=module.ecs_fg_cluster.aws_ecs_cluster.ecs_fg_cluster_dev1_api \
 -target=module.ecs_fg_cluster.aws_ecs_cluster.ecs_fg_cluster_dev1_ui --auto-approve
