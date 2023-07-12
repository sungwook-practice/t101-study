# 개요
* count를 사용하는 경우, 리소스 교체가 발생하는 상황을 재현
* 상황 재현 방법
```bash
1. terraform apply
2. terraform.tfvars파일에서 subnets값 첫번째 요소를 주석하세요
3. terraform plan의 결과를 확인하세요. EC2 instance는 replaced표시가 나옵니다.
```

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
| [aws_instance.server](https://registry.terraform.io/providers/hashicorp/aws/5.4.0/docs/resources/instance) | resource |
| [aws_subnet.main](https://registry.terraform.io/providers/hashicorp/aws/5.4.0/docs/resources/subnet) | resource |
| [aws_vpc.main](https://registry.terraform.io/providers/hashicorp/aws/5.4.0/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_subnets"></a> [subnets](#input\_subnets) | n/a | <pre>list(object({<br>    cidr = string<br>    az = string<br>    tags = map(string)<br>  }))</pre> | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->