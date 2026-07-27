resource "aws_s3_bucket" "app_bucket" {
  bucket = "${var.bucket_name_prefix}-${var.project_name}-${var.environment}"

  tags = {
    Name        = "${var.project_name}-bucket"
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}
