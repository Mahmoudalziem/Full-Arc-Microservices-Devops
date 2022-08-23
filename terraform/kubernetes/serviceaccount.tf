resource "kubernetes_service_account" "external_dns" {

  metadata {

    name = var.EXTERNAL_NAME

    annotations = {

        "eks.amazonaws.com/role-arn" = "${var.EXTERNAL_DNS-ROLE}"
    }

  }
}
