terraform {
  backend "s3" {
    bucket = "terraform-state-prod1234"
    key    = "dev/terraform.tfstate"
    region = "us-east-2"
  }
}