n = int(input("n = "))
totalSum = 0
for i in range(1, n + 1):
    totalSum += (- i ** 2) if (i % 2 == 0) else (i ** 2)
    #eventuelt:
    #if (i % 2 == 0):
    #    totalSum -= i ** 2
    #else:
    #    totalSum += i ** 2
print(totalSum)
