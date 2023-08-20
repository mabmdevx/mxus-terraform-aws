ECS Fargate Cluster Notes
=========================

Commands Examples:
------------------
terraform init
terraform validate
terraform plan -target=module.ecs_fg_cluster.aws_ecs_cluster.ecs_fg_cluster_dev1_api \
 -target=module.ecs_fg_cluster.aws_ecs_cluster.ecs_fg_cluster_dev1_ui
terraform apply -target=module.ecs_fg_cluster.aws_ecs_cluster.ecs_fg_cluster_dev1_api \
 -target=module.ecs_fg_cluster.aws_ecs_cluster.ecs_fg_cluster_dev1_ui
terraform destroy -target=module.ecs_fg_cluster.aws_ecs_cluster.ecs_fg_cluster_dev1_api \
 -target=module.ecs_fg_cluster.aws_ecs_cluster.ecs_fg_cluster_dev1_ui

Links:
------
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster

