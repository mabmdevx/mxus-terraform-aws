RDS Notes
=========

Commands Examples:
------------------
terraform init
terraform validate
terraform plan -target=module.rds.aws_db_instance.db_dev1 --auto-approve
terraform apply -target=module.rds.aws_db_instance.db_dev1 --auto-approve
terraform destroy -target=module.rds.aws_db_instance.db_dev1 --auto-approve

Links:
------
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance

