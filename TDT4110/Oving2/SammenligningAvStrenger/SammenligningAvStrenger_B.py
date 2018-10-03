firstName = str(input("Første navn: "))
secondName = str(input("Andre navn: "))

firstName = firstName.lower()
secondName = secondName.lower()

print("Under følger navnene i alfabetisk rekkefølge:")
if (firstName < secondName):
    print(firstName)
    print(secondName)
else:
    print(secondName)
    print(firstName)
