resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "terraform-dynamicblock-test"
  }
}

resource "aws_security_group" "name" {
  name        = "terraform-dynamicblock-test"
  description = "terraform-dynamicblock-test"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "http"
    protocol    = "tcp"
    from_port   = "80"
    to_port     = "80"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "https"
    protocol    = "tcp"
    from_port   = "443"
    to_port     = "443"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "ssh"
    protocol    = "tcp"
    from_port   = "22"
    to_port     = "22"
    cidr_blocks = ["0.0.0.0/0"]
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
