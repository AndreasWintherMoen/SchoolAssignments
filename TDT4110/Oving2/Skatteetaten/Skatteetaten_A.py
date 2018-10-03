print("INFO\nDette programmet besvarer om din utleie av egen bolig er"
"skattepliktig.\nFørst trenger vi å vite hvor stor del av boligen du har"
"leid ut.\nAngi dette i prosent, 100 betyr hele boligen, 50 betyr halve,"
"20 en mindre del av boligen som f.eks. en hybel.")
print("-"*65)
print("DATAINNHENTING")
amount = int(input("Oppgi hvor mye av boligen som ble utleid: "))
income = int(input("Skriv inn hva du har hatt i leieinntekt: "))
if (amount <= 50 or income < 20000):
    print("Ikke skattbar inntekt.")
else:
    print("Inntekten er skattepliktig.")
    print("Skattepliktig beløp er", income)
