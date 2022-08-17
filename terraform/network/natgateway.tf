resource "aws_nat_gateway" "nat_gateway" {

  allocation_id = aws_eip.eip.id

  subnet_id = aws_subnet.public_subnet_1.id

  tags = {
    Name = "${var.PROJECT_NAME}"
  }
}