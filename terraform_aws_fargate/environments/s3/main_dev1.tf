resource "aws_s3_bucket" "bucket_dev1" {
  bucket = "${var.project_code}-bucket-dev1"

  tags = {
    Name                = "${var.project_code}-bucket-dev1"
    Environment_Name    = "dev1"
    Service_Name        = "bucket"
    Project_Name        = "${var.project_name}"
    Application_Name    = "${var.application_name}"
  }
}


resource "aws_s3_bucket_server_side_encryption_configuration" "bucket_dev1_encryption" {
  bucket = aws_s3_bucket.bucket_dev1.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "AES256"
    }
  }
}


resource "aws_s3_bucket_acl" "bucket_dev1_acl" {
  bucket = aws_s3_bucket.bucket_dev1.bucket
  acl    = "private"
}


resource "aws_s3_bucket_public_access_block" "bucket_dev1_public_access_block" {
  bucket = aws_s3_bucket.bucket_dev1.bucket

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}