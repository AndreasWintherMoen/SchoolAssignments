from turtle import *
import time

#Oppg A
#backgroundColor = input("Angi bakgrunnsfarge: ")
#drawColor = input("Angi farge på firkant: ")


#Oppg B
backgroundColor = int(input("Angi bakgrunnsfarge (0-16,777,215): "))
drawColor = int(input("Angi farge på firkant (0-16,777,215): "))
                     
 
# setter opp tegnevinduet
setup(330, 330, 0, 0)
screensize(315, 315)
goto(-60, 150)
 
# velger farger
colormode(255)

#Oppg A
#bgcolor(backgroundColor)
#color(drawColor)

#Oppg B
Rb = backgroundColor // (256**2)
Gb = (backgroundColor - 256**2 * Rb) // 256
Bb = backgroundColor % 256
Rf = drawColor // (256**2)
Gf = (drawColor - 256**2 * Rf) // 256
Bf = drawColor % 256

print(Rb, Gb, Bb, Rf, Gf, Bf)
bgcolor((Rb, Gb, Bb))
color((Rf, Gf, Bf))
 
#tegner den indre firkanten
begin_fill()
right(10) # tilter den 10 grader nedover
forward(200)
right(90)
forward(200)
right(90)
forward(200)
right(90)
forward(200)
end_fill()
  
time.sleep(10)      # Gjør at vinduet med tegningen ikke lukkes med én gang, men er oppe i 10 sekunder
