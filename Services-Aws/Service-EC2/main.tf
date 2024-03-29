// The Technology
terraform {
  required_providers {
    aws                   = {
      source              = "hashicorp/aws"
      version             = "4.13.0"
    }
  }

  backend "s3" {
    bucket                = "the_real_name_of_the_bucket"
    key                   = "terraform/state-file/service-ec2/terraform.tfstate"
    region                = "eu-central-1"
  }
}


// The Provider               
provider "aws" {
 region                   = var.region
}

// The Properties
resource "aws_instance" "ec2" {
  disable_api_termination = var.protect_instance_termination
  disable_api_stop 				= var.protect_instance_stop
  instance_type           = var.instance_type
  ami                     = var.ami_type
  monitoring              = var.monitoring
  count                   = length(var.machines_name)
  key_name                = var.ssh_key_name
  subnet_id               = var.subnet_id
  security_groups         = [var.security_groups_id]
  user_data               = "${file(var.bash_script)}"
  tags                    = {
    Name                  = var.machines_name[count.index]
  }
  root_block_device {
    encrypted             = var.ebs_condition
    volume_size           = var.ebs_size
  }
}
