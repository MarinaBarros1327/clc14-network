output "vpc_id" {
  description = "ID da VPC criada"
  value       = aws_vpc.minha_vpc.id
}

output "internet_gateway_id" {
  description = "Internet Gateway da VPC"
  value       = aws_internet_gateway.igw.id
}

output "nat_gateway_1a_id" {
  description = "NAT Gateway da zona us-east-1a"
  value       = aws_nat_gateway.nat_gw_1a.id
}

output "nat_gateway_1b_id" {
  description = "NAT Gateway da zona us-east-1b"
  value       = aws_nat_gateway.nat_gw_1b.id
}

output "subnet_publica_1a_id" {
  description = "Subnet pública da zona 1a"
  value       = aws_subnet.public_subnet_1a.id
}

output "subnet_publica_1b_id" {
  description = "Subnet pública da zona 1b"
  value       = aws_subnet.public_subnet_1b.id
}

output "subnet_privada_1a_id" {
  description = "Subnet privada da zona 1a"
  value       = aws_subnet.private_subnet_1a.id
}

output "subnet_privada_1b_id" {
  description = "Subnet privada da zona 1b"
  value       = aws_subnet.private_subnet_1b.id
}

output "route_table_public_id" {
  description = "Tabela de rota pública"
  value       = aws_route_table.public_rt.id
}

output "route_table_private_1a_id" {
  description = "Tabela de rota privada da zona 1a"
  value       = aws_route_table.priv_rt_1a.id
}

output "route_table_private_1b_id" {
  description = "Tabela de rota privada da zona 1b"
  value       = aws_route_table.priv_rt_1b.id
}
