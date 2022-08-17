resource "aws_eip" "eip" {

  tags = {
    Name = "${var.PROJECT_NAME}"
  }
}