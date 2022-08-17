resource "aws_eks_addon" "vpc-cni" {

  cluster_name = aws_eks_cluster.cluster.name

  addon_name   = "vpc-cni"
}

resource "aws_eks_addon" "core-dns" {

  cluster_name      = aws_eks_cluster.cluster.name

  addon_name        = "coredns"

  addon_version     = var.eks_addon_version_core_dns

  resolve_conflicts = "OVERWRITE"

  depends_on = [
    aws_eks_node_group.nodes
  ]

  tags = {
      "eks_addon" = "coredns"
    }
}

resource "aws_eks_addon" "kube-proxy" {

  cluster_name = aws_eks_cluster.cluster.name

  addon_name   = "kube-proxy"
}
