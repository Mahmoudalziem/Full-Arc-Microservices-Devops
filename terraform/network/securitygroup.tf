resource "aws_security_group" "security_group" {

  vpc_id = aws_vpc.main.id

  tags = {
    Name = "${var.PROJECT_NAME}"
  }
}

/// Port 22 SSH

resource "aws_security_group_rule" "ingress_22" {

  security_group_id = aws_security_group.security_group.id

  cidr_blocks = ["${var.DESTINATION_CIDR_BLOCK}"]

  to_port = 22

  from_port = 22

  protocol = "tcp"

  type = "ingress"
}

resource "aws_security_group_rule" "igress_all" {

  security_group_id = aws_security_group.security_group.id

  cidr_blocks = ["${var.DESTINATION_CIDR_BLOCK}"]

  to_port = 0

  from_port = 0

  protocol = "-1"

  type = "ingress"
}

resource "aws_security_group_rule" "egress_all" {

  security_group_id = aws_security_group.security_group.id

  type = "egress"

  cidr_blocks = ["${var.DESTINATION_CIDR_BLOCK}"]

  to_port = 0

  from_port = 0

  protocol = "-1"

}