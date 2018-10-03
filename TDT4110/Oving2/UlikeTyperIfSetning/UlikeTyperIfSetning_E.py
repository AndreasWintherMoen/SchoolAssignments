age = int(input("Din alder: "))
if (age < 0):
    print("Ugyldig alder")
elif (age < 3):
    print("Billetten er gratis")
elif (age < 12):
    print("Billettpris: 30kr")
elif (age < 26):
    print("Billettpris: 50kr")
elif (age < 67):
    print("Billettpris: 80kr")
else:
    print("Billettpris: 40kr")
