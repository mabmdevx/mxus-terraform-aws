#!/bin/bash
echo "Destroying ECR - stg"
terraform destroy -target=module.ecr.aws_ecr_repository.ecr_stg_api \
 -target=module.ecr.aws_ecr_repository.ecr_stg_ui --auto-approve

echo "Destroying ECR - prd"
terraform destroy -target=module.ecr.aws_ecr_repository.ecr_prd_api \
 -target=module.ecr.aws_ecr_repository.ecr_prd_ui --auto-approve

echo "Destroying ECR - dev1"
terraform destroy -target=module.ecr.aws_ecr_repository.ecr_dev1_api \
 -target=module.ecr.aws_ecr_repository.ecr_dev1_ui --auto-approve