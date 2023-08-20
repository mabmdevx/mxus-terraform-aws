#!/bin/bash
echo "Applying ALB Listener Rule - stg"
terraform apply -target=module.alb_listener_rule.aws_lb_listener.stg_rule_1 \
 -target=module.alb_listener_rule.aws_lb_listener.stg_rule_2

echo "Applying ALB Listener Rule - prd"
terraform apply -target=module.alb_listener_rule.aws_lb_listener.prd_rule_1 \
 -target=module.alb_listener_rule.aws_lb_listener.prd_rule_2

echo "Applying ALB Listener Rule - dev1"
terraform apply -target=module.alb_listener_rule.aws_lb_listener.dev1_rule_1 \
 -target=module.alb_listener_rule.aws_lb_listener.dev1_rule_2