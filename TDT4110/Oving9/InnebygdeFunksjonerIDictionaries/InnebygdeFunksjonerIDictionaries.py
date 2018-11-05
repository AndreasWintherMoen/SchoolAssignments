#B
fruit = {}
fruit["epler"] = 2
fruit["pærer"] = 3
fruit["appelsiner"] = 1
print("Oppgave B:")
print(fruit)


#C
del fruit["epler"]
del fruit["pærer"]
del fruit["appelsiner"]
fruit["mango"] = 2
fruit["bananer"] = 3
print("\nOppgave C:")
print(fruit)

#D
print("\nOppgave D:")
for value in fruit.values():
    print(value)

#E
print("\nOppgave E:")
if ("bananer" in fruit.keys()):
    del fruit["bananer"]
print(fruit)

#F
print("\nOppgave F:")
fruit["jordbær"] = 10
fruit["blåbær"] = 50
fruit["bringebær"] = 30
for key, value in fruit.items():
    print(key, value)
