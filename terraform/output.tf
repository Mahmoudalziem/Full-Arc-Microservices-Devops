# output "BASTION_IP" {

#   value = module.k8s.BASTION_IP
# }

output "NAMESERVERS" {

  value = module.server.NAMESERVERS
}

output "EXTERNAL_DNS-ROLE" {

  value = module.server.EXTERNAL_DNS-ROLE
}