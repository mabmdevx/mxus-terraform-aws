#!/bin/bash
echo "Destroying S3 - stg"
terraform destroy -target=module.s3.aws_s3_bucket.bucket_stg --auto-approve

echo "Destroying S3 - prd"
terraform destroy -target=module.s3.aws_s3_bucket.bucket_prd --auto-approve

echo "Destroying S3 - dev1"
terraform destroy -target=module.s3.aws_s3_bucket.bucket_dev1 --auto-approve