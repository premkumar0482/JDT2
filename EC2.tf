provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "instance1" {
  instance_type = "t2.micro"
  ami = "ami-0fd05997b4dff7aac"
  key_name = "keypair1"
  security_groups = ["SSH1"]
  tags = {
    Name = "Terraform2"
  }
}