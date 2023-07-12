resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "terraform VPC"
  }
}

resource "aws_subnet" "main" {
  for_each = var.subnets

  vpc_id            = aws_vpc.main.id
  cidr_block        = each.value["cidr"]
  availability_zone = each.value["az"]

  tags = each.value["tags"]
}

resource "aws_instance" "server" {
  ami           = "ami-0e8bd0820b6e1360b"
  instance_type = "t4g.nano"
  subnet_id = aws_subnet.main["private-subnet-b"].id

  tags = {
    Name = "Terraform demo"
  }
}
