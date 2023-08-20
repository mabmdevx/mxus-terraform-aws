CloudFront Notes
=================

Commands Examples:
------------------
terraform init
terraform validate
terraform plan -target=module.cf.aws_cloudfront_distribution.cf_dev1
terraform apply -target=module.ecr.aws_cloudfront_distribution.cf_dev1
terraform destroy -target=module.ecr.aws_cloudfront_distribution.cf_dev1

Links:
------
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution

