from turtle import *

def Lerp(start, end, interpolant):
    #Takes in a start color, end color and a value between 0 and 1, and then returns the appropriate color.
    #0 will return start color, 1 returns end color. Colors are represented as arrays with 3 floats between 0 and 1.
    R = start[0] + interpolant * (end[0] - start[0])
    G = start[1] + interpolant * (end[1] - start[1])
    B = start[2] + interpolant * (end[2] - start[2])
    output = [R, G, B]
    return output

def DrawBox(width, height, corners):
    #Draws a new box with given width and height. Corners is an array of colors in the order:
    #top left, top right, bottom left, bottom right
    for row in range(0, height, stepLength):
        rowStartColor = Lerp(corners[0], corners[2], row / height)
        rowEndColor = Lerp(corners[1], corners[3], row / height)
        for pixel in range(0, width, stepLength):
            pixelColor = Lerp(rowStartColor, rowEndColor, pixel / width)
            color(pixelColor[0], pixelColor[1], pixelColor[2])
            forward(stepLength)
        up()
        backward(width)
        right(90)
        forward(stepLength)
        left(90)
        down()
        
#------------------------------------------------------------------------------------------------#
#       START OF PROGRAM
#------------------------------------------------------------------------------------------------#
width = 256
height = 256
offset = 85
stepLength = 4

white = [1, 1, 1]
pink = [1, 0, 1]
red = [1, 0, 0]
yellow = [1, 1, 0]
black = [0, 0, 0]
green = [0, 1, 0]
blue = [0, 0, 1]
turquoise = [0, 1, 1]

bgcolor(0.25, 0.25, 0.25)
pensize(stepLength)

#START DRAWING
up()
setposition(0, height + offset) 
down()
DrawBox(width, height, [red, pink, black, blue])
up()
setposition(- width*2, offset)
down()
DrawBox(width, height, [pink, red, white, yellow])
up()
setposition(- width, offset)
down()
DrawBox(width, height, [red, black, yellow, green])
up()
setposition(0, offset)
down()
DrawBox(width, height, [black, blue, green, turquoise])
up()
setposition(width, offset)
down()
DrawBox(width, height, [blue, pink, turquoise, white])
up()
setposition(0, - height + offset)
down()
DrawBox(width, height, [green, turquoise, yellow, white])        
