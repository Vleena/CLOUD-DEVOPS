terraform {
  required_providers {
    aws = {
        source="hashicorp/aws"
        version = "~> 6.0"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
    region = "ap-south-1"
  
}

resource "aws_s3_bucket" "AWS-S3" {
    bucket = "vleena-123" # bucket name
}
