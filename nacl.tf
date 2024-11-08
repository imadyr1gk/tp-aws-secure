resource "aws_network_acl" "groupe5-src1-nacl" {
  vpc_id = aws_vpc.group5-src1_vpc.id

  egress {
    protocol   = "tcp"
    rule_no    = 200
    action     = "allow"
    cidr_block = var.vpc_cidr
    from_port  = 443
    to_port    = 443
  }

  ingress {
    protocol   = "tcp"
    rule_no    = 100
    action     = "allow"
    cidr_block = var.vpc_cidr
    from_port  = 80
    to_port    = 80
  }


  egress {
    protocol   = "tcp"
    rule_no    = 250
    action     = "allow"
    cidr_block = var.vpc_cidr
    from_port  = 22
    to_port    = 22
  }

  ingress {
    protocol   = "tcp"
    rule_no    = 150
    action     = "allow"
    cidr_block = var.vpc_cidr
    from_port  = 22
    to_port    = 22
  }

  tags = {
    Name = "groupe5-src1-nacl"
  }
}

#Nacl Association

resource "aws_network_acl_association" "main" {
  network_acl_id = aws_network_acl.groupe5-src1-nacl.id
  subnet_id      = aws_subnet.subnet_pub1.id
}
