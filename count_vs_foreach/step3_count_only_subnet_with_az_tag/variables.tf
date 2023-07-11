variable "vpc_cidr" {
  type = string
}

variable "public_subnet_cidrs" {
  type = list(string)
}

variable "public_subnet_azs" {
  type = list(string)
}

variable "public_subnet_tags" {
  type = list(map(string))
}