# 이 변수는 for_each에서만 사용됩니다.
variable "vpc_count" {
  type = map(any)
  default = {
    count_1 = { Name = "count_1" },
    count_2 = { Name = "count_2" },
  }
}

resource "aws_vpc" "main" {
  # count = 2
  for_each = var.vpc_count

  cidr_block = "192.168.0.0/16"
  tags = {
    Name = "terraform VPC"
  }
}
