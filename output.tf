output "vpc_id"{
    value=aws_vpc.minha_vpc.id
} 


output "subnet_publica_1a"{
    value=aws_subnet.public_subnet_1a.id
} 

output "subnet_privada_1a"{
    value=aws_subnet.private_subnet_1a.id
} 

output "subnet_publica_1b"{
    value=aws_subnet.public_subnet_1b.id
} 

output "subnet_privada_1b"{
    value=aws_subnet.private_subnet_1b.id
} 

output "aws_route_table_association_private_1b"{
    value=aws_route_table.priv_rt_1b.id
}

output "aws_route_table_association_public"{
    value=aws_route_table.public_rt.id
}

output "aws_route_table_association_private_1a"{
    value=aws_route_table.priv_rt_1a.id
}

output "aws_nat_gateway_1a"{
    value=aws_nat_gateway.nat_gw_1a.id
}

output "aws_nat_gateway_1b"{
    value=aws_nat_gateway.nat_gw_1b.id
}

output "aws_internet_gateway"{
    value=aws_internet_gateway.igw.id
    
}




