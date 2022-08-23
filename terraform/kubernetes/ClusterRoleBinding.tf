resource "kubernetes_cluster_role_binding" "external_dns" {

  metadata {

    name = var.EXTERNAL_NAME

  }

  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = var.EXTERNAL_NAME
  }
  subject {
    kind      = "ServiceAccount"
    name      = var.EXTERNAL_NAME
    namespace = "default"
  }
}
