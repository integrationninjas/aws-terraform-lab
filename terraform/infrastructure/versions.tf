terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # State is stored locally by default — fine for tutorials and initial setup.
  # For production, configure a remote backend like S3 + DynamoDB:
  #
  # backend "s3" {
  #   bucket         = "your-terraform-state-bucket"
  #   key            = "aws-terraform-lab/terraform.tfstate"
  #   region         = "ap-south-1"
  #   dynamodb_table = "terraform-lock"
  #   encrypt        = true
  # }
}

provider "aws" {
  region = var.aws_region
}
