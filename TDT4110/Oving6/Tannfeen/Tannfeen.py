def getCoinList(toothWeightList):
    #initialize coinList array with 0's
    coinList = [[0 for i in range(4)] for j in toothWeightList]
    for i in range(len(toothWeightList)):
        coinList[i][0] = toothWeightList[i] // 20
        toothWeightList[i] -= coinList[i][0] * 20
        coinList[i][1] = toothWeightList[i] // 10
        toothWeightList[i] -= coinList[i][1] * 10
        coinList[i][2] = toothWeightList[i] // 5
        toothWeightList[i] -= coinList[i][2] * 5
        coinList[i][3] = toothWeightList[i]
    return coinList

def printCoinList(coinList):
    for i in range(len(coinList)):
        print("20:", coinList[i][0], ", 10:", coinList[i][1], ", 5:", coinList[i][2], ", 1:", coinList[i][3])

teeth = [95,103,71,99,114,64,95,53,97,114,109,11,2,21,45,2,26,81,54,14,118,108,117,27,115,43,70,58,107]
coinList = getCoinList(teeth)
printCoinList(coinList)
