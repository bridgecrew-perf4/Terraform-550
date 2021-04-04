resource "aws_subnet" "subnetpublic" {
  vpc_id     = aws_vpc.vpc-jason.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "SubnetPublic"
  }
}

resource "aws_subnet" "subnetprivate" {
  vpc_id     = aws_vpc.vpc-jason.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "SubnetPrivate"
  }
}

resource "aws_subnet" "subnetmgmt" {
  vpc_id     = aws_vpc.vpc-jason.id
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "SubnetMgmt"
  }
}
