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
 region                  = var.region
}

// the properties

resource "aws_instance" "ec2" {
  instance_type          = var.instance_type
  ami                    = var.ami_type
  subnet_id              = var.subnet_id
  security_groups        = [var.security_groups_id]
  tags = {
    Name                 = var.machine_name
  }
}
