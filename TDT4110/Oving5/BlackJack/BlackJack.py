import random

cardList = ["As", "Ac", "Ah", "Ad", "Ks", "Kc", "Kh", "Kd", "Qs", "Qc", "Qh", "Qd", "Js", "Jc",
            "Jh", "Jd", "10s", "10c", "10h", "10d", "9s", "9c", "9h", "9d", "8s", "8c", "8h", "8d",
            "7s", "7c", "7h", "7d", "6s", "6c", "6h", "6d", "5s", "5c", "5h", "5d", "4s", "4c",
            "4h", "4d", "3s", "3c", "3h", "3d", "2s", "2c", "2h", "2d"]

def pickCard():
    randomIndex = random.randint(0, len(cardList)-1)
    card = cardList[randomIndex]
    del cardList[randomIndex]
    return card

def getCardValue(card):
    cardType = card[0]
    if (cardType == "1"):       return 10
    if cardType.isnumeric():    return int(cardType)
    if (cardType == "A"):       return 11
    return 10               

def getStartingCards():
    dealerCards = [pickCard(), pickCard()]
    dealerValue = getCardValue(dealerCards[0]) + getCardValue(dealerCards[1])
    dealerHiddenValue = getCardValue(dealerCards[0])
    if (dealerValue == 22):
        dealerValue = 12

    playerCards = [pickCard(), pickCard()]
    playerValue = getCardValue(playerCards[0]) + getCardValue(playerCards[1])
    if (playerValue == 22):
        playerValue = 12
        
    return dealerCards, dealerValue, dealerHiddenValue, playerCards, playerValue

def printCurrentCards(dealerCards, dealerHiddenValue, playerCards, playerValue):
    print("Dealer's cards:\t", dealerCards[0] + ", ?")
    print("Your cards:\t", playerCards[0] + ", " + playerCards[1])
    print("Dealer value:\t", str(dealerHiddenValue) + " + ?")
    print("Your value:\t", playerValue)

def verifyAnswer(question):
    answer = ""
    while (answer != "Y" and answer != "N"):
        answer = input(question).upper()
    if (answer == "N"):
        return False
    return True

def askForNewCard():
    if (verifyAnswer("Do you want another card? (Y/N) ")):
        return pickCard()
    return 0

def loseGame(loseCondition = "You lost"):
    print(loseCondition)

def winGame(winCondition = "You won!"):
    print(winCondition)

def draw(message = "Draw"):
    print(message)

def checkBlackjack(cardList, value):
    if (value == 21 and (getCardValue(cardList[0]) == 11 or getCardValue(cardList[1]) == 11)):
        return True
    return False

def determineWinner(dealerCards, dealerValue, playerCards, playerValue):
    message = ""
    if (checkBlackjack(dealerCards, dealerValue)):       
        if (checkBlackjack(playerCards, playerValue)):   #both blackjack
            message = "Double blackjack! That's a draw!"
            draw(message)
        else:                                           #dealer blackjack
            message = "You lost! Dealer got blackjack! Your value: " + str(playerValue)
            loseGame(message)
    elif (checkBlackjack(playerCards, playerValue)):    #player blackjack
            message = "Blackjack!! Congratulation! Dealer value: " + str(dealerValue)
            winGame(message)
    elif (dealerValue > playerValue):                   #dealer won
        message = "You lost! Dealer's value: " + str(dealerValue) + ". Your value: " + str(playerValue)
        loseGame(message)
    elif (dealerValue == playerValue):                  #draw
        message = "It's a draw! Dealer's value: " + str(dealerValue) + ". Your value: " + str(playerValue)
        draw(message)
    else:                                               #player won
        message = "You won! Dealer's value: " + str(dealerValue) + ". Your value: " + str(playerValue)
        winGame(message)
    askForRestart()

def resetCardList():
    #This is a bit of an ugly solution, but I don't want to remake the whole program.
    #What I should have done is probably to have a original cardList declared in main(),
    #and then a copy would be passed around in the necessary functions.
    global cardList
    cardList = ["As", "Ac", "Ah", "Ad", "Ks", "Kc", "Kh", "Kd", "Qs", "Qc", "Qh", "Qd", "Js", "Jc",
            "Jh", "Jd", "10s", "10c", "10h", "10d", "9s", "9c", "9h", "9d", "8s", "8c", "8h", "8d",
            "7s", "7c", "7h", "7d", "6s", "6c", "6h", "6d", "5s", "5c", "5h", "5d", "4s", "4c",
            "4h", "4d", "3s", "3c", "3h", "3d", "2s", "2c", "2h", "2d"]

def askForRestart():
    if (verifyAnswer("\n\nWould you like to play again? (Y/N) ")):
        resetCardList()
        main()
    else:
        return

def main():
    dealerCards, dealerValue, dealerHiddenValue, playerCards, playerValue = getStartingCards()
    
    while (playerValue < 21):
        print("***********************************************")
        printCurrentCards(dealerCards, dealerHiddenValue, playerCards, playerValue)
        newCard = askForNewCard()
        if (newCard == 0):
            determineWinner(dealerCards, dealerValue, playerCards, playerValue)
            return
        cardValue = getCardValue(newCard)
        playerValue += cardValue

    if (playerValue == 21):
        print("***********************************************")
        printCurrentCards(dealerCards, dealerHiddenValue, playerCards, playerValue)
        message = "BlackJack!! Dealer's value: " + str(dealerValue) + ". Your value: BlackJack!"
        winGame(message)
        askForRestart()

    message = "You busted! Dealer's value: " + str(dealerValue) + ". Your value: " + str(playerValue)
    loseGame(message)
    askForRestart()

main()
