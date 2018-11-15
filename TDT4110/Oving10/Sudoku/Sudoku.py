import random
import time
import sys
import threading

TIME_LIMIT_PER_LINE = 5
BOARD_GENERATED = False

def PrintBoard(board):
    print("     0 1 2   3 4 5   6 7 8  ")
    for i in range(9):
        if (i == 0 or i == 3 or i == 6):
            print("   +-------+-------+-------+")
        print("", i, end=" ")
        for j in range(9):
            if (j == 0 or j == 3 or j == 6):
                print("|", end=" ")
            print(board[i][j], end=" ")
            if (j == 8):
                print("|", end=" ")
        print()
        if (i == 8):
            print("   +-------+-------+-------+")
            

def GenerateBoard():
    board = CreateSolvedBoard()
    global BOARD_GENERATED
    BOARD_GENERATED = True
    print("Successfully generated board")
    PrintBoard(board)

def CreateSolvedBoard():
    board = [[0] * 9] * 9

    for i in range(9):
        row = CreateRow(board, i)
        if (row == False):
            return CreateSolvedBoard()
        else:
            board[i] = row
        #print("Line " + str(i) + " successfully created.")
        #PrintBoard(board)
    
    return board

def CreateRow(currentBoard, rowNumber):
    startTime = time.time()
    row = [i for i in range(1,10)]
    while (True):
        random.shuffle(row)
        if (RowIsValid(currentBoard, row, rowNumber)):
            break
        if (time.time() - startTime > TIME_LIMIT_PER_LINE):
            print("Too much time spent on line. Recreating board")
            return False
    return row
    
def RowIsValid(board, row, rowNumber):
    #We insert the row in the board and check if board is still correct
    board[rowNumber] = row
    #Verify columns uniqueness
    #PrintBoard(board)
    for c in range(9):
        if (VerifyColumn(board, c) == False):
            return False
    #Verify boxes uniqueness
    for r in range(0,9,3):
        for c in range(0,9,3):
            if (VerifyBox(board, r, c) == False):
                return False
    #All colums and all boxes are unique, which means the row is valid
    return True

def VerifyColumn(board, colNumber):
    col = []
    for row in range(9):
        col.append(board[row][colNumber])
    if (LineIsUnique(col) == False):
        #print("Invalid column")
        return False
    return True

def VerifyBox(board, rowNumber, colNumber):
    box = []
    for r in range(rowNumber, rowNumber + 3):
        for c in range(colNumber, colNumber + 3):
            box.append(board[r][c])
    if (LineIsUnique(box)):
        return True
    #print("Invalid box")
    return False
                      
def LineIsUnique(line):
    uniqueLine = []
    for item in line:
        if item not in uniqueLine or item == 0:
            uniqueLine.append(item)
        else:
            return False
    return True

def LoadingMessageInterval():
    sys.stdout.write('Generating board...' + '\n')
    time.sleep(1)
    sys.stdout.flush()

def main():
    #avgTime = 0
    #for i in range(1000):
    #    start = time.time()
    #    GenerateBoard()
    #    end = time.time()
    #    print("Successfully generated board in", (end - start), "seconds")

    #GenerateBoard()

    boardGeneration = threading.Thread(name="boardGen", target=GenerateBoard)
    boardGeneration.start()
    while (boardGeneration.isAlive() and BOARD_GENERATED == False):
        LoadingMessageInterval()
    

main()
