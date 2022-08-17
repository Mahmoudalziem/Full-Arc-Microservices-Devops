
/// IAM Cluser Role

resource "aws_iam_role" "cluster_role" {

  name = "eksClusterRole"

  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Principal" : {
          "Service" : [
            "eks.amazonaws.com"
          ]
        },
        "Action" : "sts:AssumeRole"
      }
    ]
  })

  tags = {
    Name = "${var.PROJECT_NAME}"
  }
}

resource "aws_iam_role_policy_attachment" "clutser_role_attach_policy" {

  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"

  role = aws_iam_role.cluster_role.name
}

resource "aws_iam_role_policy_attachment" "clutser_role_attach_controller" {

  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"

  role = aws_iam_role.cluster_role.name
}

resource "aws_iam_role_policy" "PolicyELBPermissions" {

  name = "cluster-PolicyELBPermissions"

  role = aws_iam_role.cluster_role.name

  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Action" : [
          "ec2:DescribeAccountAttributes",
          "ec2:DescribeAddresses",
          "ec2:DescribeInternetGateways"
        ],
        "Resource" : "*",
        "Effect" : "Allow"
      }
    ]
  })
}

resource "aws_iam_role_policy" "PolicyCloudWatchMetrics" {

  name = "cluster-PolicyCloudWatchMetrics"

  role = aws_iam_role.cluster_role.name

  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Action" : [
          "cloudwatch:PutMetricData"
        ],
        "Resource" : "*",
        "Effect" : "Allow"
      }
    ]
  })
}

/// IAM Node Role

resource "aws_iam_role" "node_role" {

  name = "AmazonEKSNodeRole"

  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Principal" : {
          "Service" : "ec2.amazonaws.com"
        },
        "Action" : "sts:AssumeRole"
      }
    ]
  })

  tags = {
    Name = "${var.PROJECT_NAME}"
  }
}


resource "aws_iam_role_policy_attachment" "clutser_role_attach_worker" {

  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"

  role = aws_iam_role.node_role.name
}


resource "aws_iam_role_policy_attachment" "clutser_role_attach_registry" {

  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"

  role = aws_iam_role.node_role.name
}


resource "aws_iam_role_policy_attachment" "clutser_role_attach_cni" {

  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"

  role = aws_iam_role.node_role.name
}

resource "aws_iam_role_policy_attachment" "clutser_role_attach_instance" {

  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"

  role = aws_iam_role.node_role.name
}
