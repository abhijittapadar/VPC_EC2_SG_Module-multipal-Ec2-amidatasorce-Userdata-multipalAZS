module "Private_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.3.0"
  name = "Private-sg"
  vpc_id = module.vpc.vpc_id
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
  ingress_rules       = ["ssh-tcp", "http-80-tcp"]
  egress_rules = ["all-all"]
  tags = local.common_tags
}