output "BASTION_IP" {

  value = module.server.BASTION_IP
}

output "NAMESERVERS" {

  value = module.server.NAMESERVERS
}

output "RDS_ENDPOINT" {

  value = module.microservice.RDS_ENDPOINT
}

output "ELASTICCACHE_ENDPOINT" {

  value = module.microservice.ELASTICCACHE_ENDPOINT
}

output "KAFKA_ENDPOINTS" {

  value = module.microservice.KAFKA_ENDPOINTS
}