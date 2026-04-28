resource "local_file" "file" {
	filename="/home/test.txt"
	content="This is Devops Test file"
}

resource "local_file" "devops_variable" {
	filename=var.filename
	content=var.content
	# content1=var.variable-type["content1"]
}

output "variable_value" {
value=var.variable-type["content2"]
}


resource "local_file" "Variable" {
	filename=var.filename
	content=var.variable-type["content1"]
}

resource "local_file" "list" {
	filename=var.file_list[0]
	content=var.variable-type["content1"]
}
