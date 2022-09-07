resource "aws_eip" "eip" {

  tags = {
    Name = "${var.PROJECT_NAME}"
  }
}
resource "aws_eip" "eip_bastion" {

  tags = {
    Name = "bastion-${var.PROJECT_NAME}"
  }
}