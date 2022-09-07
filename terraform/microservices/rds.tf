resource "aws_db_instance" "rds" {

  identifier             = var.PROJECT_NAME
  db_subnet_group_name   = aws_db_subnet_group.subnet_rds_group.name
  engine                 = var.RDS_ENGINE
  engine_version         = var.RDS_ENGINE_VERSION
  instance_class         = var.RDS_INSTANCE_CLASS
  storage_type           = var.RDS_STROAGE_CLASS
  allocated_storage      = var.RDS_STROAGE
  db_name                = var.RDS_DATABASE_NAME
  username               = var.RDS_DATABASE_USERNAME
  password               = var.RDS_DATABASE_PASSWORD
  vpc_security_group_ids = ["${var.SECURITY_GROUP}"]
  skip_final_snapshot    = true
  multi_az               = false
}