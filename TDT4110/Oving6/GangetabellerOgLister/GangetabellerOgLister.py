def separate(numbers, threshold):
    belowThreshold = []
    aboveThreshold = []
    for number in numbers:
        if (number < threshold):
            belowThreshold.append(number)
        else:
            aboveThreshold.append(number)
    return belowThreshold, aboveThreshold

def multiplicationTable(n):
    table = []
    for row in range(1, n + 1):
        newCol = []
        for col in range(1, n + 1):
            newCol.append(row * col)
        table.append(newCol)
    return table

print("\nOppgave A\n" + "*" * 30)
print(separate([5, 1, 24, 66, 2, 4, 5, 7, 2, 8, 10, 11, 12], 6))

print("\nOppgave B\n" + "*" * 30)
print(multiplicationTable(4))
