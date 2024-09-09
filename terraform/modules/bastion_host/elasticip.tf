# Elastic IP
resource "aws_eip" "bastion_eip" {
  depends_on = [module.ec2_public]
  instance   = module.ec2_public.id
  domain     = "vpc"
  tags       = var.common_tags
}

