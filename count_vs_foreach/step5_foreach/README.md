# 개요
* [이전 네번째 예제](../step4_count_refactoring/)에서 count반복문 단점을 foreach방법으로 개선
* 단점: 리스트 요소가 변경되면 기존 리소스가 교체(replaced)되거나 테라폼 실행 오류 발생

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
| [aws_subnet.public](https://registry.terraform.io/providers/hashicorp/aws/5.4.0/docs/resources/subnet) | resource |
| [aws_vpc.main](https://registry.terraform.io/providers/hashicorp/aws/5.4.0/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_public_subnets"></a> [public\_subnets](#input\_public\_subnets) | n/a | <pre>map(object({<br>    cidr = string<br>    az   = string<br>    tags = map(string)<br>  }))</pre> | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->