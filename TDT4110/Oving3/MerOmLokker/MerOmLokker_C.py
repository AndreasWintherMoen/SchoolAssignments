numTries = 0
correctAnswer = "alofi"

while True:
    guess = input("Hva heter hovedstaden til Niue? ").lower()
    numTries += 1
    if (guess == correctAnswer):
        break
    else:
        print("Det var feil, prøv igjen.")

print("Korrekt! Du brukte", numTries, "forsøk.")
