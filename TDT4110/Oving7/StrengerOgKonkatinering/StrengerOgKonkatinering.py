def CombineStringsFromInput():
    streng1 = input("Skriv inn en tekststreng: ")
    streng2 = input("Skriv inn en til tekststreng: ")
    return streng1 + " " +  streng2

def CombineStringsFromList(list):
    newString = ""
    for text in list:
        newString += text
    return newString

def PrintFirstLetterFromStringList(list):
    for text in list:
        print(text[0])

#Oppg A
print("-" * 20)
print(CombineStringsFromInput())

#Oppg B
print("-" * 20)
print(CombineStringsFromList(["abc","defg","hijklm","nop"]))

#Oppg C
print("-" * 20)
PrintFirstLetterFromStringList(["UKA","lever","videre"])
