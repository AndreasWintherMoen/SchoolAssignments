def makeBoard(boardString):
    output = [["" for i in range(5)] for j in range(5)]

    for x in range(5):
        for y in range(5):
            if (boardString[x * 5 + y] == "."):
                output[x][y] = None
            else:
                output[x][y] = boardString[x * 5 + y]
    return output


def getPiece(board, x, y):
    #returns the piece at a given 1-indexed position
    return board[y - 1][x - 1]


def isWhite(board, x, y):
    return True if (ord(getPiece(board, x, y)) < 91) else False


def getLegalMoves(board, x, y):
    piece = getPiece(board, x, y)
    if (piece == None or piece.lower() != "p"):
        #not a pawn, logic for other pieces not yet implemented
        return
    output = []
    if (isWhite(board, x, y)):
        if (getPiece(board, x, y - 1) == None):
            output.append((x, y - 1))
        if (y == 4 and getPiece(board, x, 2) == None):
            output.append((x, 2))
        if (x > 1 and getPiece(board, x - 1, y - 1) != None and isWhite(board, x - 1, y - 1) == False):
            output.append((x - 1, y - 1))
        if (x < 5 and getPiece(board, x + 1, y - 1) != None and isWhite(board, x + 1, y - 1) == False):
            output.append((x + 1, y - 1))       
    else:
        if (getPiece(board, x, y + 1) == None):
            output.append((x, y + 1))
        if (y == 2 and getPiece(board, x, 4) == None):
            output.append((x, y + 2))
        if (x > 1 and getPiece(board, x - 1, y + 1) != None and isWhite(board, x - 1, y + 1)):
            output.append((x - 1, y + 1))
        if (x < 5 and getPiece(board, x + 1, y + 1) != None and isWhite(board, x + 1, y + 1)):
            output.append((x + 1, y + 1))
    return output
        

board = makeBoard('rkn.r.p.....P..PP.PPB.K..')

#print(getPiece(board, 1, 3))
print(getLegalMoves(board, 3, 3))
