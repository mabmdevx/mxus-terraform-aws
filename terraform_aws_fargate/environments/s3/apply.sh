#!/bin/bash
echo "Applying S3 - stg"
terraform apply -target=module.s3.aws_s3_bucket.bucket_stg --auto-approve

echo "Applying S3 - prd"
terraform apply -target=module.s3.aws_s3_bucket.bucket_prd --auto-approve

echo "Applying S3 - dev1"
terraform apply -target=module.s3.aws_s3_bucket.bucket_dev1 --auto-approve