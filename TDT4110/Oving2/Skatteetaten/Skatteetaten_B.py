print("INFO\nDette programmet besvarer om din utleie en annen type bolig,"
"her sekundær- eller fritidsbolig, er skattepliktig.\n"
"Først trenger vi å vite om du leier ut en sekundær- eller en fritidsbolig.")
print("-"*65)

print("DATAINNHENTING:")
residenceType = input("Skriv inn type annen bolig (sekundærbolig/fritidsbolig) du har leid ut: ").lower()
print("INFO\nDu har valgt " + residenceType + ".")
print("Nå trenger vi først å vite om " + residenceType + "en(e) primært brukes til utleie eller fritid.")
print("Deretter trenger vi å vite hvor mange " + residenceType + "(er) du leier ut.")
print("Til slutt trenger vi å vite hvor store utleieinntekter du har pr. " + residenceType + ".")
print("-"*65)

print("DATAINNHENTING:")
purpouse = input("Skriv inn formålet med " + residenceType + "en(e): ").lower()
numResidences = int(input("Skriv inn antallet " + residenceType + "er du leier ut: "))
revenue = int(input("Skriv inn utleieinntekten pr. " + residenceType + ": "))
print("-"*65)

print("SKATTEBEREGNING:")
#There are 3 possible scenarios.
#1: Does not pay tax. This is only if fritidsbolig with purpouse fritid and revenue <= 10k 
#2: Pays 100% tax. This is if sekundærbolig or if (fritidsbolig and purpouse utleie
#3: Pays 85% tax of (revenue - 10k * numResidences)
if (residenceType == "fritidsbolig" and purpouse == "fritid" and revenue <= 10000):
    print("Inntekten er ikke skattepliktig.")
else:
    if (residenceType == "sekundærbolig" or (residenceType == "fritidsbolig" and purpouse == "utleie")):
        taxableAmount = revenue
        totalTax = taxableAmount
    else:
        taxableAmount = revenue - 10000
        totalTax = round(taxableAmount * 0.85)
    print("Inntekten er skattepliktig.")
    print("Overskytende beløp pr. " + residenceType + " er", taxableAmount)
    print("Skattepliktig inntekt pr. " + residenceType + " er", totalTax)
    print("Totalt skattepliktig beløp er", totalTax * numResidences)
        
    
