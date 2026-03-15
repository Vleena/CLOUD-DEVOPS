def cal():
   try:
        n1=float(input("Enter the first number:"))
        op=input("operators:- (+,-,*,/):")
        n2=float(input("Enter the second number:"))

        if op == '+': print(n1 + n2)
        elif op == '-': print(n1 - n2)
        elif op == '*': print(n1 * n2)
        elif op == '/': print(n1 / n2 if n2!=0 else "ERROR" )
        else: print("Invalid operator")

   except ValueError:
        print("Valid number")

cal()

