# leser inn data
prom = float(input("Hvor stor var promillen? "))
motor = input("Var farkosten en motorvogn? (j/n) ")
f = input("Var personen fører av vognen? (j/n) ")
leds = input("Var personen ledsager ved øvekjøring? (j/n) ")
n = input("Var det nødrett? (j/n) ")
nekt = input("Nektet å samarbeide ved legetest? (j/n) ")
tidl = input("Tidligere dømt for promillekjøring? (j/n) ")
if tidl == "j":
    aar = int(input("Antall år siden siste domfellelse: "))
else:
    aar = 999
  
if (prom < 0.2 and nekt == "n") or motor == "n" or f == "n" or leds == "j" or n == "j":
    print("Ikke straffbart, ingen bot.")
elif (tidl == "j" or nekt == "j") and aar < 5:
    print("Førerkort inndras for alltid.")
elif prom > 1.2 or nekt == "j":
    print("Førerkort inndras minst 2 år.")
elif prom > 0.8:
    print("Førerkort inndras 20-22 mnd.")
elif prom > 0.5:
    print("Førerkort inndras vanligvis 18 mnd.")
else:
    print("Førerkort inndras inntil 1 år.")
