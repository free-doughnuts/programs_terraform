// the technology

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.13.0"
    }
  }

  backend "s3" {
    bucket    = "the_real_name_of_the_bucket"
    key       = "terraform/state-file/service-ec2/terraform.tfstate"
    region    = "eu-central-1"
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
  key_name               = var.ssh_key_name
  subnet_id              = var.subnet_id
  security_groups        = [var.security_groups_id]
  user_data              = "${file(var.bash_script)}"
  tags = {
    Name                 = var.machine_name
  }
  root_block_device {
    encrypted            = var.ebs_condition
    volume_size          = var.ebs_size
  }
}

resource "aws_eip" "elastic_ip_addr" {
  instance               = aws_instance.ec2.id
}
