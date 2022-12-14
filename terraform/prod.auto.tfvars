DESTINATION_CIDR_BLOCK = "0.0.0.0/0"
VPC_CIDR_BLOCK         = "10.0.0.0/16"
PROJECT_NAME           = "shopping"
PUBLIC_1               = "10.0.1.0/24"
PUBLIC_2               = "10.0.2.0/24"
PRIVATE_1              = "10.0.3.0/24"
PRIVATE_2              = "10.0.4.0/24"
AZ_A                   = "us-east-2a"
AZ_B                   = "us-east-2b"
AZ_C                   = "us-east-2c"
CLUSTER_AMI            = "ami-00b5dbd351e651f49"
KEY_NAME               = "test"
INSTANCE_TYPE          = "t2.large"
BASTION_TYPE           = "t2.micro"
K8S_VERSION            = "1.22"
BASTION_AMI            = "ami-02f3416038bdb17fb"
DOMAIN_NAME            = "azima.website"
EXTERNAL_IMAGE         = "k8s.gcr.io/external-dns/external-dns:v0.12.0"
EXTERNAL_NAME          = "external-dns"
KAFKA_VERSION          = "2.6.2"
KAFKA_INSTANCE_TYPE    = "kafka.t3.small"
KAFKA_NODE_STORAGE     = 8
CACHE_ENGINE           = "redis"
CACHE_NODE_TYPE        = "cache.t2.micro"
CACHE_NODE_NUMBER      = 2
CACHE_ENGINE_VERSION   = "6.2"
CACHE_PARAM_NAME       = "default.redis6.x"
CACHE_PORT             = 6379
RDS_ENGINE             = "mysql"
RDS_INSTANCE_CLASS     = "db.t2.micro"
RDS_STROAGE_CLASS      = "gp2"
RDS_STROAGE            = 8
RDS_DATABASE_NAME      = "shopping"
RDS_DATABASE_USERNAME  = "admin"
RDS_DATABASE_PASSWORD  = "azima1234"
RDS_ENGINE_VERSION     = "8.0.28"