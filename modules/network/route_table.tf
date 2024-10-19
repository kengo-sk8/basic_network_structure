resource "aws_route_table" "test_public_route_table" {
  vpc_id = aws_vpc.test_vpc.id

  tags = {
    Name = "test-${var.env}-route-table"
  }
}

resource "aws_route" "test_public_route_table" {
  route_table_id         = aws_route_table.test_public_route_table.id
  gateway_id             = aws_internet_gateway.test_igw.id
  destination_cidr_block = "0.0.0.0/0"
}

resource "aws_route_table_association" "test_public_a" {
  route_table_id = aws_route_table.test_public_route_table.id
  subnet_id      = aws_subnet.test_public_subnet_a.id
}

resource "aws_route_table_association" "test_public_c" {
  route_table_id = aws_route_table.test_public_route_table.id
  subnet_id      = aws_subnet.test_public_subnet_c.id
}


resource "aws_route_table_association" "test_public_d" {
  route_table_id = aws_route_table.test_public_route_table.id
  subnet_id      = aws_subnet.test_public_subnet_d.id
}