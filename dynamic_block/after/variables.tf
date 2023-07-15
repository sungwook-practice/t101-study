variable "security_group_ingress" {
  type = map(object({
    description = string
    protocol    = string
    from_port   = string
    to_port     = string
    cidr_blocks = list(string)
  }))
}
