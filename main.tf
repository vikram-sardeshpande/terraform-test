provider "aws" {
  region = "us-west-2"
}

variable "my-bucket" {
default ="test-terraform-cloud-vikram"
}
resource "aws_s3_bucket" "test" {
  bucket = var.my-bucket 
}
output "bucket-name" {
  value = aws_s3_bucket.test.bucket_domain_name
}
