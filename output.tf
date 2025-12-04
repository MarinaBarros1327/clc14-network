###################################
# VPC
###################################
output "vpc_id" {
  value = aws_vpc.minha_vpc.id
}

###################################
# Subnets
###################################
output "subnet_publica_1a" {
  value = aws_subnet.public_subnet_1a.id
}

output "subnet_publica_1b" {
  value = aws_subnet.public_subnet_1b.id
}

output "subnet_privada_1a" {
  value = aws_subnet.private_subnet_1a.id
}

output "subnet_privada_1b" {
  value = aws_subnet.private_subnet_1b.id
}

###################################
# Route Tables
###################################
output "route_table_public" {
  value = aws_route_table.public_rt.id
}

output "route_table_private_1a" {
  value = aws_route_table.priv_rt_1a.id
}

output "route_table_private_1b" {
  value = aws_route_table.priv_rt_1b.id
}

###################################
# NAT Gateways
###################################
output "nat_gateway_1a" {
  value = aws_nat_gateway.nat_gw_1a.id
}

output "nat_gateway_1b" {
  value = aws_nat_gateway.nat_gw_1b.id
}

###################################
# Internet Gateway
###################################
output "internet_gateway_id" {
  value = aws_internet_gateway.igw.id
}
