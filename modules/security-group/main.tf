resource "aws_security_group" "ecs_security_group" {
  vpc_id = var.vpc_id
  name = "ecs_security_group"
  description = "Allow inbound traffic to ECS instances"
  tags = {
    Project = var.project
    Environment = var.environment
  }

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [var.cidr_block]
  }

  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = [var.cidr_block]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
  }
}