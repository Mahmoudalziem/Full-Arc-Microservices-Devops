resource "aws_rds_cluster" "rds" {

  cluster_identifier        = var.PROJECT_NAME
  db_subnet_group_name      = aws_db_subnet_group.subnet_rds_group.name
  engine                    = var.RDS_ENGINE
  db_cluster_instance_class = var.RDS_INSTANCE_CLASS
  storage_type              = var.RDS_STROAGE_CLASS
  allocated_storage         = var.RDS_STROAGE
  database_name             = var.RDS_DATABASE_NAME
  master_username           = var.RDS_DATABASE_USERNAME
  master_password           = var.RDS_DATABASE_PASSWORD
  vpc_security_group_ids    = ["${var.SECURITY_GROUP}"]

}