#!/bin/bash
echo "Applying TG - stg"
terraform apply -target=module.tg.aws_lb_target_group.tg_ecs_fg_stg_api \
 -target=module.tg.aws_lb_target_group.tg_ecs_fg_stg_ui --auto-approve

echo "Applying TG - prd"
terraform apply -target=module.tg.aws_lb_target_group.tg_ecs_fg_prd_api \
 -target=module.tg.aws_lb_target_group.tg_ecs_fg_prd_ui --auto-approve

echo "Applying TG - dev1"
terraform apply -target=module.tg.aws_lb_target_group.tg_ecs_fg_dev1_api \
 -target=module.tg.aws_lb_target_group.tg_ecs_fg_dev1_ui --auto-approve