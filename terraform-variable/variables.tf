variable "filename" {# variable name is filename
	default ="/home/vleena1/CLOUD-DEVOPS/terraform-variable/automated.txt"
	
}

variable "content" {
	default="This is auto generated from the variable"
}

variable "test" {}

variable "variable-type" {
	type=map
	default= {
	"content1"="Hello Users"
	"content2"="Welcome to the Terraform World"
	}
}

