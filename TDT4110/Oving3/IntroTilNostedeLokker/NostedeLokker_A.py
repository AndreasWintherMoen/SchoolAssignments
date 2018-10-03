numStud = int(input("Hvor mange studenter? "))
numCourses = int(input("Hvor mange emner? "))

for student in range(numStud):
    for course in range(numCourses):
        print("Stud", student + 1, "elsker Emne", course + 1, ";" ,end=" ")
    print()
