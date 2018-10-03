def AddLetterToSolution(solution, letter):
    #Adds letter to solution string if solution contains letter.
    found = False
    for i in range(len(secretWord)):
        if secretWord[i] == letter:
            found = True
            solution = solution[:i] + letter + solution[i + 1:]
    return solution

secretWord = input("Skriv inn ordet som skal gjettes: ")
numLives = int(input("Skriv inn antall forsøk/liv: "))
solution = "*"*len(secretWord)
while True:
    print("Løsningsord: " + solution)
    letter = input("Gjett en bokstav: ")
    newSolution = AddLetterToSolution(solution, letter)
    if newSolution != solution:
        solution = newSolution
        print("Stemmer, bokstaven " + letter + " er i ordet.")
        if solution.find("*") == -1:
            print("Gratulerer, du vant! Løsningsordet var " + "'" + solution + "'")
            break
    else:
        numLives -= 1
        if (numLives == 0):
            print("Du har ingen liv igjen.")
            print("Løsningen var " + secretWord)
            break
        print("Du har", numLives, "igjen, prøv på nytt.")
