pizza = 750.0
studentRabatt = 0.2
tips = 0.08

totalPris = pizza * (1 - studentRabatt) * (1 + tips)

print("Total pris: ", totalPris)
antallPersoner = float(input("Hvor mange deltok på middagen? "))
print("Ettersom dere var ", int(antallPersoner), ", så må hver person betale ",totalPris / antallPersoner, " kroner.") 
