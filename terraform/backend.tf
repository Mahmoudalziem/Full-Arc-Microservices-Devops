terraform {
  backend "s3" {
    bucket = "eks-test1234"
    key    = "dev/terraform.tfstate"
    region = "us-east-2"
  }
}