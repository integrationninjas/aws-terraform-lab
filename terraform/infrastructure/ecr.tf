# ECR repository: stores Docker images built and pushed by GitHub Actions,
# which are later pulled by the EC2 instance via SSM.
resource "aws_ecr_repository" "app" {
  name                 = var.project_name
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name        = var.project_name
    Environment = "managed-by-terraform"
  }
}
