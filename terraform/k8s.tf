module "k8s" {

  source            = "./kubernetes"
  EXTERNAL_DNS-ROLE = module.server.EXTERNAL_DNS-ROLE
  DOMAIN_NAME       = var.DOMAIN_NAME
  TXT_ID            = module.server.TXT_ID
  EXTERNAL_IMAGE    = var.EXTERNAL_IMAGE
  EXTERNAL_NAME     = var.EXTERNAL_NAME
}
