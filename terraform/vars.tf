# Project Name
variable "project" {
  description = "Name of the Project"
  type        = string
}
# AWS Region
variable "aws_region" {
  description = "Name of the AWS Region"
  type        = string
}
# Environment Name
variable "environment" {
  description = "Name of the AWS Environment"
  type        = string
}
# AWS Account ID
variable "aws_account_id" {
  description = "AWS Account ID"
  type        = string
}

# Local Values in Terraform
locals {
  owners      = var.project
  environment = var.environment
  name        = "${var.project}-${var.environment}"
  common_tags = {
    owners      = local.owners
    environment = local.environment
  }
  eks_cluster_name = "${local.name}-${var.cluster_name}"
}

#############################
#    VPC Input Variables
#############################
# VPC Name
variable "vpc_name" {
  description = "VPC Name"
  type        = string
}
# VPC CIDR Block
variable "vpc_cidr_block" {
  description = "VPC CIDR Block"
  type        = string
}
# VPC Public Subnets
variable "vpc_public_subnets" {
  description = "VPC Public Subnets"
  type        = list(string)
}
# VPC Private Subnets
variable "vpc_private_subnets" {
  description = "VPC Private Subnets"
  type        = list(string)
}
# VPC Database Subnets
variable "vpc_protected_subnets" {
  description = "VPC Database Subnets"
  type        = list(string)
}