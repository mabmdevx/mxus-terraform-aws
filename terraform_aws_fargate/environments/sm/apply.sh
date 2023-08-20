#!/bin/bash
echo "Applying Secrets Manager - stg"
terraform apply -target=module.sm.aws_secretsmanager_secret.sm_stg --auto-approve

echo "Applying Secrets Manager - prd"
terraform apply -target=module.sm.aws_secretsmanager_secret.sm_prd --auto-approve

echo "Applying Secrets Manager - dev1"
terraform apply -target=module.sm.aws_secretsmanager_secret.sm_dev1 --auto-approve