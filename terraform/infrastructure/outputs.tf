output "instance_id" {
  description = "EC2 Instance ID, targetable via AWS SSM for deployments"
  value       = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}

output "instance_public_dns" {
  description = "Public DNS hostname of the EC2 instance"
  value       = aws_instance.app_server.public_dns
}

output "ecr_repository_url" {
  description = "URL of the Amazon ECR repository"
  value       = aws_ecr_repository.app.repository_url
}

output "aws_account_id" {
  description = "AWS Account ID used for ECR registry domain"
  value       = data.aws_caller_identity.current.account_id
}

output "github_actions_role_arn" {
  description = "ARN of the IAM role assumed by nodejs-app GitHub Actions via OIDC"
  value       = aws_iam_role.github_actions.arn
}
