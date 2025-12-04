## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 6.24.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.24.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_default_security_group.default](https://registry.terraform.io/providers/hashicorp/aws/6.24.0/docs/resources/default_security_group) | resource |
| [aws_eip.nat_gw_ip_1a](https://registry.terraform.io/providers/hashicorp/aws/6.24.0/docs/resources/eip) | resource |
| [aws_eip.nat_gw_ip_1b](https://registry.terraform.io/providers/hashicorp/aws/6.24.0/docs/resources/eip) | resource |
| [aws_flow_log.example](https://registry.terraform.io/providers/hashicorp/aws/6.24.0/docs/resources/flow_log) | resource |
| [aws_internet_gateway.igw](https://registry.terraform.io/providers/hashicorp/aws/6.24.0/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.nat_gw_1a](https://registry.terraform.io/providers/hashicorp/aws/6.24.0/docs/resources/nat_gateway) | resource |
| [aws_nat_gateway.nat_gw_1b](https://registry.terraform.io/providers/hashicorp/aws/6.24.0/docs/resources/nat_gateway) | resource |
| [aws_route_table.priv_rt_1a](https://registry.terraform.io/providers/hashicorp/aws/6.24.0/docs/resources/route_table) | resource |
| [aws_route_table.priv_rt_1b](https://registry.terraform.io/providers/hashicorp/aws/6.24.0/docs/resources/route_table) | resource |
| [aws_route_table.public_rt](https://registry.terraform.io/providers/hashicorp/aws/6.24.0/docs/resources/route_table) | resource |
| [aws_route_table_association.priv_1a_associate](https://registry.terraform.io/providers/hashicorp/aws/6.24.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.priv_1b_associate](https://registry.terraform.io/providers/hashicorp/aws/6.24.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.pub_1a_associate](https://registry.terraform.io/providers/hashicorp/aws/6.24.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.pub_1b_associate](https://registry.terraform.io/providers/hashicorp/aws/6.24.0/docs/resources/route_table_association) | resource |
| [aws_subnet.private_subnet_1a](https://registry.terraform.io/providers/hashicorp/aws/6.24.0/docs/resources/subnet) | resource |
| [aws_subnet.private_subnet_1b](https://registry.terraform.io/providers/hashicorp/aws/6.24.0/docs/resources/subnet) | resource |
| [aws_subnet.public_subnet_1a](https://registry.terraform.io/providers/hashicorp/aws/6.24.0/docs/resources/subnet) | resource |
| [aws_subnet.public_subnet_1b](https://registry.terraform.io/providers/hashicorp/aws/6.24.0/docs/resources/subnet) | resource |
| [aws_vpc.minha_vpc](https://registry.terraform.io/providers/hashicorp/aws/6.24.0/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | n/a | `string` | `"vpc-terraform-v3"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_internet_gateway_id"></a> [internet\_gateway\_id](#output\_internet\_gateway\_id) | ################################## Internet Gateway ################################## |
| <a name="output_nat_gateway_1a"></a> [nat\_gateway\_1a](#output\_nat\_gateway\_1a) | ################################## NAT Gateways ################################## |
| <a name="output_nat_gateway_1b"></a> [nat\_gateway\_1b](#output\_nat\_gateway\_1b) | n/a |
| <a name="output_route_table_private_1a"></a> [route\_table\_private\_1a](#output\_route\_table\_private\_1a) | n/a |
| <a name="output_route_table_private_1b"></a> [route\_table\_private\_1b](#output\_route\_table\_private\_1b) | n/a |
| <a name="output_route_table_public"></a> [route\_table\_public](#output\_route\_table\_public) | ################################## Route Tables ################################## |
| <a name="output_subnet_privada_1a"></a> [subnet\_privada\_1a](#output\_subnet\_privada\_1a) | n/a |
| <a name="output_subnet_privada_1b"></a> [subnet\_privada\_1b](#output\_subnet\_privada\_1b) | n/a |
| <a name="output_subnet_publica_1a"></a> [subnet\_publica\_1a](#output\_subnet\_publica\_1a) | ################################## Subnets ################################## |
| <a name="output_subnet_publica_1b"></a> [subnet\_publica\_1b](#output\_subnet\_publica\_1b) | n/a |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | ################################## VPC ################################## |
