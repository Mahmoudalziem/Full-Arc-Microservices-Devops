module "microservice" {
  source           = "./microservices"
  PROJECT_NAME     = var.PROJECT_NAME
  SUBNET_PRIVATE_1 = module.network.SUBNET_PRIVATE_1
  SUBNET_PRIVATE_2 = module.network.SUBNET_PRIVATE_2
  SECURITY_GROUP   = module.network.SECURITY_GROUP

  KAFKA_VERSION = var.KAFKA_VERSION

  KAFKA_INSTANCE_TYPE = var.KAFKA_INSTANCE_TYPE

  KAFKA_NODE_STORAGE = var.KAFKA_NODE_STORAGE

  CACHE_ENGINE = var.CACHE_ENGINE

  CACHE_NODE_TYPE = var.CACHE_NODE_TYPE

  CACHE_NODE_NUMBER = var.CACHE_NODE_NUMBER

  CACHE_ENGINE_VERSION = var.CACHE_ENGINE_VERSION

  CACHE_PARAM_NAME = var.CACHE_PARAM_NAME

  CACHE_PORT = var.CACHE_PORT

  RDS_ENGINE = var.RDS_ENGINE

  RDS_INSTANCE_CLASS = var.RDS_INSTANCE_CLASS

  RDS_STROAGE_CLASS = var.RDS_STROAGE_CLASS

  RDS_STROAGE = var.RDS_STROAGE

  RDS_DATABASE_NAME = var.RDS_DATABASE_NAME

  RDS_DATABASE_USERNAME = var.RDS_DATABASE_USERNAME

  RDS_DATABASE_PASSWORD = var.RDS_DATABASE_PASSWORD

}
