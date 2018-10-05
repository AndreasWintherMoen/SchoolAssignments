def knop2km_t(knop):
    return knop * 0.514444444 * 3.6
  
  
# skript
knop = float(input("Oppgi fart i knop:"))
km_t = knop2km_t(knop)
print("Det blir", round(km_t, 2), "km/t")
