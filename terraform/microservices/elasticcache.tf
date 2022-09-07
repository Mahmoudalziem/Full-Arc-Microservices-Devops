resource "aws_elasticache_replication_group" "elasticcache" {
  automatic_failover_enabled = true
  engine                     = var.CACHE_ENGINE
  node_type                  = var.CACHE_NODE_TYPE
  num_cache_clusters         = var.CACHE_NODE_NUMBER
  replication_group_id       = var.PROJECT_NAME
  description                = "RedisCache-${var.PROJECT_NAME}"
  engine_version             = var.CACHE_ENGINE_VERSION
  subnet_group_name          = aws_elasticache_subnet_group.subnet_elasticcache_group.name
  parameter_group_name       = var.CACHE_PARAM_NAME
  security_group_ids         = ["${var.SECURITY_GROUP}"]
  port                       = var.CACHE_PORT
  apply_immediately          = true

}

# resource "aws_elasticache_cluster" "elasticcache" {
#   cluster_id = var.PROJECT_NAME
#   # count                = 1
#   replication_group_id = aws_elasticache_replication_group.replaction_redis.id
# }