##### VPC
resource "aws_vpc" "projeto2_vpc" {
  cidr_block           = var.vpc_subnet
  tags                 = var.vpc_tags
  enable_dns_support   = var.vpc_dnsSupport
  enable_dns_hostnames = var.vpc_dnsHostNames
}


##### ACL
/*
resource "aws_default_network_acl" "projeto2_acl" {
  default_network_acl_id = aws_vpc.projeto2_vpc.default_network_acl_id
*/

resource "aws_network_acl" "projeto2_acl" {
  vpc_id = aws_vpc.projeto2_vpc.id
  subnet_ids = [ aws_subnet.projeto2_privada1.id, aws_subnet.projeto2_privada2.id, aws_subnet.projeto2_publica1.id, aws_subnet.projeto2_publica2.id ]

  ingress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = var.default_route
    from_port  = 0
    to_port    = 0
  }

  egress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = var.default_route
    from_port  = 0
    to_port    = 0
  }
}


##### SECURITY GROUP

resource "aws_default_security_group" "projeto2_sg" {
  vpc_id = aws_vpc.projeto2_vpc.id

  ingress {
    protocol  = -1
    self      = true
    from_port = 0
    to_port   = 0
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.default_route_list
  }
}

##### SUBNETS
########## Subnet Privada
resource "aws_subnet" "projeto2_privada1" {
  vpc_id                                      = aws_vpc.projeto2_vpc.id
  availability_zone                           = var.vpc_az1
  cidr_block                                  = var.vpc_privada1_subnet
  enable_resource_name_dns_a_record_on_launch = true
  tags                                        = var.vpc_tags
}

resource "aws_subnet" "projeto2_privada2" {
  vpc_id                                      = aws_vpc.projeto2_vpc.id
  availability_zone                           = var.vpc_az2
  cidr_block                                  = var.vpc_privada2_subnet
  enable_resource_name_dns_a_record_on_launch = true
  tags                                        = var.vpc_tags
}

########### Subnet Publica
  resource "aws_subnet" "projeto2_publica1" {
  vpc_id                                      = aws_vpc.projeto2_vpc.id
  availability_zone                           = var.vpc_az1
  cidr_block                                  = var.vpc_publica1_subnet
  map_public_ip_on_launch                     = true
  enable_resource_name_dns_a_record_on_launch = true
  tags                                        = var.vpc_tags
}

  resource "aws_subnet" "projeto2_publica2" {
  vpc_id                                      = aws_vpc.projeto2_vpc.id
  availability_zone                           = var.vpc_az2
  cidr_block                                  = var.vpc_publica2_subnet
  map_public_ip_on_launch                     = true
  enable_resource_name_dns_a_record_on_launch = true
  tags                                        = var.vpc_tags
}


##### INTERNET GATEWAY
resource "aws_internet_gateway" "desafio2_gw" {
  vpc_id = aws_vpc.projeto2_vpc.id
  tags   = var.vpc_tags
}


##### ROUTER TABLE
resource "aws_route_table" "desafio2_rt_publica" {
 vpc_id = aws_vpc.projeto2_vpc.id
 tags   = var.vpc_tags
}

resource "aws_route_table" "desafio2_rt_privada" {
 vpc_id = aws_vpc.projeto2_vpc.id
 tags   = var.vpc_tags
}

########## ROTA PARA INTERNET
resource "aws_route" "desafio2_internet_access" {
  route_table_id         = aws_route_table.desafio2_rt_publica.id
  destination_cidr_block = var.default_route
  gateway_id             = aws_internet_gateway.desafio2_gw.id
}

########## ASSOCIACAO SUBNET COM ROUTE TABLE
resource "aws_route_table_association" "desafio2_subnet_rt1" {
  subnet_id      = aws_subnet.projeto2_publica1.id
  route_table_id = aws_route_table.desafio2_rt_publica.id
}


resource "aws_route_table_association" "desafio2_subnet_rt2" {
  subnet_id      = aws_subnet.projeto2_publica2.id
  route_table_id = aws_route_table.desafio2_rt_publica.id
}

resource "aws_route_table_association" "desafio2_subnet_rt3" {
  subnet_id      = aws_subnet.projeto2_privada1.id
  route_table_id = aws_route_table.desafio2_rt_privada.id
}


resource "aws_route_table_association" "desafio2_subnet_rt4" {
  subnet_id      = aws_subnet.projeto2_privada2.id
  route_table_id = aws_route_table.desafio2_rt_privada.id
}
