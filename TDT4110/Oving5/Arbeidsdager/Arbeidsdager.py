def isLeapYear(year):
    if year % 400 == 0:
        return True
    if year % 100 == 0:
        return False
    if year % 4 == 0:
        return True
    return False

def weekdayNewYear(year):
    totNumDays = 0
    for y in range(1900, year):
        if isLeapYear(y):
            totNumDays += 2
        else:
            totNumDays += 1
    return totNumDays % 7
    

def weekdayNumToString(weekday):
    if weekday == 0: return "man"
    if weekday == 1: return "tir"
    if weekday == 2: return "ons"
    if weekday == 3: return "tor"
    if weekday == 4: return "fre"
    if weekday == 5: return "lor"
    if weekday == 6: return "son"


def isWorkday(day):
    if day < 0 or day > 6:
        print("Invalid input!")
        return None
    if day < 5:
        return True
    return False


def workdaysInYear(year):
    startDay = weekdayNewYear(year)
    totNumDays = 52 * 5
    isLeap = isLeapYear(year)

    if (startDay == 5) or (startDay == 6 and isLeap == False):
        #The extra day(s) is/are weekends
        return totNumDays
    if (startDay == 4) or (startDay == 6 and isLeap == True) or (isLeap == False):
        #There is one extra weekday
        return totNumDays + 1
    #There are two extra weekdays
    return totNumDays + 2


def printStartDayInYears():
    for year in range(1900, 1920):
        print(year, weekdayNumToString(weekdayNewYear(year)))


def PrintWorkdaysInYears():
    for year in range(1900, 1920):
        print(year, workdaysInYear(year))


def main():
    print("Oppgave A")
    printStartDayInYears()
    print("\nOppgave B")
    PrintWorkdaysInYears()
              
main()
