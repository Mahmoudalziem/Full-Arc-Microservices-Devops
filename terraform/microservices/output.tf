output "RDS_ENDPOINT" {

  value = aws_db_instance.rds.endpoint
}

output "ELASTICCACHE_ENDPOINT" {

  value = aws_elasticache_replication_group.elasticcache.primary_endpoint_address
}

output "KAFKA_ENDPOINTS" {

  value = aws_msk_cluster.kafka.bootstrap_brokers_tls
}