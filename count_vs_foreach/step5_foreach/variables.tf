variable "vpc_cidr" {
  type = string
}

variable "subnets" {
  type = map(object({
    cidr = string
    az   = string
    tags = map(string)
  }))
}
