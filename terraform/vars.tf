variable "VPC_CIDR_BLOCK" {

  type = string
}

variable "PROJECT_NAME" {

  type = string
}

variable "PUBLIC_1" {

  type = string
}

variable "PUBLIC_2" {

  type = string
}


variable "PRIVATE_1" {

  type = string
}

variable "PRIVATE_2" {

  type = string
}

variable "AZ_A" {

  type = string
}

variable "AZ_B" {

  type = string
}

variable "AZ_C" {

  type = string
}

variable "DESTINATION_CIDR_BLOCK" {

  type = string
}


variable "CLUSTER_AMI" {

  type = string
}

variable "KEY_NAME" {

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

variable "EXTERNAL_IMAGE" {

  type = string
}

variable "EXTERNAL_NAME" {

  type = string
}


variable "KAFKA_VERSION" {

  type = string

  default = "2.6.2"
}

variable "KAFKA_INSTANCE_TYPE" {

  type = string
}

variable "KAFKA_NODE_STORAGE" {

  type = number
}

variable "CACHE_ENGINE" {

  type = string
}

variable "CACHE_NODE_TYPE" {

  type = string
}

variable "CACHE_NODE_NUMBER" {

  type = number

  default = 2
}

variable "CACHE_ENGINE_VERSION" {

  type = string
}

variable "CACHE_PARAM_NAME" {

  type = string
}

variable "CACHE_PORT" {

  type = number
}

variable "RDS_ENGINE" {

  type = string
}

variable "RDS_ENGINE_VERSION" {

  type = string
}

variable "RDS_INSTANCE_CLASS" {

  type = string
}

variable "RDS_STROAGE_CLASS" {

  type = string
}

variable "RDS_STROAGE" {

  type = number
}

variable "RDS_DATABASE_NAME" {

  type = string
}

variable "RDS_DATABASE_USERNAME" {

  type = string
}

variable "RDS_DATABASE_PASSWORD" {

  type = string
}
