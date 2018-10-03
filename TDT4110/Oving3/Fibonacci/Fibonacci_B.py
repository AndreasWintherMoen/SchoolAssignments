fibIndex = int(input("Hvilket fibonaccitall ønsker du? "))
current = 0
totalSum = 0

if (fibIndex == 0):
    current = 0
    totalSum = 0
elif (fibIndex == 1):
    current = 1
    totalSum = 1
else:
    last = 0
    current = 1
    totalSum = 1
    for i in range(fibIndex - 2):
        tmp = current
        current += last
        last = tmp
        totalSum += current

print("Fibonaccitall nummer", fibIndex, "er", current, "og summen av"
      " de", fibIndex, "første tallene er", totalSum)
