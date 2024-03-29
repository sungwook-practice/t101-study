vpc_cidr = "192.168.0.0/16"
public_subnets = [
  {
    "cidr" = "192.168.0.0/24",
    "az"   = "ap-northeast-2a",
    tags = {
      Name = "terraform-public-subnet-a"
      Env  = "dev"
    }
  },
  {
    "cidr" = "192.168.1.0/24",
    "az"   = "ap-northeast-2c",
    tags = {
      Name = "terraform-public-subnet-b"
      Env  = "dev"
    }
  }
]
