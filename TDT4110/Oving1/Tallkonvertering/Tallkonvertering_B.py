navn = input("Skriv ditt navn: ")
alder = int(input("Hei, " + navn + ", hvor gammel er du? "))
alderStartProg = int(input("Hvor gammel var du da du begynte å programmere? "))
antallAar = alder - alderStartProg
print("Da har du programmert i ", antallAar, " år.")
input("Synes du de " + str(antallAar) + " årene har vært givende? ")
print("Takk for svar, ", navn)
