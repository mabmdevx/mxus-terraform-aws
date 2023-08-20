#!/bin/bash
echo "Applying CloudFront - stg"
terraform apply -target=module.cf.aws_cloudfront_distribution.cf_stg

echo "Applying CloudFront - prd"
terraform apply -target=module.cf.aws_cloudfront_distribution.cf_prd

echo "Applying CloudFront - dev1"
terraform apply -target=module.cf.aws_cloudfront_distribution.cf_dev1