resource "aws_elasticache_cluster" "elasticcache" {
  cluster_id           = var.PROJECT_NAME
  engine               = var.CACHE_ENGINE
  node_type            = var.CACHE_NODE_TYPE
  num_cache_nodes      = var.CACHE_NODE_NUMBER
  engine_version       = var.CACHE_ENGINE_VERSION
  subnet_group_name    = aws_elasticache_subnet_group.subnet_elasticcache_group.name
  parameter_group_name = var.CACHE_PARAM_NAME
  security_group_ids   = ["${var.SECURITY_GROUP}"]
  port                 = var.CACHE_PORT
}
