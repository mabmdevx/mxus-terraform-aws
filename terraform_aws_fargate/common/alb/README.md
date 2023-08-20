ALB Notes
=========

Commands Examples:
------------------
terraform init
terraform validate
terraform plan -target=module.alb.aws_lb.xyz_alb_int
terraform apply -target=module.alb.aws_lb.xyz_alb_int
terraform destroy -target=module.alb.aws_lb.xyz_alb_int

Links:
------
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb
