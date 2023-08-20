#!/bin/bash
echo "Destroying RDS - stg"
terraform destroy -target=module.rds.aws_db_instance.db_stg --auto-approve

echo "Destroying RDS - prd"
terraform destroy -target=module.rds.aws_db_instance.db_prd --auto-approve

echo "Destroying RDS - dev1"
terraform destroy -target=module.rds.aws_db_instance.db_dev1 --auto-approve