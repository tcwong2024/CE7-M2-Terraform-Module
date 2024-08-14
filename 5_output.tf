output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_id" {
  value = module.vpc.vpc_arn
}

output "ec2-subnet-use" {
  value = element(module.vpc.public_subnets, 0)
}

