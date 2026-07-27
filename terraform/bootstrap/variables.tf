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

variable "github_oidc_subject" {
  description = "The OIDC subject claim that identifies which GitHub repo can assume this role"
  type        = string
  default     = "repo:integrationninjas@140945507/aws-terraform-lab@1311111993"
}
