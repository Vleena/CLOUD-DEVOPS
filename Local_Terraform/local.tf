resource "random_string" "rand_str" {
    length=16
    special = true
    override_special=")$#@!$%^&*("
}

resource "local_file" "Myfile" {
    filename = "C:\\Users\\devops.txt" //create a file
    content = "Hello World" //insert the  content
  
}

output "out_str" {
    value=random_string.rand_str[*].result
}