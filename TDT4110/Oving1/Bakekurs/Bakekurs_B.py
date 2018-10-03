sugarPerRecipe = 400.0
chocolatePerRecipe = 500.0
cookiesPerRecipe = 48.0

numCookiesFirst = int(input("Hvor mange cookies vil du lage? "))
numCookiesSecond = int(input("Og hvor mange cookies vil du lage nå? "))
numCookiesThird = int(input("Og hvor mange cookies vil du lage til slutt? "))

print("Antall cookies:".ljust(15), "Sukker(g)".rjust(15), "Sjokolade(g)".rjust(15))
print(str(numCookiesFirst).ljust(15), str(sugarPerRecipe * numCookiesFirst / cookiesPerRecipe).rjust(15), str(chocolatePerRecipe * numCookiesFirst / cookiesPerRecipe).rjust(15))
print(str(numCookiesSecond).ljust(15), str(sugarPerRecipe * numCookiesSecond / cookiesPerRecipe).rjust(15), str(chocolatePerRecipe * numCookiesSecond / cookiesPerRecipe).rjust(15))
print(str(numCookiesThird).ljust(15), str(sugarPerRecipe * numCookiesThird / cookiesPerRecipe).rjust(15), str(chocolatePerRecipe * numCookiesThird / cookiesPerRecipe).rjust(15))

