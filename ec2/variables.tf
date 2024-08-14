output "instance_id" {
  value = aws_instance.wtc-ec2-tf-module.id
}

variable "vpc_id" {
  description = "The VPC ID to create the security group in"
  type        = string
}

variable "security_group_id" {
  description = "The security group ID to associate with the instance"
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID to launch the instance in"
  type        = string
}

variable "key_name" {
  description = "Name of EC2 Key Pair"
  type        = string
  default     = "wtc-keypair-useast1"
}
