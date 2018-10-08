import random


#myGuess = [0] * 7

def drawNumbers(numberList, n, removeFromOriginal):
    if (removeFromOriginal == False):
        numberListCopy = numberList.copy()
    else:
        numberListCopy = numberList
    randomNumbers = [0] * n
    for i in range(n):
        randomNumbers[i] = numberListCopy.pop(random.randint(0, len(numberListCopy) - 1))
    randomNumbers.sort()
    return randomNumbers

def compList(firstList, secondList):
    #assumes both lists are sorted
    count = 0
    secondListStartingIndex = 0
    for i in range(len(firstList)):
        j = secondListStartingIndex
        for j in range(len(secondList)):
            if (firstList[i] == secondList[j]):
                count += 1
                secondListStartingIndex = j
                break
    return count
        
def winnings(mainNum, extraNum):
    if (mainNum < 4 or (mainNum == 4 and extraNum == 0)):
        return 0
    if (mainNum == 4 and extraNum > 0):
        return 45
    if (mainNum == 5):
        return 95
    if (mainNum == 6):
        return 3385
    if (mainNum == 6 and extraNum == 1):
        return 102110
    if (mainNum == 7):
        print("Woah! Jackpot! You won 2,749,455!!")
        return 2749455
    print("this shouldn't happen")
    return 0

def simulate():
    n = int(input("How many simulations? "))
    if (n > 10000):
        #will take time to compute, so let's assure the user the program is actually running
        print("Calculating...")
    totalWinSum = n * (-5) #total costs
    for i in range(n):
        numbers = [i for i in range(1,35)]
        myGuess = drawNumbers(numbers, 7, False)
        winningNumbersMain = drawNumbers(numbers, 7, True)
        winningNumbersExtra = drawNumbers(numbers, 3, True)
        numCorrectMain = compList(myGuess, winningNumbersMain)
        numCorrectExtra = compList(myGuess, winningNumbersExtra)
        totalWinSum += winnings(numCorrectMain, numCorrectExtra)
    print("After", n, "simulations you have made a profit of", totalWinSum)

def lotto():
    numbers = [i for i in range(1,35)]
    myGuess = drawNumbers(numbers, 7, False)
    print("Your numbers:", myGuess)
    winningNumbersMain = drawNumbers(numbers, 7, True)
    winningNumbersExtra = drawNumbers(numbers, 3, True)
    print("Winning numbers:", winningNumbersMain, "and extra numbers:", winningNumbersExtra)
    numCorrectMain = compList(myGuess, winningNumbersMain)
    numCorrectExtra = compList(myGuess, winningNumbersExtra)
    print("You have", numCorrectMain, "correct main numbers and", numCorrectExtra, "correct extra numbers")
    winSum = winnings(numCorrectMain, numCorrectExtra)
    if (winSum > 0):
        print("You won", winSum)
    else:
        print("You did not win")
    

def main():
    userInput = ""
    while (userInput != "s" and userInput != "l"):
        userInput = input("Do you want to play lotto once (L), or would you like to simulate many lotto rounds (S)? ").lower()
    if (userInput == "l"):
        lotto()
    else:
        simulate()
    #restart
    while (userInput != "y" and userInput != "n"):
        userInput = input("Do you want to play again? ").lower()
    if (userInput == "y"):
        main()

main()
