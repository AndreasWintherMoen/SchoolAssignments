import math

def multiplication(tol):
    product = 1
    delta = math.inf
    count = 0
    while delta > tol:
        count += 1
        prev = product
        product *= 1 + 1 / (count ** 2)
        delta = product - prev
        
    return product, count

#tol = float(input("Toleranse: "))
#product, count = multiplication(tol)
#print("Produktet ble", product, "etter", count, "iterasjoner.")


#Her gir fasit feil verdi av count. Virker som at fasiten inkrementerer count etter multiplikasjon og if-setning
def multiplication2(tol, count = 0, product = 1):
    count += 1
    factor = 1 + 1 / (count **2)
    product *= factor
    if factor < (1 + tol):
        return product, count
    else:
        return multiplication2(tol, count, product)

tol = float(input("Toleranse: "))
product, count = multiplication2(tol)
print("Rekursjonsdybden er", count)
print("Produktet ble:", product)
