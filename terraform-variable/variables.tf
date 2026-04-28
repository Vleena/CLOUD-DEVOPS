variable "filename" {# variable name is filename
	default ="/home/automated.txt"
	
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

variable "file_list" {
	type=list
	default=["/home/test1.txt","/home/test2.txt"]
}

