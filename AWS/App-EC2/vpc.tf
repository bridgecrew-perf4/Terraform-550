resource "aws_vpc" "vpc-jason" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "VPC-Jason"
  }
}

resource "aws_internet_gateway" "igw-jason" {
  vpc_id = aws_vpc.vpc-jason.id

  tags = {
    Name = "IG-VPC-JASON"
  }
}

resource "aws_eip" "eip-nat-jason" {
  vpc = true

  tags= {
    Name = "EIP-NAT-JASON"
  }
}

resource "aws_nat_gateway" "ngw-jason" {
  allocation_id = aws_eip.eip-nat-jason.id
  subnet_id     = aws_subnet.SubnetPublic.id

  tags = {
    Name = "NAT-GW-JASON"
  }
}