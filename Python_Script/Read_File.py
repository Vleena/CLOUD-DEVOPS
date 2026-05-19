with open("readme.txt","r") as file:
    for line in file:
        if 'error' in line.lower():
            print("Error line:\n",line)