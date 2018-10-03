import random

lowerLimit = int(input("Skriv inn nedre grense: "))
upperLimit = int(input("Skriv inn øvre grense: "))
randomNum = random.randint(lowerLimit, upperLimit)
guess = randomNum - 1 #to guarantee guess != randomNum

while guess != randomNum:
    guess = int(input("Gjett et tall: "))
    if (guess > randomNum):
        print("For høyt!")
    elif (guess < randomNum):
        print("For lavt!")

print("Korrekt!")
