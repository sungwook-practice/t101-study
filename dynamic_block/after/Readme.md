<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_security_group.name](https://registry.terraform.io/providers/hashicorp/aws/5.4.0/docs/resources/security_group) | resource |
| [aws_vpc.main](https://registry.terraform.io/providers/hashicorp/aws/5.4.0/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_security_group_ingress"></a> [security\_group\_ingress](#input\_security\_group\_ingress) | n/a | <pre>map(object({<br>    description = string<br>    protocol   = string<br>    from_port = string<br>    to_port = string<br>    cidr_blocks = list(string)<br>  }))</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->