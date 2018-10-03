avogadro = 6.022e23
compound = input("Si et stoff du er i besittelse av: ")
weight = float(input("Hva er molvekt i gram for " + compound + "? "))
grams = float(input("Hvor mange gram har du? "))
molecules = grams / weight * avogadro
print("Du har ", format(molecules, '.1e'), " molekyler ", compound)
