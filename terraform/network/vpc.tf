resource "aws_vpc" "main" {

  cidr_block = var.VPC_CIDR_BLOCK

  enable_dns_support = true

  enable_dns_hostnames = true

  tags = {
    Name = "${var.PROJECT_NAME}"
  }
}