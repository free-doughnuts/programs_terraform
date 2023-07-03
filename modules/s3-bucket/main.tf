// the provider
 
 provider "aws" {
  region = var.region
 }
 
 // the resource : s3 bucket
 
 resource "aws_s3_bucket" "first-bucket" {
   acl                = var.acl
   tags = {
     Name             = var.name
   }
 }
