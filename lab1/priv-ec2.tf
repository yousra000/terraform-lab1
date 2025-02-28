resource "aws_instance" "application" {
  ami           = "ami-05b10e08d247fb927"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.private_subnet.id
  security_groups = [aws_security_group.sg_vpc_cidr_only.id] 

  associate_public_ip_address = false

  tags = {
    Name = "Application Instance"
  }


}
