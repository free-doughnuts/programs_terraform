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
 
// the resource type
 
resource "aws_s3_bucket" "the-bucket" {
  bucket             = var.bucket
  tags = {
    Name             = var.name
  }
}

// the resource properties

resource "aws_s3_bucket_versioning" "the-versioning" {
  bucket              = var.bucket
  versioning_configuration {
    status            = var.versioning
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "the-encryption" {
  bucket              = var.bucket
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm   = var.sse_algorithm
    }
  }
}
