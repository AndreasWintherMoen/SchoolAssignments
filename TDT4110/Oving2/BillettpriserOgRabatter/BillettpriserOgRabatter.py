lowPrice = 199
ordinaryPrice = 440
childPrice = 220
discountPrice = 330

def Confirmation(question):
    #Continuosly asks question until user inputs J/j or N/n, then returns the given input
    confirmation = ""
    while (not (confirmation == "j" or confirmation == "n")):
        confirmation = input(question).lower()
        if (confirmation == "j" or confirmation == "n"):
            return confirmation
        print("Ugyldig input. Skriv J/j for ja eller N/n for nei")


days = int(input("Dager til du skal reise? "))
if (days >= 14): 
    if (Confirmation("Student? ") == "j"):
        print("Du kan få minipris med studentrabatt: ", int(round(lowPrice * 0.9)), ",- Kan ikke refunderes/endres")
    else:
        print("Du kan få minipris: ", lowPrice, ",- Kan ikke refunderes/endres")

    if (Confirmation("Ønskes dette? ") == "j"):
        print("Takk for pengene, god reise!")
    else: 
        print("Da tilbyr vi fullpris: ", ordinaryPrice, ",-")
else: #Ordering less than 14 days before travel
    age = int(input("Skriv inn din alder: "))
    if (age < 16):
        if (Confirmation("Student? ") == "j"):
            print("Prisen på billetten blir: ", int(round(childPrice * 0.9)), ",-")
        else:
            print("Prisen på billetten blir: ", childPrice, ",-")
    elif (age >= 60):
        if (Confirmation("Student? ") == "j"):
            print("Prisen på billetten blir: ", int(round(discountPrice * 0.9)), ",-")
        else:
            print("Prisen på billetten blir: ", discountPrice, ",-")
    else: #No age discount, check for military and student
        if (Confirmation("Militær i uniform? ") == "j"):
            if (Confirmation("Student? ") == "j"):
                print("Prisen på billetten blir: ", int(round(discountPrice * 0.9)), ",-")
            else:
                print("Prisen på billetten blir: ", discountPrice, ",-")
        elif (Confirmation("Student? ") == "j"):
            print("Prisen på billetten blir: ", discountPrice, ",-")
        else:
            print("For sent for minipris; fullpris ", ordinaryPrice, ",-")
