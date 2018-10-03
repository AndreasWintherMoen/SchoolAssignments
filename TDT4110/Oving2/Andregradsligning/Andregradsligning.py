import math

a = float(input("a: "))
b = float(input("b: "))
c = float(input("c: "))
d = b**2- 4*a*c

if (d < 0):
    print("Andregradsligningen " + str(a) + "*x^2 + " + str(b) + "*x + " + str(c) + " har to imaginære løsninger.")
elif (d > 0):
    firstSolution = (-b + math.sqrt(d)) / (2 * a)
    secondSolution = (-b - math.sqrt(d)) / (2 * a)
    print("Andregradsligningen " + str(a) + "*x^2 + " + str(b) + "*x + " + str(c) + " har de to løsningene " +
        str(firstSolution) + " og " + str(secondSolution))
else:
    solution = (-b + math.sqrt(d)) / (2 * a)
    print("Andregradsligningen " + str(a) + "*x^2 + " + str(b) + "*x + " + str(c) + " har én reell dobbeltrot " + str(solution))
