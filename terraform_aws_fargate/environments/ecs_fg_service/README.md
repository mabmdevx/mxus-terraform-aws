ECS Fargate Service Notes
=========================

Commands Examples:
------------------
terraform init
terraform validate
terraform plan -target=module.ecs_fg_service.aws_ecs_service.ecs_fg_service_dev1_api \
 -target=module.ecs_fg_service.aws_ecs_service.ecs_fg_service_dev1_ui
terraform apply -target=module.ecs_fg_service.aws_ecs_service.ecs_fg_service_dev1_api \
 -target=module.ecs_fg_service.aws_ecs_service.ecs_fg_service_dev1_ui
terraform destroy -target=module.ecs_fg_service.aws_ecs_service.ecs_fg_service_dev1_api \
 -target=module.ecs_fg_service.aws_ecs_service.ecs_fg_service_dev1_ui

Links:
------
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_service

