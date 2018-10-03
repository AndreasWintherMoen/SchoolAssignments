r = 0.5
n = 4
totalSum = 0
current = 0
limit = 2
tolerance = 0.001
while (abs(limit - totalSum) > tolerance):
    totalSum += r**current
    current += 1
print("For å være innenfor toleransegrensen:", tolerance, "kjørte løkken", current, "ganger.")
print("Differansen mellom virkelig og estimert verdi var da", abs(limit - totalSum))
