fibIndex = int(input("Hvilket fibonaccitall ønsker du? "))

if (fibIndex == 0):
    print(0)
elif (fibIndex == 1):
    print(1)
else:
    last = 0
    current = 1
    for i in range(fibIndex - 2):
        print("loop")
        tmp = current
        current += last
        last = tmp
    print(current)
