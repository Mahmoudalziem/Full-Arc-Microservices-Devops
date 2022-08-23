output "VPC_ID" {

  value = aws_vpc.main.id
}

output "SUBNET_PUBLIC_1" {

  value = aws_subnet.public_subnet_1.id
}

output "SUBNET_PUBLIC_2" {

  value = aws_subnet.public_subnet_2.id
}


output "SUBNET_PRIVATE_1" {

  value = aws_subnet.private_subnet_1.id
}

output "SUBNET_PRIVATE_2" {

  value = aws_subnet.private_subnet_2.id
}

output "SECURITY_GROUP" {

  value = aws_security_group.security_group.id

}