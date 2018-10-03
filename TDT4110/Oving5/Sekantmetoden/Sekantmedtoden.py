import math

def f(x):
    return ((x - 12) * math.exp(x / 2) - 8 * ((x + 2) ** 2))

def g(x):
    return (-x - 2 * (x ** 2) - 5 * (x ** 3) + 6 * (x ** 4))

def differentiate(x_k, x_k1, func):
    return ((func(x_k) - func(x_k1)) / (x_k - x_k1))

def secantMethod(x_0, x_1, func, tol):
    if (abs(x_0 - x_1) < tol):
        return x_0
    delta = differentiate(x_0, x_1, func)
    tmp = x_1 - func(x_1) / delta
    return secantMethod(tmp, x_0, func, tol)
    

def printSecantMethod(x, func):
    print("Funksjonen naermer seg et nullpunkt naar x =", x, ", da er f(x) =", func(x))


def main():
    #oppgave A
    print(f(0))
    print(g(1))
    
    #oppgave B
    print(differentiate(9, 10, f))

    #oppgave C
    x = secantMethod(11, 13, f, 0.00001)
    y = secantMethod(1, 2, g, 0.00001)
    z = secantMethod(0, 1, g, 0.00001)
    printSecantMethod(x, f)
    printSecantMethod(y, g)
    printSecantMethod(z, g)


main()
