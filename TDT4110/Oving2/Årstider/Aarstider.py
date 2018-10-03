month = input("Måned: ")
day = int(input("Day: "))

if (month == "januar" or month == "februar" or (month == "mars" and day < 20) or (month == "desember" and day >= 21)):
    print("Vinter")
elif ((month == "mars" and day >= 20) or month == "april" or month == "mai" or (month == "juni" and day < 21)):
    print("Vår")
elif ((month == "juni" and day >= 21) or month == "juli" or month == "august" or (month == "september" and day < 22)):
    print("Sommer")
else:
    print("Høst")
