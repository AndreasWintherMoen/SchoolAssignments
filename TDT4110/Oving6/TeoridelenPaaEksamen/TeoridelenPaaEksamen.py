fasit = ['A', 'C', 'B', 'D', 'A', 'A', 'B', 'A', 'C', 'A',
         'D', 'A', 'C', 'C', 'B', 'A', 'B', 'A', 'C', 'D']

def studentAnswer(answerList):
    numCorrect = 0
    for i in range(len(answerList)):
        if (answerList[i] == fasit[i]):
            numCorrect += 1
    return numCorrect / len(answerList)

print(studentAnswer(['A', 'C', 'B', 'D', 'A', 'A', 'B', 'A', 'C', 'A', 'D', 'A', 'C', 'C', 'B', 'A', 'B', 'A', 'A', 'C']))
print(studentAnswer(fasit))
print(studentAnswer(['B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B']))
