resource "aws_iam_openid_connect_provider" "eks_identity_provider" {

  url = aws_eks_cluster.cluster.identity[0].oidc[0].issuer

  client_id_list = [
    var.CLIENT_ID
  ]

  thumbprint_list = [
    var.OIDC_THEMPRINT
  ]

  tags = {
    Name = "${var.PROJECT_NAME}"
  }
}
