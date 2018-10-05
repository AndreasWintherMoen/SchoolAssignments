import math

def divisable(a, b):
    return (a % b) == 0
        
def isPrime(a):
    for b in range(2, a-1):
        if divisable(a, b):
            return False
    return True

def isPrime2(a):
    if divisable(a, 2):
        return False
    stopNum = round(math.sqrt(a) + 0.5)
    for b in range(3, stopNum, 2):
        if divisable(a, b):
            return False
    return True
