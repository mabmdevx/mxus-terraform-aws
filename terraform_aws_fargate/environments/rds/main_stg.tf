resource "aws_db_instance" "db_stg" {
  identifier                        = "${var.project_code}-db-stg"
  db_name                           = "${var.project_code}_db_stg"
  engine                            = "postgres"
  engine_version                    = "13.9"
  instance_class                    = "db.t3.micro"
  username                          = var.aws_rds_username_stg
  password                          = var.aws_rds_password_stg
  port                              = "5432"
  parameter_group_name              = "default.postgres13"
  skip_final_snapshot               = true
  db_subnet_group_name              = var.aws_rds_subnet_group_name
  multi_az                          = false
  performance_insights_enabled      = true
  allocated_storage                 = 20
  max_allocated_storage             = 1000
  publicly_accessible               = false
  backup_retention_period           = 7
  deletion_protection               = var.aws_rds_delete_protection_flag
  storage_encrypted                 = true
  vpc_security_group_ids            = var.aws_rds_security_groups
  availability_zone                 = "us-east-1d"
  enabled_cloudwatch_logs_exports    = ["postgresql", "upgrade"]
  auto_minor_version_upgrade        = true
  copy_tags_to_snapshot             = true
# monitoring_interval               = 60
# monitoring_role_arn               = var.aws_rds_monitoring_role_arn
  storage_type                      = "gp2"

  tags = {
    Name                = "${var.project_code}-db-stg"
    Environment_Name    = "stg"
    Service_Name        = "db"
    Project_Name        = var.project_name
    Application_Name    = var.application_name
  }

}