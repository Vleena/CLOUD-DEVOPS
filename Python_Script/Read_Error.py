file=input("Enter the Error file absolute path:")
output_file=input("Enter the output file path:")
with open(file,"r") as file:
    with open(output_file,"w") as outputfile:
        for line in file:
            if 'error' in line.lower():
                outputfile.write(line)