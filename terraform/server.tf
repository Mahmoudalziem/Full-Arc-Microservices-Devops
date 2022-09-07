module "server" {

  source             = "./servers"
  SECURITY_GROUP     = module.network.SECURITY_GROUP
  PROJECT_NAME       = var.PROJECT_NAME
  CLUSTER_AMI        = var.CLUSTER_AMI
  KEY_NAME           = var.KEY_NAME
  SUBNET_PUBLIC_1    = module.network.SUBNET_PUBLIC_1
  SUBNET_PUBLIC_2    = module.network.SUBNET_PUBLIC_2
  SUBNET_PRIVATE_1   = module.network.SUBNET_PRIVATE_1
  SUBNET_PRIVATE_2   = module.network.SUBNET_PRIVATE_2
  INSTANCE_TYPE      = var.INSTANCE_TYPE
  K8S_VERSION        = var.K8S_VERSION
  BASTION_TYPE       = var.BASTION_TYPE
  BASTION_AMI        = var.BASTION_AMI
  DOMAIN_NAME        = var.DOMAIN_NAME
  BASTION_ELASTIC_IP = module.network.BASTION_EIP
}

data "aws_eks_cluster" "cluster" {

  name = module.server.CLUSTER_ID
}

data "aws_eks_cluster_auth" "cluster" {

  name = module.server.CLUSTER_ID
}