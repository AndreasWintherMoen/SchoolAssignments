print("Gi inn a og b, begge heltall i intervall <40,50> eller <70,90>:" )
a = int(input("Verdi for a: "))
b = int(input("Verdi for b: "))
  
if ((a >= 70 and a <= 90) or (a >= 40 and a <= 50)) and (( b>= 70 and b <= 90) or (b >= 40 and b <=50 )):
    print("Tallene er begge i gyldige intervall ^u^")
else:
    print("Minst ett av tallene er utenfor et gyldig intervall :(")
