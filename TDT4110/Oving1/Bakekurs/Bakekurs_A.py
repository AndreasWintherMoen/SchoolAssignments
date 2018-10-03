sugarPerRecipe = 400.0
butterPerRecipe = 320.0
chocolatePerRecipe = 500.0
eggPerRecipe = 2.0
flourPerRecipe = 460.0
cookiesPerRecipe = 48.0

numCookies = int(input("Hvor mange cookies ønsker du å bake? "))
print("Antall cookies: ", numCookies)
relativeCookies = numCookies / cookiesPerRecipe
print("Sukker(g): ", sugarPerRecipe * relativeCookies)
print("Smør(g): ", butterPerRecipe * relativeCookies)
print("Sjokolade(g): ", chocolatePerRecipe * relativeCookies)
print("Egg: ", eggPerRecipe * relativeCookies)
print("Hvetemel(g): ", flourPerRecipe * relativeCookies)
