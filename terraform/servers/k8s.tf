resource "aws_eks_cluster" "cluster" {

  name = var.PROJECT_NAME

  role_arn = aws_iam_role.cluster_role.arn

  version = var.K8S_VERSION

  vpc_config {

    security_group_ids = ["${var.SECURITY_GROUP}"]

    subnet_ids = ["${var.SUBNET_PUBLIC_1}", "${var.SUBNET_PUBLIC_2}"]
  }

  depends_on = [
    aws_iam_role_policy_attachment.clutser_role_attach_policy,
    aws_iam_role_policy_attachment.clutser_role_attach_controller
  ]

  tags = {
    Name = "${var.PROJECT_NAME}"
  }
}

resource "aws_eks_node_group" "nodes" {

  cluster_name = aws_eks_cluster.cluster.name

  node_group_name = var.PROJECT_NAME

  node_role_arn = aws_iam_role.node_role.arn

  subnet_ids = ["${var.SUBNET_PRIVATE_1}", "${var.SUBNET_PRIVATE_2}"]

  #   instance_types = ["t2.micro"]

  #   ami_type = "AL2_x86_64"

  launch_template {

    version = "1"

    id = aws_launch_template.launch_template.id
  }

  scaling_config {

    desired_size = 2

    max_size = 4

    min_size = 2

  }

  update_config {

    max_unavailable = 2
  }

  depends_on = [
    aws_iam_role_policy_attachment.clutser_role_attach_worker,
    aws_iam_role_policy_attachment.clutser_role_attach_registry,
    aws_iam_role_policy_attachment.clutser_role_attach_cni,
    aws_iam_role_policy_attachment.clutser_role_attach_instance
  ]
}
