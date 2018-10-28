import random

random_numbers = []
for i in range(100):
    random_numbers.append(random.randint(1, 10))

print(random_numbers)

count = 0
for num in random_numbers:
    if (num == 2):
        count += 1

print("Number of 2s:", count)

totSum = 0
for num in random_numbers:
    totSum += num

print("Sum of numbers:", totSum)

random_numbers.sort()

print(random_numbers)

mostOccurences = -1
mostCommonNum = -1
for i in range(1,11):
    if (random_numbers.count(i) > mostOccurences):
        mostOccurences = random_numbers.count(i)
        mostCommonNum = i

print("There are most of number:", mostCommonNum, "with", mostOccurences, "total occurences.")

random_numbers.sort(key=None, reverse=True)

print(random_numbers)
