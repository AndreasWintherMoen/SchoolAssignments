#A
myFirstList = [1, 2, 3, 4, 5, 6]
print(myFirstList)

#B
print(myFirstList[len(myFirstList)-1])

#C
myFirstList[len(myFirstList)-2] = "pluss"
print(myFirstList)

#D
mySecondList = myFirstList[len(myFirstList)-3:len(myFirstList)]
print(mySecondList)

#E
print(mySecondList, "er lik 10")
