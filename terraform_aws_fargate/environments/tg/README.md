Target Group Notes
==================

Commands Examples:
------------------
terraform init
terraform validate
terraform plan terraform apply -target=module.tg.aws_lb_target_group.tg_ecs_fg_dev1_api \
 -target=module.tg.aws_lb_target_group.tg_ecs_fg_dev1_ui --auto-approve
terraform apply terraform apply -target=module.tg.aws_lb_target_group.tg_ecs_fg_dev1_api \
 -target=module.tg.aws_lb_target_group.tg_ecs_fg_dev1_ui --auto-approve
terraform destroy terraform apply -target=module.tg.aws_lb_target_group.tg_ecs_fg_dev1_api \
 -target=module.tg.aws_lb_target_group.tg_ecs_fg_dev1_ui --auto-approve

Links:
------
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group

