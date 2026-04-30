terraform {
        required_providers {
        aws = {
                source="hashicorp/aws"
                version="~> 6.0"
        }
        }
required_version=">= 1.2.0"
}

provider "aws" {
        region="ap-south-1"
}

resource "aws_instance" "terraform-EC2" {
        count = 2
        ami="ami-07a00cf47dbbc844c"
        instance_type="t3.micro"
        key_name="mumbai-ec2-key"
        tags={
            Name="Ec2- ${count.index}" # create a Ec2 instance with different names like Ec2- 1,Ec2- 2
        }
}

output "public_ip" {
    value = aws_instance.terraform-EC2[*].public_ip # display the ec2 ip address 
}

output "key" {
    value=aws_instance.terraform-EC2[*].key_name # display the key pair names
  
}

