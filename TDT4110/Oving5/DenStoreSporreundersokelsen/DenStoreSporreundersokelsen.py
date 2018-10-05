from sys import exit

numWomen = 0
numMen = 0
numSubjects = 0
numITGK = 0
avgHoursHomework = 0

def UpdateGlobals(gender, takingSubjects, studyingITGK, hoursHomework = -1):
    if (gender == "f"): #Since this isn't given by user input we can assume m if not f
        global numWomen
        numWomen += 1
    else:
        global numMen
        numMen += 1

    if takingSubjects:
        global numSubjects
        numSubjects += 1

    if studyingITGK:
        global numITGK
        numITGK += 1

    if (hoursHomework >= 0):
        global avgHoursHomework
        totalHoursHomework = avgHoursHomework * numSubjects + hoursHomework
        avgHoursHomework = totalHoursHomework / numSubjects

def AskBooleanQuestion(question, validAnswerA, validAnswerB):
    answer = ""
    while True:
        answer = input(question).lower()
        if (answer == "hade"):
            exit()
        if (answer == validAnswerA or answer == validAnswerB):
            return answer
        print("Ugyldig svar.")

def Survey():
    print("Velkommen til spørreundersøkelsen!\n")
    
    gender = AskBooleanQuestion("Hvilket kjønn er du? [f/m]: ", "f", "m")
    age = int(input("Hvor gammel er du?: "))
    if (age < 16 or age > 25):
        print("Du kan dessverre ikke ta denne undersøkelsen")
        return 

    subject = AskBooleanQuestion("Tar du et eller flere fag? [ja/nei ]: ", "ja", "nei")
    if (subject == "nei"):
        UpdateGlobals(gender, False, False)
        return

    studyingITGK = ""
    if (age < 22):
        studyingITGK = AskBooleanQuestion("Tar du ITGK?", "ja", "nei")
    else:
        studyingITGK = AskBooleanQuestion("Tar du virkelig ITGK? [ja/nei ] ", "ja", "nei")

    hoursHomework = int(input("Hvor mange timer bruker du daglig (i snitt) på lekser?: "))

    UpdateGlobals(gender, True, studyingITGK == "ja", hoursHomework)

def main():
    while True:
        Survey()
        print("\n************************************\n")

main()


