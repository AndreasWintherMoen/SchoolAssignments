def imp2cm(feet, inches):
    totalInches = feet * 12 + inches
    cm = round(totalInches * 2.54)
    return cm
 
 
# skript
fot = int(input("Oppgi antall fot: "))
tommer = int(input("Oppgi antall tommer: "))
cm = imp2cm(fot, tommer)
print("Det blir", cm, "cm")
