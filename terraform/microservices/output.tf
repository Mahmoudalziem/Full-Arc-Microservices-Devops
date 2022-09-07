output "RDS_ENDPOINT" {

  value = aws_rds_cluster.rds.endpoint
}

output "ELASTICCACHE_ENDPOINT" {

  value = aws_elasticache_cluster.elasticcache.configuration_endpoint
}

output "KAFKA_ENDPOINTS" {

  value = aws_msk_cluster.kafka.bootstrap_brokers_tls
}