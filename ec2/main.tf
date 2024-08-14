resource "aws_instance" "wtc-ec2-tf-module" {
  ami                         = "ami-0ae8f15ae66fe8cda" # Use an appropriate AMI ID for your region
  instance_type               = "t2.micro"
  subnet_id                   = var.subnet_id
  key_name                    = var.key_name
  security_groups             = [var.security_group_id]
  associate_public_ip_address = true

  tags = {
    Name = "wtc-ec2-tf-module"
  }
}
