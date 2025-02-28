resource "aws_instance" "bastion" {
  ami           = "ami-05b10e08d247fb927"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id 
  security_groups = [aws_security_group.sg_ssh_open.id]  

  associate_public_ip_address = true

  tags = {
    Name = "Bastion Host"
  }


}