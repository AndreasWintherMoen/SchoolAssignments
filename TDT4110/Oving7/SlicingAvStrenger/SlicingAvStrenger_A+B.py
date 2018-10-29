def everyFourthLetter(text):
    return text[0:len(text)-1:4]

def lastTwoLettersOfEach(textList):
    newString = ""
    for string in textList:
        newString += string[len(string)-2:]
    return newString



print(everyFourthLetter("I Was Told There'd Be Cake"))
print(lastTwoLettersOfEach(["sabel","kan","mestr","kuleis"]))
