resource "aws_launch_template" "launch_template" {

  name = "node"

  block_device_mappings {

    device_name = "/dev/xvda"

    ebs {
      volume_size = 20

      volume_type = "gp2"
    }
  }

  image_id = var.CLUSTER_AMI

  instance_type = var.INSTANCE_TYPE

  # key_name = var.KEY_NAME

  vpc_security_group_ids = ["${var.SECURITY_GROUP}"]

  user_data = base64encode(templatefile("${path.module}/templates/user_data.tpl", { cluster_auth_base64 = aws_eks_cluster.cluster.certificate_authority[0].data, cluster_endpoint = aws_eks_cluster.cluster.endpoint, cluster_name = aws_eks_cluster.cluster.id, nodegroup-image = var.CLUSTER_AMI, nodegroup_name = var.PROJECT_NAME, max_pods = "40" }))

  tag_specifications {

    resource_type = "instance"

    tags = {
      Name = "${var.PROJECT_NAME}"
    }
  }

}

# key_name = var.ec2_key_enabled ? aws_key_pair.generated_key[0].key_name : null

# resource "tls_private_key" "algorithm" {
#   count     = var.ec2_key_enabled ? 1 : 0
#   algorithm = "RSA"
#   rsa_bits  = 4096
# }

# resource "aws_key_pair" "generated_key" {
#   count      = var.ec2_key_enabled ? 1 : 0
#   key_name   = "${var.name}-key"
#   public_key = tls_private_key.algorithm[0].public_key_openssh
# }