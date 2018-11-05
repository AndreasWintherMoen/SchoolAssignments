myFamily = dict()

def addFamilyMember(role, name):
    if role in myFamily:
        myFamily[role].append(name)
    else:
        myFamily[role] = [name]

def printFamily():
    for key, value in myFamily.items():
        print(key + ": ", end="")
        for i in range(len(value)):
            print(value[i], end="")
            if (i < len(value)-2):
                print(", ", end="")
            elif (i == len(value) - 2):
                print(" og ", end="")
        print()


addFamilyMember('bror', 'Arne')
addFamilyMember('bror', 'Geir')
addFamilyMember('bror', 'Tom')
addFamilyMember('bror', 'Petter')
addFamilyMember('søster', 'Marie')
addFamilyMember('søster', 'Ingrid')
addFamilyMember('mor', 'Anne')
addFamilyMember('far', 'Markus')

printFamily()
