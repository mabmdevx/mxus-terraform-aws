ECR Notes
=========

Commands Examples:
------------------
terraform init
terraform validate
terraform plan -target=module.ecr.aws_ecr_repository.ecr_dev1_api \
 -target=module.ecr.aws_ecr_repository.ecr_dev1_ui
terraform apply -target=module.ecr.aws_ecr_repository.ecr_dev1_api \
 -target=module.ecr.aws_ecr_repository.ecr_dev1_ui
terraform destroy -target=module.ecr.aws_ecr_repository.ecr_dev1_api \
 -target=module.ecr.aws_ecr_repository.ecr_dev1_ui

Links:
------
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository

