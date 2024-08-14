variable "s3bucketname" {
  description = "The name of the S3 bucket created"
  type        = string
  default     = "wtc-tf-module-bucket"
}

variable "env" {
  description = "The env of the S3 bucket"
  type        = string
  default     = "dev"
}

variable "department" {
  description = "The Department of the S3 bucket owner"
  type        = string
  default     = "DevOps"
}

variable "vpc_name" {
  description = "The VPC Name to use"
  type        = string
  default     = "wtc-tf-module-vpc"
}

variable "subnet_name" {
  description = "The Subnet Name to use"
  type        = string
  default     = "wtc-tf-module-public-subnet-az1"
}

variable "sg_name" {
  description = "The SG Name to create SG with"
  type        = string
  default     = "wtc-sg-allow-http-https-ssh-from-anywhere-tf-module"
}

variable "ami_id" {
  description = "AMI ID"
  type        = string
  default     = "ami-0427090fd1714168b"
}

variable "ec2_name" {
  description = "Name of EC2"
  type        = string
  default     = "wtc-ec2-module-from-tf" # Replace with your preferred EC2 Instance Name 
}

variable "instance_type" {
  description = "EC2 Instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of EC2 Key Pair"
  type        = string
  default     = "wtc-keypair-useast1" # Replace with your own key pair name (without .pem extension) that you have downloaded from AWS console previously
}
