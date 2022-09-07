resource "aws_msk_cluster" "kafka" {

  cluster_name = var.PROJECT_NAME

  kafka_version = var.KAFKA_VERSION

  number_of_broker_nodes = 2

  broker_node_group_info {

    instance_type = var.KAFKA_INSTANCE_TYPE

    client_subnets = [
      "${var.SUBNET_PRIVATE_1}", "${var.SUBNET_PRIVATE_2}"
    ]

    storage_info {

      ebs_storage_info {

        volume_size = var.KAFKA_NODE_STORAGE
      }

    }

    security_groups = ["${var.SECURITY_GROUP}"]
  }

  tags = {

    Name = "${var.PROJECT_NAME}"

  }
}