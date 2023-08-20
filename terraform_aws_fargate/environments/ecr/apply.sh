#!/bin/bash
echo "Applying ECR - stg"
terraform apply -target=module.ecr.aws_ecr_repository.ecr_stg_api \
 -target=module.ecr.aws_ecr_repository.ecr_stg_ui --auto-approve

echo "Applying ECR - prd"
terraform apply -target=module.ecr.aws_ecr_repository.ecr_prd_api \
 -target=module.ecr.aws_ecr_repository.ecr_prd_ui --auto-approve

echo "Applying ECR - dev1"
terraform apply -target=module.ecr.aws_ecr_repository.ecr_dev1_api \
 -target=module.ecr.aws_ecr_repository.ecr_dev1_ui --auto-approve