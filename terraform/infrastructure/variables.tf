variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "The name of the project, used for resource naming and tagging"
  type        = string
  default     = "aws-terraform-lab"
}

variable "environment" {
  description = "Environment identifier (e.g. dev, prod)"
  type        = string
  default     = "dev"
}

variable "bucket_name_prefix" {
  description = "Prefix for the S3 bucket name"
  type        = string
  default     = "integrationninjas"
}
