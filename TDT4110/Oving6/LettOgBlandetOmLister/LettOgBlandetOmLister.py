def isSixAtEdge(list):
    if (list[0] == 6 or list[len(list) - 1] == 6):
        return True
    return False

def average(list):
    return (sum(list) / len(list))

def median(list):
    list.sort()
    return (list[int(len(list) / 2)])

#A
print(isSixAtEdge([1,2,3,4,5,6]))
print(isSixAtEdge([1,2,3,4,5,6,7]))

#B
print(average([1,3,5,7,9,11]))

#C
print(median([1,2,4,5,7,9,10]))
print(median([1,4,2,5,3]))
