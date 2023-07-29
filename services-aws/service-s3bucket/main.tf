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
    key       = "terraform/state-file/service-s3bucket/terraform.tfstate"
    region    = "eu-central-1"
  }
}

// the provider

provider "aws" {
 region                  = var.region
}
 
// the resource type
 
resource "aws_s3_bucket" "the-bucket" {
  bucket             = var.bucket_name
  tags = {
    Name             = var.bucket_tag
  }
}

// the resource properties

resource "aws_s3_bucket_versioning" "the-versioning" {
  bucket              = var.bucket_name
  versioning_configuration {
    status            = var.versioning
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "the-encryption" {
  bucket              = var.bucket_name
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm   = var.sse_encryption_algorithm
    }
  }
}
