import math

print("Vennligst gi inn et flyttal med minst ", 5, " siffer både før og etter . ")
inputNum = float(input("Hva er tallet ditt? "))
integer = int(inputNum)
print("Konvertert til heltall med int(): ", integer)
print("Avrundet til nærmeste heltall: ", round(inputNum))
print("Avrundet til to desimaler: ", round(inputNum, 2))
print("Avrundet til fire desimaler: ", round(inputNum, 4))
print("Avrundet til nærmeste tusen: ", int(round(inputNum, -3)))
print("Heltall fra int() konvertert tilbake til flyttall: ", float(integer))
