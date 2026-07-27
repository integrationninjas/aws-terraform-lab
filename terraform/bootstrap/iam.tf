# IAM Role that GitHub Actions assumes to run Terraform in aws-terraform-lab
resource "aws_iam_role" "terraform_runner" {
  name = "${var.project_name}-terraform-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect    = "Allow"
        Principal = { Federated = aws_iam_openid_connect_provider.github.arn }
        Action    = "sts:AssumeRoleWithWebIdentity"
        Condition = {
          StringEquals = {
            "token.actions.githubusercontent.com:aud" = "sts.amazonaws.com"
          }
          StringLike = {
            "token.actions.githubusercontent.com:sub" = "${var.github_oidc_subject}:*"
          }
        }
      }
    ]
  })

  tags = {
    Name        = "${var.project_name}-terraform-role"
    Environment = "bootstrap"
    ManagedBy   = "Terraform"
  }
}

# Admin permissions so Terraform can create AWS resources
resource "aws_iam_role_policy_attachment" "terraform_admin" {
  role       = aws_iam_role.terraform_runner.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
