// the technology

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.13.0"
    }
  }
}

// the provider

provider "aws" {
 region = var.region
}

// the resource

resource "aws_instance" "ec2" {
  instance_type          = var.instance_type
  ami                    = var.ami_type
  subnet_id              = var.subnet_id
  aws_eip                = var.aws_eip
  tags = {
    Name = var.name
  }
}
