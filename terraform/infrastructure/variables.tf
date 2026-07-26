variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "The name of the project, used for resource naming and tagging"
  type        = string
  default     = "nodejs-app"
}

variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "app_port" {
  description = "The port the application listens on"
  type        = number
  default     = 5000
}

# These variables scope the nodejs-app OIDC deployment role.
# Set to the APPLICATION repo, not this infrastructure repo.
variable "github_org" {
  description = "Your GitHub username or organization (e.g. integrationninjas)"
  type        = string
}

variable "github_repo" {
  description = "The application repository name allowed to deploy (e.g. nodejs-app)"
  type        = string
}

variable "github_branch" {
  description = "The branch allowed to assume the OIDC deployment role"
  type        = string
  default     = "ec2-terraform"
}
