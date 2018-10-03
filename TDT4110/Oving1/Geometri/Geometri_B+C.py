r = 5
print("Vi har en sirkel med radius", r)
omkrets = 2 * 3.14 * r
print("Omkretsen er", format(omkrets, '.2f'))
areal = 3.14 * r ** 2
print("Arealet er", areal)
h = 8
volum = areal * h
print("Sylinder med høyde", h, ": Volumet er", volum)

#C:
#Uten formatering blir omkretsen 31.400...002 fordi tall lagres i
#maskinen som et begrenset antall bytes. Desimaltall representert
#på binærform gir ofte et irrasjonelt tall. For eksempel vil .4 gi
#en uendelig repeterende rekke av 0110. Fordi rekken er uendelig
#(irrasjonell), inkrementeres binærtallet med én. Python benytter signed 64-bits
#flyttall der 1 bit angir fortegn (+ eller -), 11 bits representerer en
#eksponent, og 52 bits representerer mantissa. 31.4 som flyttall er
#altså: 0 10000000011 1111011001100110011001100110011001100110011001100111,
#som tilsvarer (-1)^0 * 2^(1027-1023) * 1.9625000000000001 = 
#1 * 16 * 1.9625000000000001 = 31.400000000000002.
