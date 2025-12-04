## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement_aws) | 6.24.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider_aws) | 6.24.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| aws_default_security_group.default | resource |
| aws_eip.nat_gw_ip_1a | resource |
| aws_eip.nat_gw_ip_1b | resource |
| aws_flow_log.example | resource |
| aws_internet_gateway.igw | resource |
| aws_nat_gateway.nat_gw_1a | resource |
| aws_nat_gateway.nat_gw_1b | resource |
| aws_route_table.priv_rt_1a | resource |
| aws_route_table.priv_rt_1b | resource |
| aws_route_table.public_rt | resource |
| aws_route_table_association.priv_1a_associate | resource |
| aws_route_table_association.priv_1b_associate | resource |
| aws_route_table_association.pub_1a_associate | resource |
| aws_route_table_association.pub_1b_associate | resource |
| aws_subnet.private_subnet_1a | resource |
| aws_subnet.private_subnet_1b | resource |
| aws_subnet.public_subnet_1a | resource |
| aws_subnet.public_subnet_1b | resource |
| aws_vpc.minha_vpc | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vpc_name"></a> [vpc_name](#input_vpc_name) | Nome da VPC criada pelo módulo | `string` | `"vpc-terraform-v3"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_internet_gateway_id"></a> **internet_gateway_id** | ID do Internet Gateway criado |
| <a name="output_nat_gateway_1a"></a> **nat_gateway_1a** | ID do NAT Gateway na AZ 1a |
| <a name="output_nat_gateway_1b"></a> **nat_gateway_1b** | ID do NAT Gateway na AZ 1b |
| <a name="output_route_table_private_1a"></a> **route_table_private_1a** | ID da Route Table privada da AZ 1a |
| <a name="output_route_table_private_1b"></a> **route_table_private_1b** | ID da Route Table privada da AZ 1b |
| <a name="output_route_table_public"></a> **route_table_public** | ID da Route Table pública da VPC |
| <a name="output_subnet_privada_1a"></a> **subnet_privada_1a** | ID da Subnet privada da AZ 1a |
| <a name="output_subnet_privada_1b"></a> **subnet_privada_1b** | ID da Subnet privada da AZ 1b |
| <a name="output_subnet_publica_1a"></a> **subnet_publica_1a** | ID da Subnet pública da AZ 1a |
| <a name="output_subnet_publica_1b"></a> **subnet_publica_1b** | ID da Subnet pública da AZ 1b |
| <a name="output_vpc_id"></a> **vpc_id** | ID da VPC criada |
