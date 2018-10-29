import math

def checkEqual(str1, str2):
    for i in range(len(str1)):
        if str1[i] != str2[i]:
            return False
    return True

def reversedWord(string):
    reversedString = ""
    for i in range(len(string)-1,-1,-1):
        reversedString += string[i]
    return reversedString

def checkPalindrome(string):
    for i in range(math.ceil(len(string)/2)):
        if (string[i] != string[len(string)-1-i]):
            return False
    return True

def containsString(str1, str2):
    for i in range(len(str1)):
        for j in range(len(str2)):
            if (str2[j] != str1[i+j]):
                break
            if (j == len(str2) - 1):
                return i
    return -1


#A
str1 = 'hei'
str2 = 'hello'
str3 = 'hello'
print(checkEqual(str1, str2))
print(checkEqual(str3, str2))

#B
string = 'star desserts'
print(reversedWord(string))

#C
str1 = 'agnes i senga'
str2 = 'hello'
print(checkPalindrome(str1))
print(checkPalindrome(str2))

#D
str1 = 'pepperkake'
str2 = 'per'
str3 = 'ola'
print(containsString(str1, str2))
print(containsString(str1, str3))
