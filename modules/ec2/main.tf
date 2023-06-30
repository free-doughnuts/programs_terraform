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

// the resource : ubuntu-jammy-22.04-amd64-server-20230516

resource "ec2instance" "micro-instance" {
  instance_type          = var.instance_type
  ami                    = var.ami_type
  subnet_id              = var.subnet_id
  tags = {
    Name = var.name
  }
}
