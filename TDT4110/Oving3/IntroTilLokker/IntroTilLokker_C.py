lettersAvailable = 42

while lettersAvailable > 0:
    print("Du har", lettersAvailable, "bokstaver til disposisjon.")
    adj = input("Beskriv deg selv med et adjektiv? ")
    lettersAvailable -= len(adj)
    print("Hah, du", adj + "!? Jeg er mye", adj + "ere!")
print("Takk for nå!")
