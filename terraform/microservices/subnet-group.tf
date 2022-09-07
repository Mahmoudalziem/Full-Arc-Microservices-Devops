resource "aws_db_subnet_group" "subnet_rds_group" {

  name = var.PROJECT_NAME

  subnet_ids = ["${var.SUBNET_PRIVATE_1}", "${var.SUBNET_PRIVATE_2}"]

  tags = {

    Name = "${var.PROJECT_NAME}"

  }
}

resource "aws_elasticache_subnet_group" "subnet_elasticcache_group" {

  name = var.PROJECT_NAME

  subnet_ids = ["${var.SUBNET_PRIVATE_1}", "${var.SUBNET_PRIVATE_2}"]

  tags = {

    Name = "${var.PROJECT_NAME}"

  }
}
