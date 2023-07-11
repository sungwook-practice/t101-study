vpc_cidr            = "192.168.0.0/16"
public_subnet_cidrs = ["192.168.0.0/24", "192.168.1.0/24"]
public_subnet_azs   = ["ap-northeast-2a", "ap-northeast-2c"]
public_subnet_tags = [
  {
    Name = "terraform-public-subnet-a"
    Env  = "dev"
  },
  {
    Name = "terraform-public-subnet-b"
    Env  = "dev"
  }
]