provider "aws" {
  region = "us-east-2"
}

provider "kubernetes" {
  # host                   = data.aws_eks_cluster.cluster.endpoint
  # token                  = data.aws_eks_cluster_auth.cluster.token
  # cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
  #  config_path    = "~/.kube/config"
  #  config_context = "my-context"
}