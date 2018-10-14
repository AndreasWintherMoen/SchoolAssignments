numberList = [i for i in range(100)]
print("\nOppgave A\n" + "*" * 30)
print(numberList)
     
print("\nOppgave B\n" + "*" * 30)
print(sum(i for i in numberList if (i % 3 == 0 or i % 10 == 0)))

def switchOddEven(vec):
    evenNum = -1 #negative means unassigned
    for i in range(len(vec)):
        if (i % 2 == 0):
            evenNum = vec[i]
        else:
            tmp = vec[i - 1]
            vec[i - 1] = vec[i]
            vec[i] = tmp
    return vec

print("\nOppgave C\n" + "*" * 30)
numberList = switchOddEven(numberList)
print(numberList)

print("\nOppgave D\n" + "*" * 30)
reversedList = [numberList[i - 1] for i in range(len(numberList), 0, -1)]
print(reversedList)
