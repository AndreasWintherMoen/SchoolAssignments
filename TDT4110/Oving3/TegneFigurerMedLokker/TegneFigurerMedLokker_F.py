from turtle import *
from random import random,  randint
pensize(5)
Rstart,Gstart,Bstart = random(), random(), random()
Rend,Gend,Bend = random(), random(), random()
print(Rstart, Gstart, Bstart)
print(Rend, Gend, Bend)
tilt = random() + 0.5
sides = randint(5,9)
numRepetitions = 200

for i in range(numRepetitions):
    R = Rstart * (1 - (i / numRepetitions)) + Rend * (i / numRepetitions)
    G = Gstart * (1 - (i / numRepetitions)) + Gend * (i / numRepetitions)
    B = Bstart * (1 - (i / numRepetitions)) + Bend * (i / numRepetitions)
    
    x = (numRepetitions-i)/numRepetitions
    print(R, G, B)
    color(R, G, B)
    forward(i)
    left(360/sides + tilt)
    
