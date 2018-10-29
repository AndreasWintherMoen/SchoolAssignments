def uppercase(text):
    text = text.strip()
    text = text.upper()
    return text

def splitText(text, splitChar):
    return text.split(splitChar)

print(uppercase(" \n  The Sky's Awake So I'm Awake  \t  "))
print(splitText("Hakuna Matata", "a"))
