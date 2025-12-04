variable "vpc_name"{
  type = string
  default ="vpc-terraform--v2"
}

resource "aws_vpc" "minha-vpc" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = var.vpc_name
  }
}

##Criar subnet publica AZ A
resource "aws_subnet" "public_subnet_1a" {
  vpc_id     = aws_vpc.minha-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "public_subnet_1a"
  }
}

##Criar subnet privada AZ A
resource "aws_subnet" "private_subnet_1a" {
  vpc_id     = aws_vpc.minha-vpc.id
  cidr_block = "10.0.10.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "private_subnet_1A"
  }
}

##Criar subnet publica AZ b
resource "aws_subnet" "public_subnet_1b" {
  vpc_id     = aws_vpc.minha-vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "public_subnet_1b"
  }
}

##Criar subnet privada AZ b
resource "aws_subnet" "private_subnet_1b" {
  vpc_id     = aws_vpc.minha-vpc.id
  cidr_block = "10.0.20.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "private_subnet_1b"
  }
}

## Cria a tabela de rota da subnet privada 1a
resource "aws_route_table" "priv_rt_1a" {
  vpc_id = aws_vpc.minha-vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gw_1a.id
  }


  tags = {
    Name = "priv-rt-1a"
  }
}

## Associa a rt priv-rt-1a com a subnet privada priv-subnet-1a 
resource "aws_route_table_association" "priv_1a_associate" {
  subnet_id      = aws_subnet.private_subnet_1a.id
  route_table_id = aws_route_table.priv_rt_1a.id
}

## Cria a tabela de rota da subnet publica 1a
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.minha-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public-rt"
  }
}

## Associa a rt pub-rt-1a com a subnet publica pub-subnet-1a 
resource "aws_route_table_association" "pub_1a_associate" {
  subnet_id      = aws_subnet.public_subnet_1a.id
  route_table_id = aws_route_table.public_rt.id
}

## Cria o internet gateway na vpc 
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.minha-vpc.id

  tags = {
    Name = "igw-tf-vpc-automation"
  }
}

## Cria um ip publico para o nat-gateway
resource "aws_eip" "nat_gw_ip_1a" {
  domain = "vpc"
}

## Cria um nat gateway utilizando um ip publico
resource "aws_nat_gateway" "nat_gw_1a" {
  allocation_id = aws_eip.nat_gw_ip_1a.id
  subnet_id     = aws_subnet.public_subnet_1a.id

  tags = {
    Name = "nat-gw-1a"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}

## Cria a tabela de rota da subnet privada 1a
resource "aws_route_table" "priv_rt_1b" {
  vpc_id = aws_vpc.minha-vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gw_1b.id
  }


  tags = {
    Name = "priv-rt-1b"
  }
}

## Associa a rt priv-rt-1a com a subnet privada priv-subnet-1a 
resource "aws_route_table_association" "priv_1b_associate" {
  subnet_id      = aws_subnet.private_subnet_1b.id
  route_table_id = aws_route_table.priv_rt_1b.id
}
## Associa a rt pub-rt-1a com a subnet publica pub-subnet-1a 
resource "aws_route_table_association" "pub_1b_associate" {
  subnet_id      = aws_subnet.public_subnet_1b.id
  route_table_id = aws_route_table.public_rt.id
}

## Cria um ip publico para o nat-gateway
resource "aws_eip" "nat_gw_ip_1b" {
  domain = "vpc"
}

## Cria um nat gateway utilizando um ip publico
resource "aws_nat_gateway" "nat_gw_1b" {
  allocation_id = aws_eip.nat_gw_ip_1b.id
  subnet_id     = aws_subnet.public_subnet_1b.id

  tags = {
    Name = "nat-gw-1b"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}



output "vpc_id"{
    value=aws_vpc.minha-vpc.id
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




