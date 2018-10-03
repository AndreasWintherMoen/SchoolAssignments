import math

inputNum = float(input("Skriv inn et flyttall: "))
numOfDigits = int(input("Hvor mange desimaler er ønskelig? "))
print("Tallet du skrev er ", inputNum, " og med ", numOfDigits, " desimaler blir det til ", round(inputNum, numOfDigits))
