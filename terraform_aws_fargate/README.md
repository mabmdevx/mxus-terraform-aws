# Set secrets via environment variables
export TF_VAR_aws_access_key="<The AWS Access Key>"
export TF_VAR_aws_secret_key="<The AWS Secret Key>"
export TF_VAR_aws_region="<The AWS Region>"

# When you run Terraform, it'll pick up the secrets automatically
terraform apply
