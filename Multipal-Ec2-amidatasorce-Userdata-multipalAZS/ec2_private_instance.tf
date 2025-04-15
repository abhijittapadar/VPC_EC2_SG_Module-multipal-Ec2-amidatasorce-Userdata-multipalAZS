module "ec2_Private_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.8.0"
  
   for_each = toset(["0", "1",])

  name = "${var.environment}-instance-${each.key}"
  ami = data.aws_ami.amzlinux2.id
  instance_type          = "t2.micro"
  #key_name               = "user1"
  #monitoring             = true
  vpc_security_group_ids = [module.Private_sg.security_group_id]
  subnet_id              = element(module.vpc.private_subnets, tonumber(each.key))
  user_data = file("${path.module}/app1-install.sh")
  associate_public_ip_address = false
  
  

  tags = local.common_tags
}