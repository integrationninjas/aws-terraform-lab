# Shared data sources

data "aws_caller_identity" "current" {}

# Reference the existing OIDC provider created during the bootstrap stage.
# This avoids recreating it (AWS only allows one per URL).
data "aws_iam_openid_connect_provider" "github" {
  url = "https://token.actions.githubusercontent.com"
}
