print("Slå Enter uten å skrive noe når du vil avslutte.")
while True:
    adj = input("Beskriv deg selv med et adjektiv? ")
    if (adj == ""):
        break
    print("Hah, du", adj + "!? Jeg er mye", adj + "ere!")
print("Takk for nå!")
