def gcd(a, b):
    while b > 0:
        tmp = b
        b = a % b
        a = tmp
    return a

def reduce_fraction(a, b):
    d = gcd(a, b)
    print(str(int(a / d)) + "/" + str(int(b / d)))

reduce_fraction(42,13)
