resource "aws_instance" "bastion" {

  ami = var.BASTION_AMI

  key_name = var.KEY_NAME

  security_groups = ["${var.SECURITY_GROUP}"]

  subnet_id = var.SUBNET_PUBLIC_1

  instance_type = var.BASTION_TYPE

  tags = {
    Name = "${var.PROJECT_NAME}-bastion"
  }
}