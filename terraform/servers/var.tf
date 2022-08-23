
variable "PROJECT_NAME" {

  type = string
}

variable "CLUSTER_AMI" {

  type = string
}

variable "KEY_NAME" {

  type = string
}

variable "SECURITY_GROUP" {

  type = string
}

variable "SUBNET_PUBLIC_1" {

  type = string
}

variable "SUBNET_PUBLIC_2" {

  type = string
}



variable "SUBNET_PRIVATE_1" {

  type = string
}

variable "SUBNET_PRIVATE_2" {

  type = string
}


variable "INSTANCE_TYPE" {

  type = string
}

variable "BASTION_TYPE" {

  type = string
}

variable "K8S_VERSION" {

  type = string
}

variable "BASTION_AMI" {

  type = string
}

variable "DOMAIN_NAME" {

  type = string
}

variable "eks_addon_version_core_dns" {
  type        = string
  default     = "v1.8.7-eksbuild.1"
}

variable "eks_addon_version_csi_driver" {
  type        = string
  default     = "v1.10.0-eksbuild.1"
}

variable "CLIENT_ID"{

  type = string

  default = "sts.amazonaws.com"
}