resource "aws_lb_listener_rule" "dev1_rule_1" {
  listener_arn = var.aws_alb_int_listener_arn
  priority     = 31

  condition {
    host_header {
      values = ["xyz.com"]
    }
  }

  condition {
    path_pattern {
      values = ["/api/*"]
    }
  }

  action {
    type             = "forward"
    target_group_arn = var.aws_alb_int_target_group_arn_dev1_api
  }
}

resource "aws_lb_listener_rule" "dev1_rule_2" {
  listener_arn = var.aws_alb_int_listener_arn
  priority     = 32

  condition {
    host_header {
      values = ["xyz.com"]
    }
  }

  condition {
    path_pattern {
      values = ["/*"]
    }
  }

  action {
    type             = "forward"
    target_group_arn = var.aws_alb_int_target_group_arn_dev1_ui
  }
}