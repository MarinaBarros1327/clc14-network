##############################################
# VPC
##############################################

output "vpc_id" {
  description = "ID da VPC criada pelo Terraform."
  value       = aws_vpc.minha_vpc.id
}

##############################################
# Internet Gateway
##############################################

output "internet_gateway_id" {
  description = "ID do Internet Gateway associado à VPC."
  value       = aws_internet_gateway.igw.id
}

##############################################
# NAT Gateways
##############################################

output "nat_gateway_1a_id" {
  description = "ID do NAT Gateway criado na zona us-east-1a."
  value       = aws_nat_gateway.nat_gw_1a.id
}

output "nat_gateway_1b_id" {
  description = "ID do NAT Gateway criado na zona us-east-1b."
  value       = aws_nat_gateway.nat_gw_1b.id
}

##############################################
# Subnets Públicas
##############################################

output "subnet_publica_1a_id" {
  description = "ID da subnet pública localizada em us-east-1a."
  value       = aws_subnet.public_subnet_1a.id
}

output "subnet_publica_1b_id" {
  description = "ID da subnet pública localizada em us-east-1b."
  value       = aws_subnet.public_subnet_1b.id
}

##############################################
# Subnets Privadas
##############################################

output "subnet_privada_1a_id" {
  description = "ID da subnet privada localizada em us-east-1a."
  value       = aws_subnet.private_subnet_1a.id
}

output "subnet_privada_1b_id" {
  description = "ID da subnet privada localizada em us-east-1b."
  value       = aws_subnet.private_subnet_1b.id
}

##############################################
# Route Tables
##############################################

output "route_table_public_id" {
  description = "ID da tabela de rota pública associada ao Internet Gateway."
  value       = aws_route_table.public_rt.id
}

output "route_table_private_1a_id" {
  description = "ID da tabela de rota privada da zona us-east-1a."
  value       = aws_route_table.priv_rt_1a.id
}

output "route_table_private_1b_id" {
  description = "ID da tabela de rota privada da zona us-east-1b."
  value       = aws_route_table.priv_rt_1b.id
}
