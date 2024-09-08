project = "assignment"
aws_region = "us-east-1"
environment = "prod"
aws_account_id = ""

#############################
#    VPC Vars
#############################
vpc_name                 = "vpc"
vpc_cidr_block           = "172.31.0.0/16"
vpc_public_subnets       = ["172.31.0.0/24", "172.31.32.0/24"]
vpc_private_subnets      = ["172.31.2.0/24", "172.31.3.0/24"]
vpc_protected_subnets    = ["172.31.7.0/24", "172.31.9.0/24"]