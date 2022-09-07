resource "aws_instance" "bastion" {

  ami = var.BASTION_AMI

  key_name = var.KEY_NAME

  vpc_security_group_ids = ["${var.SECURITY_GROUP}"]

  subnet_id = var.SUBNET_PUBLIC_1

  instance_type = var.BASTION_TYPE

  tags = {
    Name = "${var.PROJECT_NAME}-bastion"
  }
}


resource "aws_eip_association" "bastion_assoc_eip" {

  instance_id   = aws_instance.bastion.id

  allocation_id = var.BASTION_ELASTIC_IP

}