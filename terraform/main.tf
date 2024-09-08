
module "vpc" {
  source                                 = "./modules/vpc"
  vpc_name                               = var.vpc_name
  aws_region                             = var.aws_region
  vpc_cidr_block                         = var.vpc_cidr_block
  vpc_public_subnets                     = var.vpc_public_subnets
  vpc_private_subnets                    = var.vpc_private_subnets
  vpc_protected_subnets                  = var.vpc_protected_subnets
  common_tags                            = local.common_tags
  eks_cluster_name                       = local.eks_cluster_name
}