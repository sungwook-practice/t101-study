resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "terraform VPC"
  }

  provisioner "local-exec" {
    command = "curl -X POST http://localhost:8000/send_message/ -H 'Content-Type: application/json' -d '{\"text\": \"aws vpc is created.\"}'"
  }

  provisioner "local-exec" {
    when    = destroy
    command = "curl -X POST http://localhost:8000/send_message/ -H 'Content-Type: application/json' -d '{\"text\": \"aws vpc is destroyed.\"}'"
  }
}

resource "aws_subnet" "main" {
  for_each = var.subnets

  vpc_id            = aws_vpc.main.id
  cidr_block        = each.value["cidr"]
  availability_zone = each.value["az"]

  tags = each.value["tags"]

  provisioner "local-exec" {
    command = "curl -X POST http://localhost:8000/send_message/ -H 'Content-Type: application/json' -d '{\"text\": \"aws subnet ${each.key} is created.\"}'"
  }

  provisioner "local-exec" {
    when    = destroy
    command = "curl -X POST http://localhost:8000/send_message/ -H 'Content-Type: application/json' -d '{\"text\": \"aws subnet ${each.key} is destroyed.\"}'"
  }
}
