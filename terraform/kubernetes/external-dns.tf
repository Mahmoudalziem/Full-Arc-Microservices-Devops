resource "kubernetes_deployment" "external_dns" {

  metadata {

    name = var.EXTERNAL_NAME

    annotations = {

      "author" = "Mahmoud Abd Alziem"
    }
  }

  spec {

    replicas = 1

    strategy {

      type = "Recreate"
    }

    selector {

      match_labels = {

        app = var.EXTERNAL_NAME

      }
    }

    template {

      metadata {

        labels = {

          app = var.EXTERNAL_NAME
        }
      }

      spec {

        container {

          image = var.EXTERNAL_IMAGE

          name = var.EXTERNAL_NAME

          args = [
            "--source=service",
            "--source=ingress",
            "--domain-filter=${var.DOMAIN_NAME}",
            "--provider=aws",
            "--policy=upsert-only",
            "--aws-zone-type=public",
            "--registry=txt",
            "--txt-owner-id=${var.TXT_ID}"
          ]
        }

        security_context {

          fs_group = 65534
        }

        service_account_name = kubernetes_service_account.external_dns.metadata.0.name
      }
    }
  }
}
