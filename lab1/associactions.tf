#Associate Public Route Table to Public Subnet
resource "aws_route_table_association" "public-association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.pub_route.id
}

# Associate Private Route Table to Private Subnet
resource "aws_route_table_association" "priv-association" {
  subnet_id      = aws_subnet.private_subnet.id
  route_table_id = aws_route_table.priv_route.id
}
