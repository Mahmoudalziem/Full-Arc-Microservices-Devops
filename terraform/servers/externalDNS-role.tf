
/// IAM External DNS Role

data "aws_iam_policy_document" "external_assume_role_policy" {
  statement {
    actions = ["sts:AssumeRoleWithWebIdentity"]
    effect  = "Allow"

    condition {
      test     = "StringEquals"
      variable = "${replace(aws_iam_openid_connect_provider.eks_identity_provider.url, "https://", "")}:sub"
      values   = ["system:serviceaccount:default:external-dns"]
    }

    principals {
      identifiers = [aws_iam_openid_connect_provider.eks_identity_provider.arn]
      type        = "Federated"
    }
  }
}

resource "aws_iam_role" "external_role" {

  name = "eksExternalRole"

  assume_role_policy = data.aws_iam_policy_document.external_assume_role_policy.json

  tags = {
    Name = "${var.PROJECT_NAME}"
  }
}


resource "aws_iam_role_policy" "eks_route53_policy" {

  name = "eksRoute53Policy"

  role = aws_iam_role.external_role.name

  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Action" : [
          "route53:ChangeResourceRecordSets"
        ],
        "Resource" : [
          "arn:aws:route53:::hostedzone/*"
        ]
      },
      {
        "Effect" : "Allow",
        "Action" : [
          "route53:ListHostedZones",
          "route53:ListResourceRecordSets"
        ],
        "Resource" : [
          "*"
        ]
      }
    ]
  })
}
