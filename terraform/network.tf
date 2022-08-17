module "network" {
  source                 = "./network"
  DESTINATION_CIDR_BLOCK = var.DESTINATION_CIDR_BLOCK
  VPC_CIDR_BLOCK         = var.VPC_CIDR_BLOCK
  PROJECT_NAME           = var.PROJECT_NAME
  PUBLIC_1               = var.PUBLIC_1
  PUBLIC_2               = var.PUBLIC_2
  PRIVATE_1              = var.PRIVATE_1
  PRIVATE_2              = var.PRIVATE_2
  AZ_A                   = var.AZ_A
  AZ_B                   = var.AZ_B
  AZ_C                   = var.AZ_C
}