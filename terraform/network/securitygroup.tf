resource "aws_security_group" "security_group" {

  vpc_id = aws_vpc.main.id

  tags = {
    Name = "${var.PROJECT_NAME}"
  }
}


/// Port 80 HTTP

resource "aws_security_group_rule" "ingress_80" {

  type = "ingress"

  from_port = 80

  to_port = 80

  cidr_blocks = ["${var.DESTINATION_CIDR_BLOCK}"]

  protocol = "tcp"

  security_group_id = aws_security_group.security_group.id
}

/// Port 8080 JENKINS

resource "aws_security_group_rule" "ingress_8080" {

  security_group_id = aws_security_group.security_group.id

  cidr_blocks = ["${var.DESTINATION_CIDR_BLOCK}"]

  to_port = 8080

  from_port = 8080

  protocol = "tcp"

  type = "ingress"
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

resource "aws_security_group_rule" "ingress_3000" {

  security_group_id = aws_security_group.security_group.id

  cidr_blocks = ["${var.DESTINATION_CIDR_BLOCK}"]

  to_port = 3000

  from_port = 3000

  protocol = "tcp"

  type = "ingress"
}


resource "aws_security_group_rule" "ingress_9000" {

  security_group_id = aws_security_group.security_group.id

  cidr_blocks = ["${var.DESTINATION_CIDR_BLOCK}"]

  to_port = 9000

  from_port = 9000

  protocol = "tcp"

  type = "ingress"
}

resource "aws_security_group_rule" "ingress_5000" {

  security_group_id = aws_security_group.security_group.id

  cidr_blocks = ["${var.DESTINATION_CIDR_BLOCK}"]

  to_port = 5000

  from_port = 5000

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