resource "aws_network_acl" "naclpublic" {
  vpc_id = aws_vpc.vpc-jason.id
  subnet_ids = ["${aws_subnet.subnetpublic.id}"]

  egress {
    protocol   = "tcp"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 8080
    to_port    = 8080
  }

  ingress {
    protocol   = "tcp"
    rule_no    = 101
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 443
    to_port    = 443
  }

   ingress {
    protocol   = "tcp"
    rule_no    = 99
    action     = "allow"
    cidr_block = "10.0.3.0/24"
    from_port  = 22
    to_port    = 22
  }

  tags = {
    Name = "NACL-PUBLIC"
  }
}

resource "aws_network_acl" "naclprivate" {
  vpc_id = aws_vpc.vpc-jason.id
  subnet_ids = ["${aws_subnet.subnetprivate.id}"]

  egress {
    protocol   = "tcp"
    rule_no    = 100
    action     = "allow"
    cidr_block = "10.0.1.0/24"
    from_port  = 3306
    to_port    = 3306
  }

  ingress {
    protocol   = "tcp"
    rule_no    = 100
    action     = "allow"
    cidr_block = "10.0.1.0/24"
    from_port  = 3306
    to_port    = 3306
  }

  ingress {
    protocol   = "tcp"
    rule_no    = 99
    action     = "allow"
    cidr_block = "10.0.3.0/24"
    from_port  = 22
    to_port    = 22
  }

  tags = {
    Name = "NACL-PPRIVATE"
  }
}

resource "aws_network_acl" "naclmgmt" {
  vpc_id = aws_vpc.vpc-jason.id
  subnet_ids = ["${aws_subnet.subnetmgmt.id}"]

  ingress {
    protocol   = "tcp"
    rule_no    = 99
    action     = "allow"
    cidr_block = "191.251.174.30/32"
    from_port  = 22
    to_port    = 22
  }

  tags = {
    Name = "NACL-MGMT"
  }
}