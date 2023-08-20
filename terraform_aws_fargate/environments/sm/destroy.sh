#!/bin/bash
echo "Destroying Secrets Manager - stg"
terraform destroy -target=module.sm.aws_secretsmanager_secret.sm_stg --auto-approve

echo "Destroying Secrets Manager - prd"
terraform destroy -target=module.sm.aws_secretsmanager_secret.sm_prd --auto-approve

echo "Destroying Secrets Manager - dev1"
terraform destroy -target=module.sm.aws_secretsmanager_secret.sm_dev1 --auto-approve