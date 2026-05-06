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
    count=2 # create a two ec2 instances
    ami="ami-07a00cf47dbbc844c" # ubuntu AMI
    instance_type = "t3.micro" 
    key_name = "public-key"
    tags = {
      Name = "Terraform-Ec2" # name of the Ec2 machine; here the key 'Name' is case sensitive
    }
}

output "instance_IP" {
    # value = aws_instance.ec2.public_ip # get the public IP of the EC2 instance
      value = aws_instance.ec2[*].public_ip # get the public IP of all the EC2 instances 
	
}
