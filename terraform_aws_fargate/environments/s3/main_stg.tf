resource "aws_s3_bucket" "bucket_stg" {
  bucket = "${var.project_code}-bucket-stg"

  tags = {
    Name                = "${var.project_code}-bucket-stg"
    Environment_Name    = "stg"
    Service_Name        = "bucket"
    Project_Name        = "${var.project_name}"
    Application_Name    = "${var.application_name}"
  }
}


resource "aws_s3_bucket_server_side_encryption_configuration" "bucket_stg_encryption" {
  bucket = aws_s3_bucket.bucket_stg.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "AES256"
    }
  }
}


resource "aws_s3_bucket_acl" "bucket_stg_acl" {
  bucket = aws_s3_bucket.bucket_stg.bucket
  acl    = "private"
}


resource "aws_s3_bucket_public_access_block" "bucket_stg_public_access_block" {
  bucket = aws_s3_bucket.bucket_stg.bucket

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}