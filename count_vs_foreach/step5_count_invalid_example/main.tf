resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "terraform VPC"
  }
}

resource "aws_subnet" "main" {
  count = length(var.subnets)

  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnets[count.index].cidr
  availability_zone = var.subnets[count.index].az

  tags = var.subnets[count.index].tags
}

resource "aws_instance" "server" {
  ami           = "ami-0e8bd0820b6e1360b"
  instance_type = "t4g.nano"
  subnet_id = aws_subnet.main[1].id

  tags = {
    Name = "Terraform demo"
  }
}
