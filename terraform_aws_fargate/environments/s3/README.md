S3 Notes
=========

Commands Examples:
------------------
terraform init
terraform validate
terraform plan -target=module.s3.aws_s3_bucket.bucket_dev1 --auto-approve
terraform apply -target=module.s3.aws_s3_bucket.bucket_dev1 --auto-approve
terraform destroy -target=module.s3.aws_s3_bucket.bucket_dev1 --auto-approve

Links:
------
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block


Notes:
------
- For some reason, SSE-S3 encryption parameter is not working currently.
Remember to enable it manually after the bucket has been created.

