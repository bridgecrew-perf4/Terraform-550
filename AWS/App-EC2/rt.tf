resource "aws_route_table" "rtpublic" {
  vpc_id = aws_vpc.vpc-jason.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw-jason.id
  }

  tags = {
    Name = "RT-Public"
  }
}

resource "aws_route_table_association" "assocrtpublic" {
  subnet_id      = aws_subnet.subnetpublic.id
  route_table_id = aws_route_table.rtpublic.id
}
