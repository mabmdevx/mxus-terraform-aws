variable "aws_alb_int_listener_arn" {
    type = string
    description = "AWS ALB Internal Listener ARN"
    default = "arn:aws:elasticloadbalancing:us-east-1:123456789:listener/app/xyz-alb-int/abcdef/9876abcde"
}

variable "aws_alb_int_target_group_arn_dev1_api" {
    type = string
    description = "AWS ALB Internal Target Group ARN - Dev1 API"
    default = "arn:aws:elasticloadbalancing:us-east-1:123456789:targetgroup/xyz-tg-ecs-fg-dev1-api/98765abcde1"
}

variable "aws_alb_int_target_group_arn_dev1_ui" {
    type = string
    description = "AWS ALB Internal Target Group ARN - Dev1 UI"
    default = "arn:aws:elasticloadbalancing:us-east-1:123456789:targetgroup/xyz-tg-ecs-fg-dev1-ui/98765abcde1"
}

variable "aws_alb_int_target_group_arn_stg_api" {
    type = string
    description = "AWS ALB Internal Target Group ARN - Stage API"
    default = "arn:aws:elasticloadbalancing:us-east-1:123456789:targetgroup/xyz-tg-ecs-fg-stg-api/98765abcde1"
}

variable "aws_alb_int_target_group_arn_stg_ui" {
    type = string
    description = "AWS ALB Internal Target Group ARN - Stage UI"
    default = "arn:aws:elasticloadbalancing:us-east-1:123456789:targetgroup/xyz-tg-ecs-fg-stg-ui/98765abcde1"
}

variable "aws_alb_int_target_group_arn_prd_api" {
    type = string
    description = "AWS ALB Internal Target Group ARN - Prod API"
    default = "arn:aws:elasticloadbalancing:us-east-1:123456789:targetgroup/xyz-tg-ecs-fg-prd-api/98765abcde1"
}

variable "aws_alb_int_target_group_arn_prd_ui" {
    type = string
    description = "AWS ALB Internal Target Group ARN - Prod UI"
    default = "arn:aws:elasticloadbalancing:us-east-1:123456789:targetgroup/xyz-tg-ecs-fg-prd-ui/98765abcde1"
}