#!/bin/bash
echo "Destroying ALB Listener Rule - stg"
terraform destroy -target=module.alb_listener_rule.aws_lb_listener.stg_rule_1 \
 -target=module.alb_listener_rule.aws_lb_listener.stg_rule_2

echo "Destroying ALB Listener Rule - prd"
terraform destroy -target=module.alb_listener_rule.aws_lb_listener.prd_rule_1 \
 -target=module.alb_listener_rule.aws_lb_listener.prd_rule_2

echo "Destroying ALB Listener Rule - dev1"
terraform destroy -target=module.alb_listener_rule.aws_lb_listener.dev1_rule_1 \
 -target=module.alb_listener_rule.aws_lb_listener.dev1_rule_2
