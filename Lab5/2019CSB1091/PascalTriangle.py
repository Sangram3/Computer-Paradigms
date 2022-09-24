print("Welcome to the Pascal Triangle program !!! ")
n = int(input("Enter number of rows : "))
for i in range(1, n+1): 
    for j in range(0, n-i+1): 
        print(" ", end="")  
    temp = 1
    for j in range(1, i+1): 
        print(" ", temp, sep="", end="")  
        temp = int(temp*(i - j) / j )
    print("")
