Secrets Manager Notes
=====================

Commands Examples:
------------------
terraform init
terraform validate
terraform plan -target=module.sm.aws_secretsmanager_secret.sm_dev1
terraform apply -target=module.sm.aws_secretsmanager_secret.sm_dev1
terraform destroy -target=module.sm.aws_secretsmanager_secret.sm_dev1

Links:
------
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret

