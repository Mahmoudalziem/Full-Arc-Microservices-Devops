// Serve Public Route

resource "aws_route_table" "route_table_public" {

  vpc_id = aws_vpc.main.id

  tags = {
    Name = "${var.PROJECT_NAME}-public"
  }
}

resource "aws_route" "route_public" {

  route_table_id = aws_route_table.route_table_public.id

  destination_cidr_block = var.DESTINATION_CIDR_BLOCK

  gateway_id = aws_internet_gateway.igw.id

}

resource "aws_route_table_association" "ass_subnet_public_1" {

  route_table_id = aws_route_table.route_table_public.id

  subnet_id = aws_subnet.public_subnet_1.id

}

resource "aws_route_table_association" "ass_subnet_public_2" {

  route_table_id = aws_route_table.route_table_public.id

  subnet_id = aws_subnet.public_subnet_2.id

}
// Servce Private Route

resource "aws_route_table" "route_table_private" {

  vpc_id = aws_vpc.main.id

  tags = {
    Name = "${var.PROJECT_NAME}-private"
  }
}

resource "aws_route" "route_private" {

  route_table_id = aws_route_table.route_table_private.id

  destination_cidr_block = var.DESTINATION_CIDR_BLOCK

  nat_gateway_id = aws_nat_gateway.nat_gateway.id
}


resource "aws_route_table_association" "ass_subnet_private_1" {

  route_table_id = aws_route_table.route_table_private.id

  subnet_id = aws_subnet.private_subnet_1.id

}


resource "aws_route_table_association" "ass_subnet_private_2" {

  route_table_id = aws_route_table.route_table_private.id

  subnet_id = aws_subnet.private_subnet_2.id

}