from turtle import *


print("Jeg kan tegne et regulært polygon.")
numEdges = int(input("Velg antall kanter: "))
circumference = int(input("Velg omkrets på polygonet: "))
numRepetitions = int(input("Velg antall repetisjoner: "))

for repetition in range(numRepetitions):
    for edge in range(numEdges):
        forward(circumference / numEdges)
        left(360 / numEdges)
    left(360 / numRepetitions)
