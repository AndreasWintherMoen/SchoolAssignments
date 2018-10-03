pos = input("Posisjon: ")

if len(pos) > 2 or len(pos) < 0:
    print("Feil input. Du må skrive akkurat to tegn")
    exit()

#convert column to ascii
column = ord(pos[0].lower())
if (column < 97 or column > 104):
    print("Første tegn må være en bokstav A-H eller a-h")
    exit()

row = int(pos[1])
if (row < 1 or row > 8):
    print("Andre tegn må være et tall 1-8")
    exit()

#Legal input. Find color
#If row and column are both either odd or even, print black. If they differ, print white
if (column % 2 == row % 2):
    print("Svart")
else:
    print("Hvit")

