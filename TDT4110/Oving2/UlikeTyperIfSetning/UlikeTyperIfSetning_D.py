age = int(input("Skriv inn din alder: "))
if (age >= 18):
    print("Du kan stemme både ved lokalvalg og Stortingsvalg")
elif (age >= 16):
    print("Du kan stemme ved lokalvalg, men ikke ved Stortingsvalg")
else:
    print("Du kan ikke stemme ennå")
