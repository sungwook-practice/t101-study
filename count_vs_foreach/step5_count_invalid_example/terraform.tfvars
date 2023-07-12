vpc_cidr            = "192.168.0.0/16"

subnets = [
  # terrafprm apply 이 후, 첫 번째 요소를 주석하세요
  {
    cidr = "192.168.1.0/24",
    az = "ap-northeast-2a",
    tags = {
      Name = "public-subnet"
      Environment = "dev"
    }
  },
  {
    cidr = "192.168.2.0/24",
    az = "ap-northeast-2c",
    tags = {
      Name = "private-subnet"
      Environment = "dev"
    }
  }
]