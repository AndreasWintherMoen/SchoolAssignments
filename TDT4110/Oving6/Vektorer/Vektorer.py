import random
import math

def generateVector(numElements, minNum, maxNum):
    vec = []
    for i in range(numElements):
        vec.append(random.randint(minNum, maxNum))
    return vec

def printVector(vector, name):
    print(name + " = ", vector)

def scalarMultiply(vector, scalar):
    return [i * scalar for i in vector]

def getVectorLength(vector):
    length = sum(i ** 2 for i in vector) 
    return math.sqrt(length)

def dotProduct(vector1, vector2):
    return sum(vector1[i] * vector2[i] for i in range(len(vector1)))

def main():
    #vec1 = generateVector(3, -10, 10)
    vec1 = [9, 3, 0]
    printVector(vec1, "vec1")
    scalar = float(input("Skriv inn en skalar: "))
    lengthBeforeScale = getVectorLength(vec1)
    scaledVec = scalarMultiply(vec1, scalar)
    lengthAfterScale = getVectorLength(scaledVec)
    dotProd = dotProduct(vec1, scaledVec)
    print("Lengden før skalering er:", lengthBeforeScale)
    print("Lengden etter skalering er:", lengthAfterScale)
    print("Forholdet mellom lengden før og etter skalering er:", lengthAfterScale / lengthBeforeScale)
    print("Prikkproduktet av", vec1, "og", scaledVec, "er:", dotProd)
    

print("\nOppgave A\n" + "*" * 20)
print(generateVector(3, -10, 10))

print("\nOppgave B\n" + "*" * 20)
printVector([1.20,4.50,4.40], "vec1")

print("\nOppgave C\n" + "*" * 20)
print(scalarMultiply([1.2, 4.5, 4.4], 4))

print("\nOppgave D\n" + "*" * 20)
print(getVectorLength([1, 4, 3]))

print("\nOppgave E\n" + "*" * 20)
print(dotProduct([1, 4, 3], [2, 3.1, 5]))

print("\nOppgave F\n" + "*" * 20)
main()
