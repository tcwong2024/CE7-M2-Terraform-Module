module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  name   = "wtc-vpc-tf-module"
  cidr   = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["10.0.10.0/24", "10.0.11.0/24", "10.0.12.0/24"]
  public_subnets  = ["10.0.51.0/24", "10.0.52.0/24", "10.0.53.0/24"]

  enable_vpn_gateway   = true
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
    Created_by  = "wtc"
    Cohort      = "CE7"
  }
}

module "security_group" {
  source = "./security-group"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source            = "./ec2"
  vpc_id            = module.vpc.vpc_id
  security_group_id = module.security_group.security_group_id
  subnet_id         = element(module.vpc.public_subnets, 0)
}
