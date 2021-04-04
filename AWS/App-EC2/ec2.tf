resource "aws_instance" "webserver1" {
  ami                     = var.nome-ami
  instance_type           = var.size-ec2
  subnet_id               = aws_subnet.subnetpublic.id
  security_groups         = ["${aws_security_group.sgwebserver.id}"]
    
  tags = {
    Name = "Webserver"
  }
}

resource "aws_instance" "DBserver" {
  ami                     = var.nome-ami
  instance_type           = var.size-ec2
  subnet_id               = aws_subnet.subnetprivate.id
  security_groups         = ["${aws_security_group.sgdbserver.id}"]
    
  tags = {
    Name = "DBserver"
  }
}

resource "aws_instance" "BastionServer" {
  ami                     = var.nome-ami
  instance_type           = var.size-ec2
  subnet_id               = aws_subnet.subnetmgmt.id
  security_groups         = ["${aws_security_group.sgmgmt.id}"]

  tags = {
    Name = "BastionServer"
  }
}


