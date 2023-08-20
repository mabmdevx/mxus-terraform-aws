resource "aws_lb" "xyz_alb_ext" {
  name               = "xyz-alb-ext"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["xyz-sg"]
  subnets            = ["subnet-xyz-id"]

  enable_deletion_protection = true

  access_logs {
    bucket  = "xyz-bucket-logs"
    prefix  = "alb_ext"
    enabled = true
  }

  tags = {
    Name = "xyz-alb-ext"
    Environment = "common"
    Project_Name = var.tag_project_name
    Application_Name = var.tag_application_name
  }
}