resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "terraform-dynamicblock-test"
  }
}

resource "aws_security_group" "main" {
  name        = "terraform-dynamicblock-test"
  description = "terraform-dynamicblock-test"
  vpc_id      = aws_vpc.main.id

  dynamic "ingress" {
    for_each = var.security_group_ingress
    content {
      description = ingress.value["description"]
      protocol    = ingress.value["protocol"]
      from_port   = ingress.value["from_port"]
      to_port     = ingress.value["to_port"]
      cidr_blocks = ingress.value["cidr_blocks"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "terraform-dynamicblock-test"
  }
}
