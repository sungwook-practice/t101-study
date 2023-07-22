vpc_cidr = "192.168.0.0/16"
subnets = {
  "subnet-a" = {
    "cidr" = "192.168.0.0/24",
    "az"   = "ap-northeast-2a",
    tags = {
      Name        = "terraform slack demo"
      Environment = "dev"
    }
  },
  "subnet-b" = {
    "cidr" = "192.168.1.0/24",
    "az"   = "ap-northeast-2a",
    tags = {
      Name        = "terraform slack demo"
      Environment = "dev"
    }
  }
}
