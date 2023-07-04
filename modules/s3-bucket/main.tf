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
 
 // the resource: bucket
 
 resource "aws_s3_bucket" "via-terraform" {
   bucket             = var.bucket
   tags = {
     Name             = var.name
   }
 }

// the bucket configuration

resource "aws_s3_bucket_versioning" "via-terraform" {
  bucket              = var.bucket
  versioning_configuration {
    status            = var.versioning
  }
}
