import time
from turtle import *
# importerer funksjoner fra turtle
print("Hei, jeg kan tegne en trekant")
turnAmount = 120 if (input("Ønsker du spissen på trekanten opp eller ned (O / N)? ").lower() == "o") else -120
pensize(7)        
bgcolor("#00509e")  

#sett pennfarge
if (input("Velg pennfarge, NTNU-rosa(R) eller NTNU-turkis(T)").lower() == "r"):
    pencolor("#ad208e") 
else:
    pencolor("#5cbec9")

#sett fyllfarge
color = input("Velg fyllfarge, gul (G), brun (B) eller oransje (O)").lower()    
if (color == "g"):
    fillcolor("#d5d10e")
elif (color == "b"):
    fillcolor("#90492d")
else:
    fillcolor("#f58025")

# Tegner en fylt trekant
begin_fill()
for i in range(3):
    forward(200)        # gå 100 piksler framover
    left(turnAmount)           # drei 120 grader venstre/høyre
end_fill()
  
# Holder vinduet med tegningen åpent i 10 sekunder. Ha dette som siste linje i koden din
time.sleep(5)
