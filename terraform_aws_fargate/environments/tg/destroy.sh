#!/bin/bash
echo "Destroying TG - stg"
terraform destroy -target=module.tg.aws_lb_target_group.tg_ecs_fg_stg_api \
 -target=module.tg.aws_lb_target_group.tg_ecs_fg_stg_ui --auto-approve

echo "Destroying TG - prd"
terraform destroy -target=module.tg.aws_lb_target_group.tg_ecs_fg_prd_api \
 -target=module.tg.aws_lb_target_group.tg_ecs_fg_prd_ui --auto-approve

echo "Destroying TG - dev1"
terraform destroy -target=module.tg.aws_lb_target_group.tg_ecs_fg_dev1_api \
 -target=module.tg.aws_lb_target_group.tg_ecs_fg_dev1_ui --auto-approve