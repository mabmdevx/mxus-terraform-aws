#!/bin/bash
echo "Applying RDS - stg"
terraform apply -target=module.rds.aws_db_instance.db_stg --auto-approve

echo "Applying RDS - prd"
terraform apply -target=module.rds.aws_db_instance.db_prd --auto-approve

echo "Applying RDS - dev1"
terraform apply -target=module.rds.aws_db_instance.db_dev1 --auto-approve