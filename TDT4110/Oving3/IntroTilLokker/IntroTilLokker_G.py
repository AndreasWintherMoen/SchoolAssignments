from turtle import *
vinkel = 140
while True:
    forward(20000 / vinkel)
    left(vinkel)
    if (abs(xcor()) < 1 and abs(ycor()) < 1):
        break
