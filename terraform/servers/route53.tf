resource "aws_route53_zone" "route53" {

  name = "${var.DOMAIN_NAME}"

  tags = {
    Enviroment = "${var.PROJECT_NAME}"
  }
}