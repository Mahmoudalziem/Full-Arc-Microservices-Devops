# output "BASTION_IP" {

#   value = aws_instance.bastion.public_ip
# }

output "NAMESERVERS" {

  value = aws_route53_zone.route53.name_servers
}

output "EXTERNAL_DNS-ROLE" {

  value = aws_iam_role.external_role.arn
}