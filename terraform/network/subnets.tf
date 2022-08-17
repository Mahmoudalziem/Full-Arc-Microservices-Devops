
// Public Subnet

resource "aws_subnet" "public_subnet_1" {

  vpc_id = aws_vpc.main.id

  cidr_block = var.PUBLIC_1

  map_public_ip_on_launch = true

  availability_zone = var.AZ_A

  tags = {
    Name = "${var.PROJECT_NAME}-public-1"
  }
}

resource "aws_subnet" "public_subnet_2" {

  vpc_id = aws_vpc.main.id

  cidr_block = var.PUBLIC_2

  map_public_ip_on_launch = true

  availability_zone = var.AZ_B

  tags = {
    Name = "${var.PROJECT_NAME}-public-2"
  }
}


// Private Subnet

resource "aws_subnet" "private_subnet_1" {

  vpc_id = aws_vpc.main.id

  map_public_ip_on_launch = true

  cidr_block = var.PRIVATE_1

  availability_zone = var.AZ_C

  tags = {
    Name = "${var.PROJECT_NAME}-private-1"
  }
}

resource "aws_subnet" "private_subnet_2" {

  vpc_id = aws_vpc.main.id

  map_public_ip_on_launch = true

  cidr_block = var.PRIVATE_2

  availability_zone = var.AZ_B

  tags = {
    Name = "${var.PROJECT_NAME}-private-2"
  }
}