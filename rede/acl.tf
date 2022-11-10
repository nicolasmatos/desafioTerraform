resource "aws_network_acl" "acl_pub" {
  vpc_id = aws_vpc.vpc.id
  subnet_ids = [ 
    aws_subnet.pub1.id, 
    aws_subnet.pub2.id, 
    aws_subnet.pub3.id, 
    aws_subnet.pub4.id, 
    aws_subnet.pub5.id, 
    aws_subnet.pub6.id 
  ]

  ingress {
    protocol   = -1
    rule_no    = 101
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  egress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }
}

resource "aws_network_acl" "acl_priv" {
  vpc_id = aws_vpc.vpc.id
  subnet_ids = [ 
    aws_subnet.priv1.id, 
    aws_subnet.priv2.id, 
    aws_subnet.priv3.id, 
    aws_subnet.priv4.id, 
    aws_subnet.priv5.id, 
    aws_subnet.priv6.id 
  ]

  ingress {
    protocol   = -1
    rule_no    = 101
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  egress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }
}