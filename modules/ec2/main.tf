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

// the resources properties

resource "aws_instance" "ec2" {
  instance_type          = var.instance_type
  ami                    = var.ami_type
  subnet_id              = var.subnet_id
  security_groups        = [var.security_groups_id]
  user_data              = "${file(var.bash_script)}"
  tags = {
    Name                 = var.machine_name
  }
}

resource "aws_eip" "elastic_ip_addr" {
  instance               = aws_instance.ec2.id
}

output "resource_output" {
  value = resource.aws_instance.Ec2ID
}
