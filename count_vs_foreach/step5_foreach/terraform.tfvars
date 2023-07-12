vpc_cidr = "192.168.0.0/16"
subnets = {
  public-subnet-a = {
    "cidr" = "192.168.0.0/24",
    "az"   = "ap-northeast-2a",
    tags = {
      Name = "public-subnet"
      Environment = "dev"
    }
  },
  private-subnet-b = {
    "cidr" = "192.168.1.0/24",
    "az"   = "ap-northeast-2a",
    tags = {
      Name = "private-subnet"
      Environment = "dev"
    }
  },
  public-subnet-c = {
    "cidr" = "192.168.3.0/24",
    "az"   = "ap-northeast-2c",
    tags = {
      Name = "public-subnet"
      Environment = "dev"
    }
  },
  private-subnet-d = {
    "cidr" = "192.168.4.0/24",
    "az"   = "ap-northeast-2c",
    tags = {
      Name = "private-subnet"
      Environment = "dev"
    }
  },
}
