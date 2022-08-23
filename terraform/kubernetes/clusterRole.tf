resource "kubernetes_cluster_role" "external_dns" {

  metadata {

    name = var.EXTERNAL_NAME

  }

  rule {
    api_groups = [""]
    resources  = ["services", "endpoints", "pods"]
    verbs      = ["get", "watch", "list"]
  }

  rule {
    api_groups = ["extensions", "networking.k8s.io"]
    resources  = ["ingresses"]
    verbs      = ["get", "list", "watch"]
  }

  rule {

    api_groups = [""]

    resources = ["nodes"]

    verbs = ["list", "watch"]
  }
}
