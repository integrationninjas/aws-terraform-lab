# Security group: exposes the application port. Port 22 (SSH) is intentionally
# left closed because deployments and server access happen securely over AWS SSM.
resource "aws_security_group" "app_sg" {
  name        = "${var.project_name}-sg"
  description = "Allow inbound traffic for application on port ${var.app_port}"

  ingress {
    description = "Application port from anywhere"
    from_port   = var.app_port
    to_port     = var.app_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "${var.project_name}-sg"
    Environment = "managed-by-terraform"
  }
}
