terraform {
    required_providers {
        aws= {
        source = "hashicorp/aws"
        version = "~> 6.0"  # Minimum AWS Provider version
            }
    }
    required_version = ">= 1.2.0" # Minimum Terraform CLI version
}

provider "aws" { # AWS configuration block
    region = "ap-south-1"
}

resource "aws_instance" "ec2" { # 'ec2' is the internal name for the resource
    ami="ami-07a00cf47dbbc844c" # ubuntu AMI
    instance_type = "t3.micro" 
    key_name = "mumbai-ec2-key"
    tags = {
      Name = "Terraform-Ec2" # name of the Ec2 machine
    }
}
