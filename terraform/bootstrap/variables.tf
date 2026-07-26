variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Project name, used for naming the IAM role"
  type        = string
  default     = "nodejs-app"
}

variable "github_org" {
  description = "GitHub organization or username (e.g. integrationninjas)"
  type        = string
}

variable "github_infra_repo" {
  description = "The infrastructure repo that runs Terraform via GitHub Actions"
  type        = string
  default     = "aws-terraform-lab"
}

variable "github_oidc_subject_prefix" {
  description = "Immutable OIDC subject claim prefix from GitHub (Settings > Actions > OIDC configuration)"
  type        = string
}
