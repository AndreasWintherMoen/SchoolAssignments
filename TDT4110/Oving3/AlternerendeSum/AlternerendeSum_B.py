k = int(input("k = "))
lastSum = 0
totalSum = 0
iteration = 0
while (totalSum <= k):
    lastSum = totalSum
    iteration += 1
    totalSum += (- iteration ** 2) if (iteration % 2 == 0) else (iteration ** 2)

print("Summen av tallene før summen blir større enn k er", lastSum)
print("Antall iterasjoner:", iteration - 1)
