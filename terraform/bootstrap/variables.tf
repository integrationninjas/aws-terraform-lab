variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Project name, used for naming the IAM role"
  type        = string
  default     = "aws-terraform-lab"
}

variable "github_org" {
  description = "GitHub organization or username (e.g. integrationninjas)"
  type        = string
  default     = "integrationninjas"
}

variable "github_infra_repo" {
  description = "The infrastructure repo that runs Terraform via GitHub Actions"
  type        = string
  default     = "aws-terraform-lab"
}

variable "github_oidc_subject_prefix" {
  description = "Optional custom OIDC subject claim prefix (defaults to repo:<github_org>/<github_infra_repo>)"
  type        = string
  default     = ""
}
