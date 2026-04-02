provider "aws" {
    region = "ap-south-1"
  
}

# create a VPC
resource "aws_vpc" "myvpc" {
    cidr_block = "10.0.0.0/16"
    enable_dns_hostnames = true
    enable_dns_support = true
    tags = {
      Name = "My-VPC"
    }
  
}

# create a subnet-1
resource "aws_subnet" "subnet1" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "ap-south-1a"
    map_public_ip_on_launch = true
    tags = {
      Name = "Subnet-1"
    }
}

# create a subnet-2

resource "aws_subnet" "subnet2" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = "10.0.2.0/24"
    map_public_ip_on_launch = true
    availability_zone = "ap-south-1b"
    tags = {
      Name = "Subnet-2"
    }
}

# create a IGW
resource "aws_internet_gateway" "my-igw" {
    vpc_id = aws_vpc.myvpc.id
}

# create route table
resource "aws_route_table" "my-route-table" {
    vpc_id = aws_vpc.myvpc.ip
}

# create a route
resource "aws_route" "my-route" {
    route_table_id = aws_route_table.my-route-table.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my-igw.id
}

# create a route associations
resource "aws_route_table_association" "route-table-association" {
    subnet_id = aws_subnet.subnet1.id
    route_table_id = aws_route_table.my-route-table.id
  
}
