terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 6.0"
    }
  }
required_version = ">= 1.2.0"
}

provider "aws" {
    region="ap-south-1"
}

locals {
    instances = toset(["vm-1","vm-2"]) # instance names in a set of list
}

resource "aws_instance" "ec2" {
    for_each = local.instances 
    ami="ami-07a00cf47dbbc844c"
    instance_type="t3.micro"
    key_name="mumbai-ec2-key"
    tags = {
        Name=each.key # calling the each set key value
    }
}
