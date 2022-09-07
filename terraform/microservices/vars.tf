variable "PROJECT_NAME" {

  type = string
}

variable "SECURITY_GROUP" {

  type = string
}

variable "SUBNET_PRIVATE_1" {

  type = string
}

variable "SUBNET_PRIVATE_2" {

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
