module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.19.0"
  name = var.vpc_name
  cidr = var.vpc_cidr_block
  azs = var.vpc_availability_zones
  private_subnets = var.vpc_private_subnets
  public_subnets = var.vpc_public_subnets
  enable_dns_hostnames = true
  enable_dns_support = true
  
}