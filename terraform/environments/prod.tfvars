project = "assignment"
aws_region = "us-east-1"
environment = "production"
aws_account_id = ""

#############################
#    VPC Vars
#############################
vpc_name                 = "vpc"
vpc_cidr_block           = "172.31.0.0/16"
vpc_public_subnets       = ["172.31.0.0/24", "172.31.32.0/24"]
vpc_private_subnets      = ["172.31.2.0/24", "172.31.3.0/24"]
vpc_protected_subnets    = ["172.31.7.0/24", "172.31.9.0/24"]

#############################
#    Bastion Host Vars
#############################
instance_type    = "t2.small"
instance_keypair = "bastion-host-key"

#############################
#    EKS Cluster Vars
#############################
cluster_name                    = "eks"
cluster_service_ipv4_cidr       = "172.20.0.0/16"
cluster_version                 = "1.29"
cluster_endpoint_private_access = true
ng_instance_type                = ["t3.medium"]
ng_ami_type                     = "AL2_x86_64"
ng_disk_size                    = 20
scaling_desired_size            = 1
scaling_min_size                = 1
scaling_max_size                = 2
aws_ecr_repository              = "web-app"
repository_name                 = "nouman66/*"
github_access_role_name         = "GitHub_Access_CICD_Role"
cluster_admin_user_arn          = ""