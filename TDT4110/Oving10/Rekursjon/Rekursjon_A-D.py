import math

def recursiveSum(n):
    if (n > 0):
        return n + recursiveSum(n-1)
    return 0

def fakultet(n):
    if (n > 1):
        return n * fakultet(n - 1)
    return n

def findSmallestElement(numbers):
    smallest = math.inf
    for number in numbers:
        if (number < smallest):
            smallest = number
    return smallest

def binarySearch(numbers, element):
    #Søkealgoritme med worst case log(n) 
    if (len(numbers) <= 1):
        return -float('inf')
    index = math.floor(len(numbers) / 2)
    if (numbers[index] == element):
        return index
    if (numbers[index] < element):
        newNumbers = numbers[index:]
        return index + binarySearch(newNumbers, element)
    newNumbers = numbers[:index]
    return index + binarySearch(newNumbers, element)



#Oppg A
print(recursiveSum(53))

#Oppg B
print(fakultet(5))
print(fakultet(3))

#Oppg C
print(findSmallestElement([5,3,2,6]))

#Oppg D
print(binarySearch([1,4,6,9,13,34,45,53,65,78],53))
print(binarySearch([1,4,6,9,13,34,45,53,65,78],54))
