numApples = int(input("Dette er et program for å teste din sjenerøsitet.\nHvor mange epler har du? "))
if (numApples == 0):
    print("Æsj, det sier du bare for å slippe å gi noe!")
else:
    applesDonated = int(input("Hvor mange kan du gi til meg? "))
    remainingApples = numApples - applesDonated
    if (applesDonated < remainingApples):
        print("Du beholder det meste for deg selv...")
    else:
        print("Takk, det var snilt!")
    appleString = "eple" if (remainingApples == 1) else "epler"
    if (remainingApples > 0):
        print("Du har nå", remainingApples, appleString, "igjen.")
    else:
        print("Du har nå 0 epler igjen. Gi meg de", abs(remainingApples), "du skylder neste gang vi møtes.")
