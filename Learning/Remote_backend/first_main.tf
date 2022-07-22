terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
 
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

variable "instance_type" {
	type = string
	
}

locals {
	project_name = "myproject"
}

resource "aws_instance" "web" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = var.instance_type

  tags = {
    Name = "HelloWorld-${local.project_name}"
  }
}

module "vpc_example_simple-vpc" {
  source  = "terraform-aws-modules/vpc/aws//examples/simple-vpc"
  version = "3.14.2"
}

output "public_ip" {
	value = aws_instance.web.public_ip

}
