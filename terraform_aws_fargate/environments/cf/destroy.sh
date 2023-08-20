#!/bin/bash
echo "Destroying CloudFront - stg"
terraform destroy -target=module.cf.aws_cloudfront_distribution.cf_stg

echo "Destroying CloudFront - prd"
terraform destroy -target=module.cf.aws_cloudfront_distribution.cf_prd

echo "Destroying CloudFront - dev1"
terraform destroy -target=module.cf.aws_cloudfront_distribution.cf_dev1