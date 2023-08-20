ALB Listener Notes
==================

Commands Examples:
------------------
terraform init
terraform validate
terraform plan -target=module.alb_listener_rule.aws_lb_listener_rule.dev_rule_1 \
 -target=module.alb_listener_rule.aws_lb_listener_rule.dev_rule_2
terraform apply -target=module.alb_listener_rule.aws_lb_listener_rule.dev_rule_1 \
 -target=module.alb_listener_rule.aws_lb_listener_rule.dev_rule_2
terraform destroy -target=module.alb_listener_rule.aws_lb_listener_rule.dev_rule_1 \
 -target=module.alb_listener_rule.aws_lb_listener_rule.dev_rule_2

Links:
------
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener_rule

