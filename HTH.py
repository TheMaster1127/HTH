# Define a dictionary to store dynamic variables
variables = {}

def LoopParseFunc(var, delimiter1="", delimiter2=""):
    import re
    if not delimiter1 and not delimiter2:
        # If no delimiters are provided, return a list of characters
        items = list(var)
    else:
        # Construct the regular expression pattern for splitting the string
        pattern = r'[' + re.escape(delimiter1) + re.escape(delimiter2) + r']+'
        # Split the string using the constructed pattern
        items = re.split(pattern, var)
    return items

def InStr(Haystack, Needle, CaseSensitive=True, StartingPos=1, Occurrence=1):
    if Haystack is None or Needle is None:
        return False
    StartingPos = max(StartingPos, 1)
    if not CaseSensitive:
        Haystack = Haystack.lower()
        Needle = Needle.lower()
    count = 0
    for i in range(StartingPos - 1, len(Haystack)):
        if Haystack[i:i + len(Needle)] == Needle:
            count += 1
            if count == Occurrence:
                return True
    return False  
def SubStr(str, startPos, length=None):
    if str is None or str == "":
        return ""
    if length is None or length == "":
        length = len(str) - startPos + 1
    if startPos < 1:
        startPos = len(str) + startPos
    return str[startPos - 1:startPos - 1 + length]
def Trim(inputString):
    if inputString is None:
        return ""
    return inputString.strip()
  
def StrReplace(originalString, find, replaceWith):
    # Use the replace method to replace occurrences of 'find' with 'replaceWith'
    return originalString.replace(find, replaceWith)
def StringTrimLeft(input, numChars):
    # Convert input to a string if it's not already a string
    if not isinstance(input, str):
        input = str(input)  # Convert input to string
    # Check if the input is long enough to perform trimming
    if len(input) >= numChars:
        return input[numChars:]  # Trim the string from the left
    else:
        return input  # Return input unchanged if numChars is larger than string length
def StringTrimRight(input, numChars):
    # Convert input to a string if it's not already a string
    if not isinstance(input, str):
        input = str(input)  # Convert input to string
    # Check if the input is long enough to perform trimming
    if len(input) >= numChars:
        return input[:-numChars]  # Trim the string from the right
    else:
        return input  # Return input unchanged if numChars is larger than string length
def StrLower(string):
    return string.lower()
def RegExReplace(inputStr, regexPattern, replacement):
    # Create a regular expression object using the provided pattern
    import re
    regex = re.compile(regexPattern, re.MULTILINE)  # re.MULTILINE for multi-line matching
    # Use the sub() method to perform the regex replacement
    resultStr = regex.sub(replacement, inputStr)
    # Return the modified string
    return resultStr
def StrSplit(inputStr, delimiter, num):
    # Check if the delimiter is empty
    if delimiter == '':
        # Return an empty string since splitting with an empty delimiter is not possible
        return ''
    # Split the input string based on the delimiter
    parts = inputStr.split(delimiter)
    # Return the part specified by the num parameter (1-based index)
    if 0 < num <= len(parts):
        return parts[num - 1]  # Return the specified part (0-based index)
    else:
        return ''  # Return an empty string if num is out of range
def Chr(number):
    # Check if the number is None
    if number is None:
        # Return an empty string
        return ""
    # Check if the number is within the valid Unicode range
    if 0 <= number <= 0x10FFFF:
        # Convert the number to a character using chr()
        return chr(number)
    else:
        # Return an empty string for invalid numbers
        return ""

# Custom Mod function in Python
def Mod(dividend, divisor):
    return dividend % divisor
import os
def FileRead(path):
    # Remove any extra double quotes around the path
    path = path.strip('"')
    # Ensure the path is absolute
    if not os.path.isabs(path):
        path = os.path.join(os.getcwd(), path)
    try:
        with open(path, 'r', encoding='utf-8', errors='ignore') as file:
            content = file.read()
        return content
    except FileNotFoundError:
        return ''
    except Exception as e:
        return None
import os
def FileAppend(content, path):
    # Remove any extra double quotes around the path
    path = path.strip('"')
    # Ensure the path is absolute
    if not os.path.isabs(path):
        path = os.path.join(os.getcwd(), path)
    try:
        with open(path, 'a', encoding='utf-8') as file:  # 'a' mode for append
            file.write(content)
        return True
    except Exception as e:
        return False
import os
def FileDelete(path):
    # Ensure the path is absolute
    if not os.path.isabs(path):
        path = os.path.join(os.getcwd(), path)
    try:
        if os.path.exists(path):
            os.remove(path)
    except Exception:
        pass    

import os
import sys
def GetParams():
    # Check if any command line arguments are provided
    if len(sys.argv) < 2:
        return ""
    # Store the provided command line arguments
    params = []
    for arg in sys.argv[1:]:
        if os.path.exists(arg):
            arg = os.path.abspath(arg)
        params.append(arg)
    return "\n".join(params)
#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
# Name:
# HTH
#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
# HTH, which stands for HeavenToHell, is a dynamically typed, transpiled high-level programming language designed for simplicity, ease of use, and versatility. Inspired by the syntax of AutoHotkey, HTH offers a user-friendly environment for beginners to learn programming and build web apps.
#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
def ifTheLineIsAFuncDec(sstrgjvkh, theFuncWeFound):
    variables['sstrgjvkh'] = sstrgjvkh
    variables['theFuncWeFound'] = theFuncWeFound
    items = LoopParseFunc(variables['theFuncWeFound'], "\n", "\r")
    for A_Index1, A_LoopField1 in enumerate(items, start=1):
        variables['A_Index1'] = A_Index1
        variables['A_LoopField1'] = A_LoopField1
        variables['numOfChars'] = 0
        items = LoopParseFunc(variables['A_LoopField1'])
        for A_Index2, A_LoopField2 in enumerate(items, start=1):
            variables['A_Index2'] = A_Index2
            variables['A_LoopField2'] = A_LoopField2
            variables['numOfChars'] += 1
        variables['ALoopFieldd'] = StrSplit(variables['A_LoopField1'] , Chr(40), 1)
        variables['ALoopFieldd2'] = StrSplit(variables['sstrgjvkh'] , Chr(40), 1)
        if (SubStr(variables['ALoopFieldd'] , 1 , variables['numOfChars'])== variables['ALoopFieldd2'])and(InStr(variables['sstrgjvkh'] , Chr(40))):
            return True
    return False
def isVarAnumKindaVar(sstrrrrr):
    variables['sstrrrrr'] = sstrrrrr
    variables['sstrLettersStart'] = 48
    for A_Index3 in range(1, 10 + 1):
        variables['A_Index3'] = A_Index3
        if (InStr(variables['sstrrrrr'] , Chr(variables['sstrLettersStart']))):
            return True
        variables['sstrLettersStart'] += 1
    if (InStr(variables['sstrrrrr'] , Chr(95))):
        return True
    return False
def varDetect(sstrrrrr):
    variables['sstrrrrr'] = sstrrrrr
    variables['sstrLettersStart'] = 97
    for A_Index4 in range(1, 26 + 1):
        variables['A_Index4'] = A_Index4
        if (InStr(variables['sstrrrrr'] , Chr(variables['sstrLettersStart']))):
            return True
        variables['sstrLettersStart'] += 1
    variables['sstrLettersStart'] = 65
    for A_Index5 in range(1, 26 + 1):
        variables['A_Index5'] = A_Index5
        if (InStr(variables['sstrrrrr'] , Chr(variables['sstrLettersStart']))):
            return True
        variables['sstrLettersStart'] += 1
    variables['sstrLettersStart'] = 48
    for A_Index6 in range(1, 10 + 1):
        variables['A_Index6'] = A_Index6
        if (InStr(variables['sstrrrrr'] , Chr(variables['sstrLettersStart']))):
            return True
        variables['sstrLettersStart'] += 1
    if (InStr(variables['sstrrrrr'] , Chr(95))):
        return True
    if (InStr(variables['sstrrrrr'] , Chr(37))):
        return True
    return False
def funcToChecIfVaidNameForFunc(sstrrrrr):
    variables['sstrrrrr'] = sstrrrrr
    # Check if the string is empty
    if ( not (variables['sstrrrrr'])):
        #MsgBox, Invalid function name: %sstrrrrr% (empty string)
        return False
    # Check if the first character is a digit (invalid for function name)
    variables['firstChar'] = SubStr(variables['sstrrrrr'] , 1 , 1)
    if (variables['firstChar'] >= "0" and variables['firstChar'] <= "9"):
        #   MsgBox, Invalid function name: %sstrrrrr% (starts with a digit)
        return False
    # Initialize a flag for validation
    variables['isValid'] = True
    # Loop through each character in the string using Loop, Parse
    items = LoopParseFunc(variables['sstrrrrr'])
    for A_Index7, A_LoopField7 in enumerate(items, start=1):
        variables['A_Index7'] = A_Index7
        variables['A_LoopField7'] = A_LoopField7
        # Check the current parsed item (character)
        variables['char'] = variables['A_LoopField7']
        # Check if the character is a valid letter, digit, or underscore
        if ( not (variables['char'] >= "A" and variables['char'] <= "Z" or variables['char'] >= "a" and variables['char'] <= "z" or variables['char'] >= "0" and variables['char'] <= "9" or variables['char'] == "_")):
            # MsgBox, Invalid character %char% in function name: %sstrrrrr%
            variables['isValid'] = False
            break
    # If passed all checks, return true (valid function name)
    return variables['isValid']
def transpileVariables(sstr123455, functionNames):
    variables['sstr123455'] = sstr123455
    variables['functionNames'] = functionNames
    variables['sstr123455'] = Trim(variables['sstr123455'])
    variables['numOfStrings'] = 0
    variables['outOftranspileVariables'] = ""
    variables['outOftranspileVariablesOut'] = variables['sstr123455']
    variables['outOftranspileVariablesOut'] = StrReplace(variables['outOftranspileVariablesOut'] , Chr(40), " ( ")
    variables['outOftranspileVariablesOut'] = StrReplace(variables['outOftranspileVariablesOut'] , Chr(41), " ) ")
    variables['outOftranspileVariablesOut'] = StrReplace(variables['outOftranspileVariablesOut'] , Chr(44), " , ")
    variables['outOftranspileVariablesOut'] = StrReplace(variables['outOftranspileVariablesOut'] , Chr(60), " < ")
    variables['outOftranspileVariablesOut'] = StrReplace(variables['outOftranspileVariablesOut'] , Chr(62), " > ")
    variables['outOftranspileVariablesOut'] = StrReplace(variables['outOftranspileVariablesOut'] , Chr(91), " [ ")
    variables['outOftranspileVariablesOut'] = StrReplace(variables['outOftranspileVariablesOut'] , Chr(93), " ] ")
    variables['wasHereVarTryUhBug'] = 1
    items = LoopParseFunc(variables['outOftranspileVariablesOut'], " ")
    for A_Index8, A_LoopField8 in enumerate(items, start=1):
        variables['A_Index8'] = A_Index8
        variables['A_LoopField8'] = A_LoopField8
        variables['howManyCharIfVar'] = 0
        items = LoopParseFunc(variables['A_LoopField8'])
        for A_Index9, A_LoopField9 in enumerate(items, start=1):
            variables['A_Index9'] = A_Index9
            variables['A_LoopField9'] = A_LoopField9
            if (varDetect(variables['A_LoopField9'])):
                variables['howManyCharIfVar'] += 1
        variables['howManyCharIfVar2'] = 0
        items = LoopParseFunc(variables['A_LoopField8'])
        for A_Index10, A_LoopField10 in enumerate(items, start=1):
            variables['A_Index10'] = A_Index10
            variables['A_LoopField10'] = A_LoopField10
            variables['howManyCharIfVar2'] += 1
        variables['istAvar'] = 0
        if (variables['howManyCharIfVar'] == variables['howManyCharIfVar2']):
            variables['istAvar'] = 1
        if (variables['istAvar'] == 1):
            variables['howManyCharIfVar'] = 0
            items = LoopParseFunc(variables['A_LoopField8'])
            for A_Index11, A_LoopField11 in enumerate(items, start=1):
                variables['A_Index11'] = A_Index11
                variables['A_LoopField11'] = A_LoopField11
                if (isVarAnumKindaVar(variables['A_LoopField11'])):
                    variables['howManyCharIfVar'] += 1
            variables['howManyCharIfVar2'] = 0
            items = LoopParseFunc(variables['A_LoopField8'])
            for A_Index12, A_LoopField12 in enumerate(items, start=1):
                variables['A_Index12'] = A_Index12
                variables['A_LoopField12'] = A_LoopField12
                variables['howManyCharIfVar2'] += 1
            variables['isNumKindaVar'] = 0
            if (variables['howManyCharIfVar2'] == variables['howManyCharIfVar']):
                variables['isNumKindaVar'] = 1
            if (variables['isNumKindaVar'] == 1):
                variables['outOftranspileVariables'] += variables['A_LoopField8'] + Chr(32)
            else:
                if (InStr(variables['A_LoopField8'] , "%")):
                    if ((SubStr(Trim(variables['A_LoopField8']), 1 , 1)== "%")and(SubStr(Trim(variables['A_LoopField8']), 0)== "%")):
                        variables['var1'] = StringTrimRight(variables['A_LoopField8'], 1)
                        variables['var1'] = StringTrimLeft(variables['var1'], 1)
                        variables['out1'] = "variables." + variables['var1']
                        variables['outOftranspileVariables'] += variables['out1'] + Chr(32)
                    else:
                        variables['var1'] = StrSplit(variables['A_LoopField8'] , "%" , 1)
                        variables['var2'] = StrSplit(variables['A_LoopField8'] , "%" , 2)
                        variables['out1'] = "variables[" + Chr(34) + variables['var1'] + Chr(34) + " + variables." + variables['var2'] + "]"
                        variables['outOftranspileVariables'] += variables['out1'] + Chr(32)
                else:
                    variables['out1'] = "variables." + variables['A_LoopField8']
                    variables['outOftranspileVariables'] += variables['out1'] + Chr(32)
        else:
            variables['outOftranspileVariables'] += variables['A_LoopField8'] + Chr(32)
        variables['wasHereVarTryUhBug'] = 0
    if (variables['wasHereVarTryUhBug'] == 1):
        variables['outOftranspileVariables'] = variables['outOftranspileVariablesOut']
    #OutputDebug, |%outOftranspileVariables%|
    items = LoopParseFunc(variables['functionNames'], "|")
    for A_Index13, A_LoopField13 in enumerate(items, start=1):
        variables['A_Index13'] = A_Index13
        variables['A_LoopField13'] = A_LoopField13
        variables['ALoopFieldFixFunc'] = variables['A_LoopField13']
        items = LoopParseFunc(variables['outOftranspileVariables'], " ")
        for A_Index14, A_LoopField14 in enumerate(items, start=1):
            variables['A_Index14'] = A_Index14
            variables['A_LoopField14'] = A_LoopField14
            if ("variables." + variables['ALoopFieldFixFunc'] == variables['A_LoopField14']):
                variables['outOftranspileVariables'] = StrReplace(variables['outOftranspileVariables'] , "variables." + variables['ALoopFieldFixFunc'] , "await " + variables['ALoopFieldFixFunc'])
    for A_Index15 in range(1, variables['numOfStrings'] + 1):
        variables['A_Index15'] = A_Index15
        variables['outOftranspileVariables'] = StrReplace(variables['outOftranspileVariables'] , "freeeeepaestine-sav-etehmtyeah-freee-n" + variables['A_Index15'] , Chr(34) + variables[f'theString{variables["A_Index15"]}'] + Chr(34))
    #OutputDebug, |%outOftranspileVariables%|
    variables['outOftranspileVariables'] = Trim(variables['outOftranspileVariables'])
    variables['outOftranspileVariables'] = StrReplace(variables['outOftranspileVariables'] , Chr(96), Chr(92))
    variables['outOftranspileVariables'] = StrReplace(variables['outOftranspileVariables'] , Chr(92) + Chr(92), Chr(96))
    variables['outOftranspileVariables'] = StrReplace(variables['outOftranspileVariables'] , "cyiasasasasstAYtheummonlyemlpystringya-a-" + Chr(100), Chr(34) + Chr(34))
    #OutputDebug, %outOftranspileVariables%
    # Check and replace "variables.false"
    if (SubStr(variables['outOftranspileVariables'] , -14)== "variables.false"):
        variables['outOftranspileVariables'] = StrReplace(variables['outOftranspileVariables'] , "variables.false" , "false")
    variables['outOftranspileVariables'] = StrReplace(variables['outOftranspileVariables'] , "variables.false " , "false ")
    # Check and replace "variables.if"
    if (SubStr(variables['outOftranspileVariables'] , -11)== "variables.if"):
        variables['outOftranspileVariables'] = StrReplace(variables['outOftranspileVariables'] , "variables.if" , "if")
    variables['outOftranspileVariables'] = StrReplace(variables['outOftranspileVariables'] , "variables.if " , "if ")
    # Check and replace "variables.else"
    if (SubStr(variables['outOftranspileVariables'] , -13)== "variables.else"):
        variables['outOftranspileVariables'] = StrReplace(variables['outOftranspileVariables'] , "variables.else" , "else")
    variables['outOftranspileVariables'] = StrReplace(variables['outOftranspileVariables'] , "variables.else " , "else ")
    # Check and replace "variables.true"
    if (SubStr(variables['outOftranspileVariables'] , -13)== "variables.true"):
        variables['outOftranspileVariables'] = StrReplace(variables['outOftranspileVariables'] , "variables.true" , "true")
    variables['outOftranspileVariables'] = StrReplace(variables['outOftranspileVariables'] , "variables.true " , "true ")
    variables['outOftranspileVariables'] = StrReplace(variables['outOftranspileVariables'] , "variables.and " , "&& ")
    variables['outOftranspileVariables'] = StrReplace(variables['outOftranspileVariables'] , "variables.or " , "|| ")
    variables['outOftranspileVariables'] = StrReplace(variables['outOftranspileVariables'] , " = " , " == ")
    variables['outOftranspileVariables'] = StrReplace(variables['outOftranspileVariables'] , " = " , " == ")
    variables['outOftranspileVariables'] = StrReplace(variables['outOftranspileVariables'] , " ( " , " (")
    variables['outOftranspileVariables'] = StrReplace(variables['outOftranspileVariables'] , " ) " , ") ")
    variables['outOftranspileVariables'] = StrReplace(variables['outOftranspileVariables'] , "  >= " , " >= ")
    variables['outOftranspileVariables'] = StrReplace(variables['outOftranspileVariables'] , "  <= " , " <= ")
    variables['outOftranspileVariables'] = StrReplace(variables['outOftranspileVariables'] , " . " , " + ")
    variables['outOftranspileVariables'] = StrReplace(variables['outOftranspileVariables'] , " ,  " , ", ")
    variables['outOftranspileVariables'] = StrReplace(variables['outOftranspileVariables'] , " [ " , "[")
    variables['outOftranspileVariables'] = StrReplace(variables['outOftranspileVariables'] , " ] " , "]")
    variables['outOftranspileVariables'] = StrReplace(variables['outOftranspileVariables'] , "!=" , " !=")
    #OutputDebug, %outOftranspileVariables%
    return variables['outOftranspileVariables']
def transpileLowVariables(sstr):
    variables['sstr'] = sstr
    variables['sstr'] = Trim(variables['sstr'])
    variables['outOftranspileVariablesOut'] = Chr(34)
    if (InStr(variables['sstr'] , Chr(37))):
        items = LoopParseFunc(variables['sstr'], "%")
        for A_Index16, A_LoopField16 in enumerate(items, start=1):
            variables['A_Index16'] = A_Index16
            variables['A_LoopField16'] = A_LoopField16
            if (Mod(variables['A_Index16'] , 2)):
                variables['outOftranspileVariablesOut'] += variables['A_LoopField16']
            else:
                variables['outOftranspileVariablesOut'] += Chr(34) + " + variables." + variables['A_LoopField16'] + " + " + Chr(34)
    else:
        variables['sstr'] = Chr(34) + variables['sstr'] + Chr(34)
        return variables['sstr']
    variables['outOftranspileVariablesOut'] = variables['outOftranspileVariablesOut'] + Chr(34)
    return variables['outOftranspileVariablesOut']
def ExtractFileNameWithoutExtension(path):
    variables['path'] = path
    if (InStr(variables['path'] , Chr(47))):
        items = LoopParseFunc(variables['path'], "/")
        for A_Index17, A_LoopField17 in enumerate(items, start=1):
            variables['A_Index17'] = A_Index17
            variables['A_LoopField17'] = A_LoopField17
            variables['lastFileName'] = variables['A_LoopField17']
        variables['lastFileName'] = StringTrimRight(variables['lastFileName'], 4)
    if (InStr(variables['path'] , Chr(92))):
        items = LoopParseFunc(variables['path'], Chr(92))
        for A_Index18, A_LoopField18 in enumerate(items, start=1):
            variables['A_Index18'] = A_Index18
            variables['A_LoopField18'] = A_LoopField18
            variables['lastFileName'] = variables['A_LoopField18']
        variables['lastFileName'] = StringTrimRight(variables['lastFileName'], 4)
    return variables['lastFileName']
def Ascc(string):
    variables['string'] = string
    variables['plusOffsetLowercase'] = 96
    variables['plusOffsetUpercase'] = 64
    variables['lowerCaseLetters'] = "abcdefghijklmnopqrstuvwxyz"
    variables['uperCaseLetters'] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    items = LoopParseFunc(variables['lowerCaseLetters'])
    for A_Index19, A_LoopField19 in enumerate(items, start=1):
        variables['A_Index19'] = A_Index19
        variables['A_LoopField19'] = A_LoopField19
        if (variables['A_LoopField19'] == variables['string']):
            return variables['A_Index19'] + variables['plusOffsetLowercase']
    items = LoopParseFunc(variables['uperCaseLetters'])
    for A_Index20, A_LoopField20 in enumerate(items, start=1):
        variables['A_Index20'] = A_Index20
        variables['A_LoopField20'] = A_LoopField20
        if (variables['A_LoopField20'] == variables['string']):
            return variables['A_Index20'] + variables['plusOffsetUpercase']
    return 32
def TitleCaseString(string):
    variables['string'] = string
    variables['text'] = StrLower(variables['string'])
    variables['out'] = ""
    items = LoopParseFunc(variables['text'], "\n", "\r")
    for A_Index21, A_LoopField21 in enumerate(items, start=1):
        variables['A_Index21'] = A_Index21
        variables['A_LoopField21'] = A_LoopField21
        variables['out1'] = ""
        items = LoopParseFunc(variables['A_LoopField21'])
        for A_Index22, A_LoopField22 in enumerate(items, start=1):
            variables['A_Index22'] = A_Index22
            variables['A_LoopField22'] = A_LoopField22
            if (variables['A_Index22'] == 1):
                variables['out1'] += Chr(Ascc(variables['A_LoopField22'])- 32)
            else:
                variables['out1'] += variables['A_LoopField22']
        variables['out'] += variables['out1'] + " "
    variables['out'] = StringTrimRight(variables['out'], 1)
    return variables['out']
def CountCommasWithoutBacktick(s):
    variables['s'] = s
    variables['bbbackitck'] = Chr(96)
    variables['howManyCommasWhitBacktickAtTheBegining'] = 0
    variables['AIndex'] = 0
    items = LoopParseFunc(variables['s'], " ")
    for A_Index23, A_LoopField23 in enumerate(items, start=1):
        variables['A_Index23'] = A_Index23
        variables['A_LoopField23'] = A_LoopField23
        if (InStr(variables['A_LoopField23'] , ","))and( not (InStr(variables['A_LoopField23'] , variables['bbbackitck'] + ","))):
            variables['AIndex'] += 1
            #~ MsgBox, %A_LoopField23%
            #~ MsgBox, AIndex %AIndex%
        #~ MsgBox, % bbbackitck . ","
        #~ MsgBox, % A_LoopField23
        if (InStr(variables['A_LoopField23'] , variables['bbbackitck'] + ",")):
            variables['howManyCommasWhitBacktickAtTheBegining'] += 1
            #MsgBox, % howManyCommasWhitBacktickAtTheBegining
    if (variables['AIndex'] >= 3):
        return True
    else:
        return False
def compiler():
    variables['params'] = GetParams()
    items = LoopParseFunc(variables['params'], "\n", "\r")
    for A_Index24, A_LoopField24 in enumerate(items, start=1):
        variables['A_Index24'] = A_Index24
        variables['A_LoopField24'] = A_LoopField24
        if (variables['A_Index24'] == 1):
            #MsgBox, % A_LoopField24
            variables['filePathOfCode'] = variables['A_LoopField24']
            variables['AHKcode'] = FileRead(variables['filePathOfCode'])
        if (variables['A_Index24'] == 2):
            print(variables['A_LoopField24'])
    variables['jsCodeGui'] = ""
    variables['base64soundList'] = ""
    variables['base64soundNum'] = 0
    variables['base64iconNum'] = 0
    variables['base64iconList'] = ""
    variables['out123456'] = ""
    variables['textAfterSemicolonNum'] = 0
    variables['out123456ggFixTrim'] = ""
    variables['ifWeUseCanvasThenAddUpdateFunc1'] = ""
    variables['ifWeUseCanvasThenAddUpdateFunc2'] = ""
    variables['varOutJsCanvasFixTranspernat'] = ""
    variables['rectangleId'] = 0
    variables['switchId'] = 0
    variables['CheckboxId'] = 0
    variables['IDEId'] = 0
    variables['videoId'] = 0
    variables['IframeId'] = 0
    variables['DropDownListId'] = 0
    variables['ifWeUseCanvas'] = 0
    variables['weUseCnanvasAtALL'] = 0
    variables['weUseCnanvasAtALLEver'] = 0
    variables['libNum'] = 0
    variables['isFullScrenOnce'] = 0
    variables['filenameOfHTH'] = ExtractFileNameWithoutExtension(variables['filePathOfCode'])
    variables['TextData'] = ""
    variables['out'] = ""
    variables['base64ImageData'] = ""
    variables['base64soundList'] = ""
    variables['base64iconList'] = ""
    variables['base64VideoData'] = ""
    variables['jsCode01CanvasW'] = ""
    variables['jsCode01CanvasH'] = ""
    variables['skipLeftCuleyForFuncPLS'] = 0
    variables['eavbnsalvbaslv'] = 0
    variables['ifWeUseCanvas'] = 0
    variables['weUseCnanvasAtALL'] = 0
    variables['numOfTextData'] = 0
    variables['funcs'] = "let funcs = {\n"
    variables['doWeEvenDecAnyFuncHUH'] = 0
    variables['onKeyPress'] = ""
    variables['jsCodeGui'] = ""
    variables['isFullScrenOnce'] = 0
    variables['HotKeyCalledHotKyes'] = ""
    variables['jsCode'] = ""
    variables['outAHKCodeTrimed'] = ""
    variables['guiColorShow'] = "linear-gradient(90deg, " + Chr(34) + " + " + Chr(34) + "#121212" + Chr(34) + " + " + Chr(34) + " 0" + Chr(37) + ", " + Chr(34) + " + " + Chr(34) + "#121212" + Chr(34) + " + " + Chr(34) + " 100" + Chr(37) + ")"
    variables['guiFontShow'] = "15"
    variables['nothing'] = ""
    if (variables['AHKcode'] == ""):
        variables['AHKcode'] = "OutputDebug, no code"
    variables['AHKcode'] = StrReplace(variables['AHKcode'] , Chr(13), "")
    items = LoopParseFunc(variables['AHKcode'], "\n", "\r")
    for A_Index25, A_LoopField25 in enumerate(items, start=1):
        variables['A_Index25'] = A_Index25
        variables['A_LoopField25'] = A_LoopField25
        variables['outAHKCodeTrimed'] += Trim(variables['A_LoopField25']) + "\n"
    variables['AHKcode'] = StringTrimRight(variables['outAHKCodeTrimed'], 1)
    variables['AHKcodeOUT754754'] = ""
    variables['areWEinSome34sNum'] = 0
    variables['theIdNumOfThe34'] = 0
    items = LoopParseFunc(variables['AHKcode'])
    for A_Index26, A_LoopField26 in enumerate(items, start=1):
        variables['A_Index26'] = A_Index26
        variables['A_LoopField26'] = A_LoopField26
        variables[f'theIdNumOfThe34theVar{variables["A_Index26"]}'] = Chr(34)
    items = LoopParseFunc(variables['AHKcode'])
    for A_Index27, A_LoopField27 in enumerate(items, start=1):
        variables['A_Index27'] = A_Index27
        variables['A_LoopField27'] = A_LoopField27
        if (variables['A_LoopField27'] == Chr(34)):
            variables['areWEinSome34sNum'] += 1
        if (variables['areWEinSome34sNum'] == 1):
            if (variables['A_LoopField27']  != Chr(34)):
                if (variables['A_LoopField27'] == Chr(96)):
                    variables[f'theIdNumOfThe34theVar{variables["theIdNumOfThe34"]}'] += Chr(92)
                else:
                    variables[f'theIdNumOfThe34theVar{variables["theIdNumOfThe34"]}'] += variables['A_LoopField27']
            else:
                variables['theIdNumOfThe34'] += 1
                variables['AHKcodeOUT754754'] += "ihuiuuhuuhtheidFor--asas-theuhturtyphoutr-" + Chr(65) + Chr(65) + str(variables['theIdNumOfThe34']) + Chr(65) + Chr(65)
        if (variables['areWEinSome34sNum'] == 2)or(variables['areWEinSome34sNum'] == 0):
            if (variables['A_LoopField27']  != Chr(34)):
                variables['AHKcodeOUT754754'] += variables['A_LoopField27']
            variables['areWEinSome34sNum'] = 0
    variables['AHKcode'] = variables['AHKcodeOUT754754']
    for A_Index28 in range(1, variables['theIdNumOfThe34'] + 1):
        variables['A_Index28'] = A_Index28
        variables[f'theIdNumOfThe34theVar{variables["A_Index28"]}'] += Chr(34)
    variables['sstr23IfFuncInNAMEnum'] = 0
    variables['CheckIFandElsesss1'] = "if ("
    variables['CheckIFandElsesss2'] = "if("
    variables['CheckIFandElsesss3'] = "if !("
    variables['CheckIFandElsesss4'] = "if!("
    variables['CheckIFandElsesss5'] = "else if ("
    variables['CheckIFandElsesss6'] = "else if("
    variables['CheckIFandElsesss7'] = "else if !("
    variables['CheckIFandElsesss8'] = "else if!("
    variables['CheckIFandElsesssNum'] = 0
    variables['onceImportTime'] = 0
    variables['weUseRandomAtLeastOnce'] = 0
    variables['base64ImageNum'] = 0
    variables['NumOfEdits'] = 0
    variables['NumOfButtons'] = 0
    variables['NumOfPictures'] = 0
    variables['onceGuiAdd'] = 0
    variables['NumOfTexts'] = 0
    variables['GuiNumber'] = ""
    variables['haveWeEverUsedAloop'] = 0
    variables['usedLib'] = ""
    variables['putEndPointFlask1Up'] = ""
    variables['putEndPointFlask2Down'] = ""
    variables['AindexcharLength'] = 1
    variables['jsCodeAcurlyBraceAddSomeVrasFixNL'] = 0
    variables['jsCodeAcurlyBraceAddSomeVrasFixLP'] = 0
    variables['AHKcodeLoopfixa'] = ""
    variables['base64soundNum'] = 0
    variables['out'] = ""
    variables['fontName'] = ""
    variables['skipLeftCuleyForFuncPLS'] = 0
    variables['eavbnsalvbaslv'] = 0
    variables['theMainFuncDec'] = 0
    variables['upCode'] = ""
    variables['varOutJsCanvasFixTranspernat'] = ""
    variables['functionNames'] = "eval|str|showCustomMessageBox|BuildInVars|MakeHotKey|Abs|ACos|ASin|ATan|Ceil|Cos|Exp|Floor|Ln|Log|Round|Sin|Sqrt|Tan|Chr|sleep|InStr|RegExMatch|StrLen|getRandomNumber|SubStr|Trim|ParseInt|StrReplace|Mod|Asc|StringTrimLeft|StringTrimRight|isMobileDevice|SetTimer|GuiControl|getDataFromEndpoint|FileAppend|isConnectedToBackend|MouseGetPos|SoundPlay|StoreLocally|createToggleSwitch|getUrlParams|reloadWithParams|PlayVideoFromBase64|PlayVideoFromUrl|PlayYoutubeVid|changeFavicon|OnKeyPress|GetKeyState|createCustomDropdown|StrLower|getDataFromAPI|getDataFromJSON|createCheckbox|createCustomIframe|StrSplit|RegExReplace|AddIDE|runPyCode|SortLikeAHK"
    variables['awesdrtf'] = "|A" + Chr(95) + "LoopField|A" + Chr(95) + "Index"
    variables['willNextLineBeCurlyBracee'] = 0
    variables['theFuncWeFound'] = ""
    variables['theFuncWeFoundAllNames'] = ""
    variables['haveWeEverUsedAloop'] = 0
    items = LoopParseFunc(variables['AHKcode'], "\n", "\r")
    for A_Index29, A_LoopField29 in enumerate(items, start=1):
        variables['A_Index29'] = A_Index29
        variables['A_LoopField29'] = A_LoopField29
        if (variables['willNextLineBeCurlyBracee'] == 1):
            # 123 is {
            if (variables['A_LoopField29'] == Chr(123)):
                variables['willNextLineBeCurlyBracee'] = 0
                variables['functionNames'] += "|" + variables['lastFuncName']
                #lastFuncFullName
                variables['theFuncWeFound'] += variables['lastFuncFullName'] + "\n"
                variables['theFuncWeFoundAllNames'] += variables['lastFuncName'] + Chr(40) + "\n"
        if (SubStr(StrLower(variables['A_LoopField29']), 1 , 4)== variables['CheckIFandElsesss1'])or(SubStr(StrLower(variables['A_LoopField29']), 1 , 3)== variables['CheckIFandElsesss2'])or(SubStr(StrLower(variables['A_LoopField29']), 1 , 5)== variables['CheckIFandElsesss3'])or(SubStr(StrLower(variables['A_LoopField29']), 1 , 4)== variables['CheckIFandElsesss4'])or(SubStr(StrLower(variables['A_LoopField29']), 1 , 9)== variables['CheckIFandElsesss5'])or(SubStr(StrLower(variables['A_LoopField29']), 1 , 8)== variables['CheckIFandElsesss6'])or(SubStr(StrLower(variables['A_LoopField29']), 1 , 10)== variables['CheckIFandElsesss7'])or(SubStr(StrLower(variables['A_LoopField29']), 1 , 9)== variables['CheckIFandElsesss8'])or(SubStr(StrLower(variables['A_LoopField29']), 1 , 5)== "loop,"):
            # not a func
            variables['willNextLineBeCurlyBracee'] = 0
            #OutputDebug, %A_LoopField29%
        else:
            #OutputDebug, ||%A_LoopField29%||
            variables['sstrForCheckIfFunc'] = StrSplit(variables['A_LoopField29'] , Chr(40), 1)
            #OutputDebug, |%sstrForCheckIfFunc%|
            if (funcToChecIfVaidNameForFunc(Trim(variables['sstrForCheckIfFunc'])))and(variables['sstrForCheckIfFunc']  != "")and(InStr(variables['A_LoopField29'] , Chr(40))):
                variables['willNextLineBeCurlyBracee'] = 1
                variables['lastFuncName'] = variables['sstrForCheckIfFunc']
                variables['lastFuncFullName'] = variables['A_LoopField29']
                #OutputDebug, %lastFuncFullName%
            else:
                variables['willNextLineBeCurlyBracee'] = 0
    variables['theFuncWeFound'] = StringTrimRight(variables['theFuncWeFound'], 1)
    variables['theFuncWeFoundAllNames'] = StringTrimRight(variables['theFuncWeFoundAllNames'], 1)
    #OutputDebug, %theFuncWeFound%
    #OutputDebug, %functionNames%
    #OutputDebug, %theFuncWeFoundAllNames%
    variables['AindexcharLength'] = 1
    variables['jsCodeAcurlyBraceAddSomeVrasFixNL'] = 0
    variables['jsCodeAcurlyBraceAddSomeVrasFixLP'] = 0
    variables['jsCodeLoopfixa'] = ""
    variables['numAIndexfixFuncSyntaxBugFixNum'] = 0
    items = LoopParseFunc(variables['AHKcode'], "\n", "\r")
    for A_Index30, A_LoopField30 in enumerate(items, start=1):
        variables['A_Index30'] = A_Index30
        variables['A_LoopField30'] = A_LoopField30
        variables[f'fixFuncSyntaxBugFixNum{variables["A_Index30"]}'] = variables['A_LoopField30']
        variables['numAIndexfixFuncSyntaxBugFixNum'] = variables['A_Index30']
    variables['numAIndexfixFuncSyntaxBugFixNum'] += 1
    variables[f'fixFuncSyntaxBugFixNum{variables["numAIndexfixFuncSyntaxBugFixNum"]}'] = ""
    if (InStr(variables['AHKcode'] , "OnMouseClick:")):
        variables['AHKcodeOnMouseClickAdd'] = "\nAttw456543w45eqsubeotibebrawaaachingeventlistenertodocumentaddEventListeneThisfunnctionaftertouchends768ds798y9z7s7xcfy8s7d9fcx\n"
        variables['AHKcode'] = variables['AHKcodeOnMouseClickAdd'] + "\n" + variables['AHKcode'] + "\n"
    items = LoopParseFunc(variables['AHKcode'], "\n", "\r")
    for A_Index31, A_LoopField31 in enumerate(items, start=1):
        variables['A_Index31'] = A_Index31
        variables['A_LoopField31'] = A_LoopField31
        variables['out'] = variables['A_LoopField31']
        if (SubStr(StrLower(variables['out']), 1 , 19)== StrLower("Gui, Add, Rectangle"))or(SubStr(StrLower(variables['out']), 1 , 16)== StrLower("Gui, Add, Circle")):
            variables['weUseCnanvasAtALL'] = 1
    items = LoopParseFunc(variables['AHKcode'], "\n", "\r")
    for A_Index32, A_LoopField32 in enumerate(items, start=1):
        variables['A_Index32'] = A_Index32
        variables['A_LoopField32'] = A_LoopField32
        variables['lineDone'] = 0
        if (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 15)== StrLower("OutputDebug, % ")):
            variables['var1'] = StringTrimLeft(variables['A_LoopField32'], 14)
            variables['var2'] = Trim(transpileVariables(variables['var1'] , variables['functionNames']))
            variables['out'] = "console.log(" + variables['var2'] + ")"
            variables['lineDone'] = 1
            variables['jsCode'] += variables['out'] + "\n"
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 13)== StrLower("OutputDebug, "))and(SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 15) != StrLower("OutputDebug, % ")):
            variables['var1'] = StringTrimLeft(variables['A_LoopField32'], 12)
            variables['OUTvarMsgLow'] = transpileLowVariables(variables['var1'])
            variables['out'] = "console.log(" + variables['OUTvarMsgLow'] + ")"
            variables['lineDone'] = 1
            variables['jsCode'] += variables['out'] + "\n"
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 6)== "sort, "):
            variables['str1'] = StringTrimLeft(variables['A_LoopField32'], 6)
            variables['str1'] = Trim(variables['str1'])
            variables['weHaveAcommaFixSortCommand'] = 0
            if (SubStr(variables['str1'] , 0)== Chr(44)):
                #MsgBox, comma YES
                variables['str1'] = StringTrimRight(variables['str1'], 1)
                variables['weHaveAcommaFixSortCommand'] = 1
            else:
                #MsgBox, comma NO
                variables['gg'] = 0
            variables['s'] = StrSplit(variables['str1'] , "," , 1)
            variables['out1'] = Trim(variables['s'])
            variables['s'] = StrSplit(variables['str1'] , "," , 2)
            variables['out2'] = Trim(variables['s'])
            if (variables['weHaveAcommaFixSortCommand'] == 1):
                variables['out2'] = variables['out2'] + Chr(44)
            variables['var1'] = "variables." + variables['out1'] + " = SortLikeAHK(variables." + variables['out1'] + ", " + Chr(34) + variables['out2'] + Chr(34) + ")"
            variables['lineDone'] = 1
            variables['jsCode'] += variables['var1'] + "\n"
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 5)== StrLower("Gui, "))or(SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 4)== StrLower("Gui ")):
            variables['isFullScren'] = 0
            variables['str1'] = variables['A_LoopField32']
            variables['gradient'] = StringTrimLeft(variables['str1'], 15)
            variables['str1'] = StrReplace(variables['str1'] , ": " , ", ")
            variables['s'] = StrSplit(variables['str1'] , "," , 1)
            variables['out1'] = Trim(variables['s'])
            #MsgBox, % out1
            variables['GuiNumberOld'] = variables['GuiNumber']
            variables['GuiNumber'] = str(RegExReplace(variables['out1'] , "\\D" , ""))
            if (variables['GuiNumber'] == ""):
                variables['GuiNumber'] = "1"
            if (variables['GuiNumberOld']  != variables['GuiNumber']):
                variables['onceGuiAdd'] = 1
            if (int(variables['GuiNumber'])>= 2):
                variables['weUseCnanvasAtALLEver'] = 0
                variables['weUseCnanvasAtALL'] = 0
                variables['moreThen1GuiMode'] = 1
            else:
                variables['moreThen1GuiMode'] = 0
            variables['s'] = StrSplit(variables['str1'] , ", " , 2)
            variables['out2'] = StrLower(Trim(variables['s']))
            variables['s'] = StrSplit(variables['str1'] , ", " , 3)
            variables['s'] = Trim(variables['s'])
            if (variables['out2']  != "show"):
                variables['out3'] = StrLower(Trim(variables['s']))
                variables['out3Good'] = (Trim(variables['s']))
            else:
                variables['out3'] = Trim(variables['s'])
            variables['s'] = StrSplit(variables['str1'] , ", " , 4)
            variables['out4'] = Trim(variables['s'])
            variables['s'] = StrSplit(variables['str1'] , ", " , 5)
            variables['out5'] = Trim(variables['s'])
            if (variables['onceGuiAdd'] == 1):
                variables['jsCodeGui'] += "\nvar Gui" + variables['GuiNumber'] + " = {}\nGui" + variables['GuiNumber'] + " = document.createElement(" + Chr(34) + "div" + Chr(34) + ")\n" + "Gui" + variables['GuiNumber'] + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + Chr(34) + "\n"
                variables['NumOfButtons'] = 0
            variables['onceGuiAdd'] += 1
            #;;;;;;;;;;;;;;;;;;;;;
            #;;;;;;;;;;;;;;;;;;;;;
            if (variables['out2'] == "color"):
                variables['guiColorShow'] = "linear-gradient(90deg, " + Chr(34) + " + " + Chr(34) + "#121212" + Chr(34) + " + " + Chr(34) + " 0" + Chr(37) + ", " + Chr(34) + " + " + Chr(34) + "#121212" + Chr(34) + " + " + Chr(34) + " 100" + Chr(37) + ")"
                items = LoopParseFunc(variables['out3Good'], " ")
                for A_Index33, A_LoopField33 in enumerate(items, start=1):
                    variables['A_Index33'] = A_Index33
                    variables['A_LoopField33'] = A_LoopField33
                    if (SubStr(Trim(StrLower(variables['A_LoopField33'])), 1 , 1)== StrLower("c")):
                        variables['guiColorShow'] = Trim(variables['A_LoopField33'])
                        variables['guiColorShow'] = StringTrimLeft(variables['guiColorShow'], 1)
                        variables['var1'] = "" + Chr(34) + " + " + Chr(34) + "#" + variables['guiColorShow'] + "" + Chr(34) + " + " + Chr(34) + ""
                        variables['guiColorShow'] = variables['var1']
                        if (InStr(variables['guiColorShow'] , "%"))and  not ((InStr(variables['guiColorShow'] , "%,"))or(InStr(variables['guiColorShow'] , "%)"))):
                            variables['str1'] = variables['guiColorShow']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['out2'] = variables['s']
                            #MsgBox, % out2
                            variables['var1'] = "linear-gradient(90deg, " + Chr(34) + " + " + Chr(34) + "#" + Chr(34) + " + variables." + variables['out2'] + " + " + Chr(34) + "" + Chr(34) + " + " + Chr(34) + " 0" + Chr(37) + ", " + Chr(34) + " + " + Chr(34) + "#" + Chr(34) + " + variables." + variables['out2'] + " + " + Chr(34) + "" + Chr(34) + " + " + Chr(34) + " 100" + Chr(37) + ")"
                            variables['guiColorShow'] = variables['var1']
                    if (SubStr(Trim(StrLower(variables['A_LoopField33'])), 1 , 3)== StrLower("gr-")):
                        variables['guiColorShow'] = variables['gradient']
                        #MsgBox, % linearGradient
                        if (InStr(variables['guiColorShow'] , "thisissemicolonattheendplaceokmansurebruh49475472472")):
                            variables['guiColorShow'] = StringTrimRight(variables['guiColorShow'], 54)
                        if (InStr(variables['guiColorShow'] , "%"))and  not ((InStr(variables['guiColorShow'] , "%,"))or(InStr(variables['guiColorShow'] , "%)"))):
                            variables['str1'] = variables['guiColorShow']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['out2'] = variables['s']
                            variables['var1'] = "" + Chr(34) + " + variables." + variables['out2'] + " + " + Chr(34) + ""
                            variables['guiColorShow'] = variables['var1']
                #MsgBox, % guiColorShow
            if (variables['out2'] == "font"):
                items = LoopParseFunc(variables['out3Good'], " ")
                for A_Index34, A_LoopField34 in enumerate(items, start=1):
                    variables['A_Index34'] = A_Index34
                    variables['A_LoopField34'] = A_LoopField34
                    if (SubStr(Trim(StrLower(variables['A_LoopField34'])), 1 , 1)== StrLower("s")):
                        variables['guiFontShow'] = Trim(variables['A_LoopField34'])
                        variables['guiFontShow'] = StringTrimLeft(variables['guiFontShow'], 1)
                        if (InStr(variables['guiFontShow'] , "%")):
                            variables['str1'] = variables['guiFontShow']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['out2'] = variables['s']
                            variables['var1'] = "" + Chr(34) + " + variables." + variables['out2'] + " + " + Chr(34) + ""
                            variables['guiFontShow'] = variables['var1']
                    if (SubStr(Trim(StrLower(variables['A_LoopField34'])), 1 , 1)== StrLower("f")):
                        variables['fontName'] = Trim(variables['A_LoopField34'])
                        variables['fontName'] = StringTrimLeft(variables['fontName'], 1)
                        if (InStr(variables['fontName'] , "%")):
                            variables['str1'] = variables['fontName']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['out2'] = variables['s']
                            variables['var1'] = "" + Chr(34) + " + variables." + variables['out2'] + " + " + Chr(34) + ""
                            variables['fontName'] = str(variables['var1'])
            if (variables['out2'] == "add"):
                if (variables['out3'] == "text"):
                    variables['guiOutOfTextNum'] = 0
                    variables['guiOutOfTextC'] = 0
                    variables['guiOutOfTextX'] = 0
                    variables['guiOutOfTextY'] = 0
                    variables['guiOutOfTextW'] = 0
                    variables['guiOutOfTextH'] = 0
                    variables['guiOutOfTextV'] = 0
                    variables['guiOutOfTextG'] = 0
                    for A_Index35 in range(1, 6 + 1):
                        variables['A_Index35'] = A_Index35
                        variables[f'guiOutOfText{variables["A_Index35"]}'] = ""
                    variables['guiOutOfText0'] = "black"
                    variables['dynamicGuiSet'] = 0
                    items = LoopParseFunc(variables['out4'], " ")
                    for A_Index36, A_LoopField36 in enumerate(items, start=1):
                        variables['A_Index36'] = A_Index36
                        variables['A_LoopField36'] = A_LoopField36
                        #MsgBox, |%A_LoopField36%|
                        variables['guiOutOfTextNum'] += 1
                        if (SubStr(Trim(StrLower(variables['A_LoopField36'])), 1 , 1)== StrLower("c")):
                            variables['guiOutOfTextC'] = 1
                            variables['guiOutOfText0'] = StrLower(variables['A_LoopField36'])
                            if (InStr(variables['guiOutOfText0'] , "%")):
                                variables['str1'] = variables['guiOutOfText0']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfText0'] = " " + Chr(34) + "" + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + ""
                            variables['guiOutOfText0'] = StringTrimLeft(variables['guiOutOfText0'], 1)
                        if (SubStr(Trim(StrLower(variables['A_LoopField36'])), 1 , 1)== StrLower("x")):
                            variables['guiOutOfTextX'] = 1
                            variables['guiOutOfText1'] = variables['A_LoopField36']
                            if (InStr(variables['guiOutOfText1'] , "%")):
                                variables['str1'] = variables['guiOutOfText1']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfText1'] = " " + Chr(34) + "" + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + ""
                            variables['guiOutOfText1'] = StringTrimLeft(variables['guiOutOfText1'], 1)
                        if (SubStr(Trim(StrLower(variables['A_LoopField36'])), 1 , 1)== StrLower("y")):
                            variables['guiOutOfTextY'] = 1
                            variables['guiOutOfText2'] = variables['A_LoopField36']
                            if (InStr(variables['guiOutOfText2'] , "%")):
                                variables['str1'] = variables['guiOutOfText2']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfText2'] = " " + Chr(34) + "" + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + ""
                            variables['guiOutOfText2'] = StringTrimLeft(variables['guiOutOfText2'], 1)
                        if (SubStr(Trim(StrLower(variables['A_LoopField36'])), 1 , 1)== StrLower("w")):
                            variables['guiOutOfTextW'] = 1
                            variables['guiOutOfText3'] = variables['A_LoopField36']
                            if (InStr(variables['guiOutOfText3'] , "%")):
                                variables['str1'] = variables['guiOutOfText3']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfText3'] = " " + Chr(34) + "" + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + ""
                            variables['guiOutOfText3'] = StringTrimLeft(variables['guiOutOfText3'], 1)
                        if (SubStr(Trim(StrLower(variables['A_LoopField36'])), 1 , 1)== StrLower("h")):
                            variables['guiOutOfTextH'] = 1
                            variables['guiOutOfText4'] = variables['A_LoopField36']
                            if (InStr(variables['guiOutOfText4'] , "%")):
                                variables['str1'] = variables['guiOutOfText4']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfText4'] = " " + Chr(34) + "" + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + ""
                            variables['guiOutOfText4'] = StringTrimLeft(variables['guiOutOfText4'], 1)
                        if (SubStr(Trim(StrLower(variables['A_LoopField36'])), 1 , 1)== StrLower("v")):
                            variables['guiOutOfTextV'] = 1
                            variables['guiOutOfText5'] = variables['A_LoopField36']
                            variables['guiOutOfText52'] = variables['A_LoopField36']
                            variables['dynamicGuiSet'] = 1
                            if (InStr(variables['guiOutOfText5'] , "%")):
                                variables['str1'] = variables['guiOutOfText5']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfText5'] = " [variables." + variables['var1'] + "]"
                                variables['guiOutOfText52'] = " " + Chr(34) + " + [variables." + variables['var1'] + "]" + " + " + "" + Chr(34) + ""
                            variables['guiOutOfText5'] = StringTrimLeft(variables['guiOutOfText5'], 1)
                            variables['guiOutOfText52'] = StringTrimLeft(variables['guiOutOfText52'], 1)
                        if (SubStr(Trim(StrLower(variables['A_LoopField36'])), 1 , 1)== StrLower("g")):
                            variables['guiOutOfTextG'] = 1
                            variables['guiOutOfText6'] = variables['A_LoopField36']
                            variables['guiOutOfText6'] = StringTrimLeft(variables['guiOutOfText6'], 1)
                    variables['NumOfTexts'] += 1
                    if (InStr(variables['out5'] , "%")):
                        variables['str1'] = variables['out5']
                        variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                        variables['var1'] = variables['s']
                        variables['out5'] = "" + Chr(34) + "" + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + "" + Chr(34) + ""
                    if (variables['dynamicGuiSet'] == 0):
                        if (variables['guiOutOfTextV'] == 1):
                            if (variables['guiOutOfTextG'] == 1):
                                variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + " = document.createElement(" + Chr(34) + "div" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "" + variables['guiOutOfText52'] + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".textContent = " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".style.color = " + Chr(34) + "#" + variables['guiOutOfText0'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".style.left = " + Chr(34) + "" + variables['guiOutOfText1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".style.top = " + Chr(34) + "" + variables['guiOutOfText2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".style.width = " + Chr(34) + "" + variables['guiOutOfText3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".style.height = " + Chr(34) + "" + variables['guiOutOfText4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".onclick = function (event) {\nvariables.A_GuiControl = event.target.id.replace(/^Gui" + Chr(92) + "d*/, " + Chr(34) + "" + Chr(34) + ");\n  " + variables['guiOutOfText6'] + "(variables.A_GuiControl);\n};\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ");\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                            else:
                                variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + " = document.createElement(" + Chr(34) + "div" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "" + variables['guiOutOfText52'] + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".textContent = " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".style.color = " + Chr(34) + "#" + variables['guiOutOfText0'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".style.left = " + Chr(34) + "" + variables['guiOutOfText1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".style.top = " + Chr(34) + "" + variables['guiOutOfText2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".style.width = " + Chr(34) + "" + variables['guiOutOfText3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".style.height = " + Chr(34) + "" + variables['guiOutOfText4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ");\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                        else:
                            if (variables['guiOutOfTextG'] == 1):
                                variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + " = document.createElement(" + Chr(34) + "div" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "Static" + Chr(34) + " + " + Chr(34) + "" + str(variables['NumOfTexts']) + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".textContent = " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".style.color = " + Chr(34) + "#" + variables['guiOutOfText0'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".style.left = " + Chr(34) + "" + variables['guiOutOfText1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".style.top = " + Chr(34) + "" + variables['guiOutOfText2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".style.width = " + Chr(34) + "" + variables['guiOutOfText3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".style.height = " + Chr(34) + "" + variables['guiOutOfText4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".onclick = function (event) {\nvariables.A_GuiControl = event.target.textContent\n  " + variables['guiOutOfText6'] + "(variables.A_GuiControl);\n};\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ");\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                            else:
                                variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + " = document.createElement(" + Chr(34) + "div" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "Static" + Chr(34) + " + " + Chr(34) + "" + str(variables['NumOfTexts']) + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".textContent = " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".style.color = " + Chr(34) + "#" + variables['guiOutOfText0'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".style.left = " + Chr(34) + "" + variables['guiOutOfText1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".style.top = " + Chr(34) + "" + variables['guiOutOfText2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".style.width = " + Chr(34) + "" + variables['guiOutOfText3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".style.height = " + Chr(34) + "" + variables['guiOutOfText4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ");\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                    else:
                        if (variables['guiOutOfTextV'] == 1):
                            if (variables['guiOutOfTextG'] == 1):
                                variables['jsCode0'] = "\n\n\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + " = document.createElement(" + Chr(34) + "div" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "" + variables['guiOutOfText52'] + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".textContent = " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".style.color = " + Chr(34) + "#" + variables['guiOutOfText0'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".style.left = " + Chr(34) + "" + variables['guiOutOfText1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".style.top = " + Chr(34) + "" + variables['guiOutOfText2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".style.width = " + Chr(34) + "" + variables['guiOutOfText3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".style.height = " + Chr(34) + "" + variables['guiOutOfText4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".onclick = function (event) {\nvariables.A_GuiControl = event.target.id.replace(/^Gui" + Chr(92) + "d*/, " + Chr(34) + "" + Chr(34) + ");\n  " + variables['guiOutOfText6'] + "(variables.A_GuiControl);\n};\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ");\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                            else:
                                variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + " = document.createElement(" + Chr(34) + "div" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "" + variables['guiOutOfText52'] + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".textContent = " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".style.color = " + Chr(34) + "#" + variables['guiOutOfText0'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".style.left = " + Chr(34) + "" + variables['guiOutOfText1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".style.top = " + Chr(34) + "" + variables['guiOutOfText2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".style.width = " + Chr(34) + "" + variables['guiOutOfText3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ".style.height = " + Chr(34) + "" + variables['guiOutOfText4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "" + variables['guiOutOfText5'] + ");\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                        else:
                            if (variables['guiOutOfTextG'] == 1):
                                variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + " = document.createElement(" + Chr(34) + "div" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "Static" + Chr(34) + " + " + Chr(34) + "" + str(variables['NumOfTexts']) + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".textContent = " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".style.color = " + Chr(34) + "#" + variables['guiOutOfText0'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".style.left = " + Chr(34) + "" + variables['guiOutOfText1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".style.top = " + Chr(34) + "" + variables['guiOutOfText2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".style.width = " + Chr(34) + "" + variables['guiOutOfText3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".style.height = " + Chr(34) + "" + variables['guiOutOfText4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".onclick = function (event) {\nvariables.A_GuiControl = event.target.textContent\n  " + variables['guiOutOfText6'] + "(variables.A_GuiControl);\n};\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ");\n\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                            else:
                                variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + " = document.createElement(" + Chr(34) + "div" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "Static" + Chr(34) + " + " + Chr(34) + "" + str(variables['NumOfTexts']) + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".textContent = " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".style.color = " + Chr(34) + "#" + variables['guiOutOfText0'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".style.left = " + Chr(34) + "" + variables['guiOutOfText1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".style.top = " + Chr(34) + "" + variables['guiOutOfText2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".style.width = " + Chr(34) + "" + variables['guiOutOfText3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ".style.height = " + Chr(34) + "" + variables['guiOutOfText4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "Static" + str(variables['NumOfTexts']) + ");\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                if (variables['out3'] == "button"):
                    variables['guiOutOfButtonNum'] = 0
                    variables['guiOutOfButtonX'] = 0
                    variables['guiOutOfButtonY'] = 0
                    variables['guiOutOfButtonW'] = 0
                    variables['guiOutOfButtonH'] = 0
                    variables['guiOutOfButtonV'] = 0
                    variables['guiOutOfButtonG'] = 0
                    variables['guiOutOfButtonC'] = 0
                    for A_Index37 in range(1, 12 + 1):
                        variables['A_Index37'] = A_Index37
                        variables[f'guiOutOfButton{variables["A_Index37"]}'] = ""
                    variables['dynamicGuiSet'] = 0
                    items = LoopParseFunc(variables['out4'], " ")
                    for A_Index38, A_LoopField38 in enumerate(items, start=1):
                        variables['A_Index38'] = A_Index38
                        variables['A_LoopField38'] = A_LoopField38
                        #MsgBox, |%A_LoopField38%|
                        variables['guiOutOfButtonNum'] += 1
                        if (SubStr(Trim(StrLower(variables['A_LoopField38'])), 1 , 1)== StrLower("c")):
                            variables['guiOutOfButton7'] = variables['A_LoopField38']
                            variables['guiOutOfButton7'] = StringTrimLeft(variables['guiOutOfButton7'], 1)
                            if (InStr(variables['guiOutOfButton7'] , "%")):
                                variables['str1'] = variables['guiOutOfButton7']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfButton7'] = "#" + Chr(34) + " + variables." + variables['var1'] + "//"
                            else:
                                variables['guiOutOfButton7'] = "#" + variables['guiOutOfButton7']
                        if (SubStr(Trim(StrLower(variables['A_LoopField38'])), 1 , 3)== StrLower("gr-")):
                            variables['guiOutOfButton11'] = variables['A_LoopField38']
                            variables['guiOutOfButton11'] = StringTrimLeft(variables['guiOutOfButton11'], 3)
                            if (InStr(variables['guiOutOfButton11'] , "%")):
                                variables['str1'] = variables['guiOutOfButton11']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfButton11'] = "" + Chr(34) + " + variables." + variables['var1'] + "//"
                        if (SubStr(Trim(StrLower(variables['A_LoopField38'])), 1 , 1)== StrLower("f")):
                            variables['guiOutOfButton12'] = Trim(variables['A_LoopField38'])
                            variables['guiOutOfButton12'] = StringTrimLeft(variables['guiOutOfButton12'], 1)
                            if (InStr(variables['guiOutOfButton12'] , "%")):
                                variables['str1'] = variables['guiOutOfButton12']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['out2'] = variables['s']
                                variables['var1'] = "" + Chr(34) + " + variables." + variables['out2'] + " + " + Chr(34) + ""
                                variables['guiOutOfButton12'] = variables['var1']
                        if (SubStr(Trim(StrLower(variables['A_LoopField38'])), 1 , 2)== StrLower("bg")):
                            variables['guiOutOfButton8'] = variables['A_LoopField38']
                            variables['guiOutOfButton8'] = StringTrimLeft(variables['guiOutOfButton8'], 2)
                            if (InStr(variables['guiOutOfButton8'] , "%")):
                                variables['str1'] = variables['guiOutOfButton8']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfButton8'] = "#" + Chr(34) + " + variables." + variables['var1'] + "//"
                            else:
                                variables['guiOutOfButton8'] = "#" + variables['guiOutOfButton8']
                        if (SubStr(Trim(StrLower(variables['A_LoopField38'])), 1 , 1)== StrLower("r")):
                            variables['guiOutOfButton9'] = variables['A_LoopField38']
                            variables['guiOutOfButton9'] = StringTrimLeft(variables['guiOutOfButton9'], 1)
                            if (InStr(variables['guiOutOfButton9'] , "%")):
                                variables['str1'] = variables['guiOutOfButton9']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfButton9'] = "" + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + "px"
                            else:
                                variables['guiOutOfButton9'] = variables['guiOutOfButton9'] + "px"
                        if (SubStr(Trim(StrLower(variables['A_LoopField38'])), 1 , 7)== StrLower("-border")):
                            variables['guiOutOfButton10'] = variables['A_LoopField38']
                            variables['guiOutOfButton10'] = StringTrimLeft(variables['guiOutOfButton10'], 7)
                            variables['guiOutOfButton10'] = "none"
                            if (InStr(variables['guiOutOfButton10'] , "%")):
                                variables['str1'] = variables['guiOutOfButton10']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfButton10'] = "" + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + ""
                        if (SubStr(Trim(StrLower(variables['A_LoopField38'])), 1 , 1)== StrLower("x")):
                            variables['guiOutOfButtonX'] = 1
                            variables['guiOutOfButton1'] = variables['A_LoopField38']
                            if (InStr(variables['guiOutOfButton1'] , "%")):
                                variables['str1'] = variables['guiOutOfButton1']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfButton1'] = " " + Chr(34) + "" + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + ""
                            variables['guiOutOfButton1'] = StringTrimLeft(variables['guiOutOfButton1'], 1)
                        if (SubStr(Trim(StrLower(variables['A_LoopField38'])), 1 , 1)== StrLower("y")):
                            variables['guiOutOfButtonY'] = 1
                            variables['guiOutOfButton2'] = variables['A_LoopField38']
                            if (InStr(variables['guiOutOfButton2'] , "%")):
                                variables['str1'] = variables['guiOutOfButton2']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfButton2'] = " " + Chr(34) + "" + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + ""
                            variables['guiOutOfButton2'] = StringTrimLeft(variables['guiOutOfButton2'], 1)
                        if (SubStr(Trim(StrLower(variables['A_LoopField38'])), 1 , 1)== StrLower("w")):
                            variables['guiOutOfButtonW'] = 1
                            variables['guiOutOfButton3'] = variables['A_LoopField38']
                            if (InStr(variables['guiOutOfButton3'] , "%")):
                                variables['str1'] = variables['guiOutOfButton3']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfButton3'] = " " + Chr(34) + "" + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + ""
                            variables['guiOutOfButton3'] = StringTrimLeft(variables['guiOutOfButton3'], 1)
                        if (SubStr(Trim(StrLower(variables['A_LoopField38'])), 1 , 1)== StrLower("h")):
                            variables['guiOutOfButtonH'] = 1
                            variables['guiOutOfButton4'] = variables['A_LoopField38']
                            if (InStr(variables['guiOutOfButton4'] , "%")):
                                variables['str1'] = variables['guiOutOfButton4']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfButton4'] = " " + Chr(34) + "" + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + ""
                            variables['guiOutOfButton4'] = StringTrimLeft(variables['guiOutOfButton4'], 1)
                        if (SubStr(Trim(StrLower(variables['A_LoopField38'])), 1 , 1)== StrLower("v")):
                            variables['guiOutOfButtonV'] = 1
                            variables['guiOutOfButton5'] = variables['A_LoopField38']
                            variables['guiOutOfButton52'] = variables['A_LoopField38']
                            variables['dynamicGuiSet'] = 1
                            if (InStr(variables['guiOutOfButton5'] , "%")):
                                variables['str1'] = variables['guiOutOfButton5']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfButton5'] = " [variables." + variables['var1'] + "]"
                                variables['guiOutOfButton52'] = " " + Chr(34) + " + [variables." + variables['var1'] + "]" + " + " + "" + Chr(34) + ""
                            variables['guiOutOfButton5'] = StringTrimLeft(variables['guiOutOfButton5'], 1)
                            variables['guiOutOfButton52'] = StringTrimLeft(variables['guiOutOfButton52'], 1)
                        if (SubStr(Trim(StrLower(variables['A_LoopField38'])), 1 , 1)== StrLower("g"))and  not ((SubStr(Trim(StrLower(variables['A_LoopField38'])), 1 , 3)== StrLower("gr-"))):
                            variables['guiOutOfButtonG'] = 1
                            variables['guiOutOfButton6'] = variables['A_LoopField38']
                            variables['guiOutOfButton6'] = StringTrimLeft(variables['guiOutOfButton6'], 1)
                    variables['NumOfButtons'] += 1
                    if (InStr(variables['out5'] , "%")):
                        variables['str1'] = variables['out5']
                        variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                        variables['var1'] = variables['s']
                        variables['out5'] = "" + Chr(34) + "" + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + "" + Chr(34) + ""
                    if (variables['dynamicGuiSet'] == 0):
                        if (variables['guiOutOfButtonV'] == 1):
                            if (variables['guiOutOfButtonG'] == 1):
                                variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + " = document.createElement(" + Chr(34) + "button" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "" + variables['guiOutOfButton52'] + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".textContent = " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.left = " + Chr(34) + "" + variables['guiOutOfButton1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.top = " + Chr(34) + "" + variables['guiOutOfButton2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.width = " + Chr(34) + "" + variables['guiOutOfButton3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.height = " + Chr(34) + "" + variables['guiOutOfButton4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.cursor = " + Chr(34) + "pointer" + Chr(34) + "; // Change cursor on hover\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.border = " + Chr(34) + "" + variables['guiOutOfButton10'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.background = " + Chr(34) + "" + variables['guiOutOfButton11'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.backgroundColor = " + Chr(34) + "" + variables['guiOutOfButton8'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.borderRadius = " + Chr(34) + "" + variables['guiOutOfButton9'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.color = " + Chr(34) + "" + variables['guiOutOfButton7'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.fontFamily = " + Chr(34) + "" + variables['guiOutOfButton12'] + ", sans-serif" + Chr(34) + "; // Specify your desired font here\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".onclick = function (event) {\nvariables.A_GuiControl = event.target.id.replace(/^Gui" + Chr(92) + "d*/, " + Chr(34) + "" + Chr(34) + ");\n  " + variables['guiOutOfButton6'] + "(variables.A_GuiControl);\n};\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ");\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                            else:
                                variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + " = document.createElement(" + Chr(34) + "button" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "" + variables['guiOutOfButton52'] + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".textContent = " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.left = " + Chr(34) + "" + variables['guiOutOfButton1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.top = " + Chr(34) + "" + variables['guiOutOfButton2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.width = " + Chr(34) + "" + variables['guiOutOfButton3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.height = " + Chr(34) + "" + variables['guiOutOfButton4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.cursor = " + Chr(34) + "pointer" + Chr(34) + "; // Change cursor on hover\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.border = " + Chr(34) + "" + variables['guiOutOfButton10'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.background = " + Chr(34) + "" + variables['guiOutOfButton11'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.backgroundColor = " + Chr(34) + "" + variables['guiOutOfButton8'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.borderRadius = " + Chr(34) + "" + variables['guiOutOfButton9'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.fontFamily = " + Chr(34) + "" + variables['guiOutOfButton12'] + ", sans-serif" + Chr(34) + "; // Specify your desired font here\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.color = " + Chr(34) + "" + variables['guiOutOfButton7'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ");\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                        else:
                            if (variables['guiOutOfButtonG'] == 1):
                                variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + " = document.createElement(" + Chr(34) + "button" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "Button" + Chr(34) + " + " + Chr(34) + "" + str(variables['NumOfButtons']) + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".textContent = " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.left = " + Chr(34) + "" + variables['guiOutOfButton1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.top = " + Chr(34) + "" + variables['guiOutOfButton2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.width = " + Chr(34) + "" + variables['guiOutOfButton3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.height = " + Chr(34) + "" + variables['guiOutOfButton4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.cursor = " + Chr(34) + "pointer" + Chr(34) + "; // Change cursor on hover\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.border = " + Chr(34) + "" + variables['guiOutOfButton10'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.background = " + Chr(34) + "" + variables['guiOutOfButton11'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.backgroundColor = " + Chr(34) + "" + variables['guiOutOfButton8'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.borderRadius = " + Chr(34) + "" + variables['guiOutOfButton9'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.color = " + Chr(34) + "" + variables['guiOutOfButton7'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.fontFamily = " + Chr(34) + "" + variables['guiOutOfButton12'] + ", sans-serif" + Chr(34) + "; // Specify your desired font here\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".onclick = function (event) {\nvariables.A_GuiControl = event.target.textContent\n  " + variables['guiOutOfButton6'] + "(variables.A_GuiControl);\n};\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ");\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                            else:
                                variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + " = document.createElement(" + Chr(34) + "button" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "Button" + Chr(34) + " + " + Chr(34) + "" + str(variables['NumOfButtons']) + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".textContent = " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.left = " + Chr(34) + "" + variables['guiOutOfButton1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.top = " + Chr(34) + "" + variables['guiOutOfButton2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.width = " + Chr(34) + "" + variables['guiOutOfButton3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.height = " + Chr(34) + "" + variables['guiOutOfButton4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.cursor = " + Chr(34) + "pointer" + Chr(34) + "; // Change cursor on hover\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.border = " + Chr(34) + "" + variables['guiOutOfButton10'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.background = " + Chr(34) + "" + variables['guiOutOfButton11'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.backgroundColor = " + Chr(34) + "" + variables['guiOutOfButton8'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.borderRadius = " + Chr(34) + "" + variables['guiOutOfButton9'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.color = " + Chr(34) + "" + variables['guiOutOfButton7'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.fontFamily = " + Chr(34) + "" + variables['guiOutOfButton12'] + ", sans-serif" + Chr(34) + "; // Specify your desired font here\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ");\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                    else:
                        if (variables['guiOutOfButtonV'] == 1):
                            if (variables['guiOutOfButtonG'] == 1):
                                variables['jsCode0'] = "\n\n\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + " = document.createElement(" + Chr(34) + "button" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "" + variables['guiOutOfButton52'] + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".textContent = " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.left = " + Chr(34) + "" + variables['guiOutOfButton1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.top = " + Chr(34) + "" + variables['guiOutOfButton2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.width = " + Chr(34) + "" + variables['guiOutOfButton3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.height = " + Chr(34) + "" + variables['guiOutOfButton4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.cursor = " + Chr(34) + "pointer" + Chr(34) + "; // Change cursor on hover\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.border = " + Chr(34) + "" + variables['guiOutOfButton10'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.background = " + Chr(34) + "" + variables['guiOutOfButton11'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.backgroundColor = " + Chr(34) + "" + variables['guiOutOfButton8'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.borderRadius = " + Chr(34) + "" + variables['guiOutOfButton9'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.color = " + Chr(34) + "" + variables['guiOutOfButton7'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.fontFamily = " + Chr(34) + "" + variables['guiOutOfButton12'] + ", sans-serif" + Chr(34) + "; // Specify your desired font here\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".onclick = function (event) {\nvariables.A_GuiControl = event.target.id.replace(/^Gui" + Chr(92) + "d*/, " + Chr(34) + "" + Chr(34) + ");\n  " + variables['guiOutOfButton6'] + "(variables.A_GuiControl);\n};\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ");\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                            else:
                                variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + " = document.createElement(" + Chr(34) + "button" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "" + variables['guiOutOfButton52'] + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".textContent = " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.left = " + Chr(34) + "" + variables['guiOutOfButton1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.top = " + Chr(34) + "" + variables['guiOutOfButton2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.width = " + Chr(34) + "" + variables['guiOutOfButton3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.height = " + Chr(34) + "" + variables['guiOutOfButton4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.border = " + Chr(34) + "" + variables['guiOutOfButton10'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.background = " + Chr(34) + "" + variables['guiOutOfButton11'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.backgroundColor = " + Chr(34) + "" + variables['guiOutOfButton8'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.borderRadius = " + Chr(34) + "" + variables['guiOutOfButton9'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.color = " + Chr(34) + "" + variables['guiOutOfButton7'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.fontFamily = " + Chr(34) + "" + variables['guiOutOfButton12'] + ", sans-serif" + Chr(34) + "; // Specify your desired font here\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ".style.cursor = " + Chr(34) + "pointer" + Chr(34) + "; // Change cursor on hover\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "" + variables['guiOutOfButton5'] + ");\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                        else:
                            if (variables['guiOutOfButtonG'] == 1):
                                variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + " = document.createElement(" + Chr(34) + "button" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "Button" + Chr(34) + " + " + Chr(34) + "" + str(variables['NumOfButtons']) + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".textContent = " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.left = " + Chr(34) + "" + variables['guiOutOfButton1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.top = " + Chr(34) + "" + variables['guiOutOfButton2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.width = " + Chr(34) + "" + variables['guiOutOfButton3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.height = " + Chr(34) + "" + variables['guiOutOfButton4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.cursor = " + Chr(34) + "pointer" + Chr(34) + "; // Change cursor on hover\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.border = " + Chr(34) + "" + variables['guiOutOfButton10'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.background = " + Chr(34) + "" + variables['guiOutOfButton11'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.backgroundColor = " + Chr(34) + "" + variables['guiOutOfButton8'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.borderRadius = " + Chr(34) + "" + variables['guiOutOfButton9'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.color = " + Chr(34) + "" + variables['guiOutOfButton7'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.fontFamily = " + Chr(34) + "" + variables['guiOutOfButton12'] + ", sans-serif" + Chr(34) + "; // Specify your desired font here\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".onclick = function (event) {\nvariables.A_GuiControl = event.target.textContent\n  " + variables['guiOutOfButton6'] + "(variables.A_GuiControl);\n};\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ");\n\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                            else:
                                variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + " = document.createElement(" + Chr(34) + "button" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "Button" + Chr(34) + " + " + Chr(34) + "" + str(variables['NumOfButtons']) + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".textContent = " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.left = " + Chr(34) + "" + variables['guiOutOfButton1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.top = " + Chr(34) + "" + variables['guiOutOfButton2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.width = " + Chr(34) + "" + variables['guiOutOfButton3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.height = " + Chr(34) + "" + variables['guiOutOfButton4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.cursor = " + Chr(34) + "pointer" + Chr(34) + "; // Change cursor on hover\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.border = " + Chr(34) + "" + variables['guiOutOfButton10'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.background = " + Chr(34) + "" + variables['guiOutOfButton11'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.backgroundColor = " + Chr(34) + "" + variables['guiOutOfButton8'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.borderRadius = " + Chr(34) + "" + variables['guiOutOfButton9'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.color = " + Chr(34) + "" + variables['guiOutOfButton7'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ".style.fontFamily = " + Chr(34) + "" + variables['guiOutOfButton12'] + ", sans-serif" + Chr(34) + "; // Specify your desired font here\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "Button" + str(variables['NumOfButtons']) + ");\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                if (variables['out3'] == "edit"):
                    variables['guiOutOfEditNum'] = 0
                    variables['guiOutOfEditX'] = 0
                    variables['guiOutOfEditY'] = 0
                    variables['guiOutOfEditW'] = 0
                    variables['guiOutOfEditH'] = 0
                    variables['guiOutOfEditV'] = 0
                    variables['guiOutOfEditG'] = 0
                    for A_Index39 in range(1, 12 + 1):
                        variables['A_Index39'] = A_Index39
                        variables[f'guiOutOfEdit{variables["A_Index39"]}'] = ""
                    variables['dynamicGuiSet'] = 0
                    items = LoopParseFunc(variables['out4'], " ")
                    for A_Index40, A_LoopField40 in enumerate(items, start=1):
                        variables['A_Index40'] = A_Index40
                        variables['A_LoopField40'] = A_LoopField40
                        #MsgBox, |%A_LoopField40%|
                        variables['guiOutOfEditNum'] += 1
                        if (SubStr(Trim(StrLower(variables['A_LoopField40'])), 1 , 1)== StrLower("c")):
                            variables['guiOutOfEdit7'] = variables['A_LoopField40']
                            variables['guiOutOfEdit7'] = StringTrimLeft(variables['guiOutOfEdit7'], 1)
                            if (InStr(variables['guiOutOfEdit7'] , "%")):
                                variables['str1'] = variables['guiOutOfEdit7']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfEdit7'] = "#" + Chr(34) + " + variables." + variables['var1'] + "//"
                            else:
                                variables['guiOutOfEdit7'] = "#" + variables['guiOutOfEdit7']
                        if (SubStr(Trim(StrLower(variables['A_LoopField40'])), 1 , 3)== StrLower("gr-")):
                            variables['guiOutOfEdit11'] = variables['A_LoopField40']
                            variables['guiOutOfEdit11'] = StringTrimLeft(variables['guiOutOfEdit11'], 3)
                            if (InStr(variables['guiOutOfEdit11'] , "%")):
                                variables['str1'] = variables['guiOutOfEdit11']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfEdit11'] = "" + Chr(34) + " + variables." + variables['var1'] + "//"
                        if (SubStr(Trim(StrLower(variables['A_LoopField40'])), 1 , 2)== StrLower("bg")):
                            variables['guiOutOfEdit8'] = variables['A_LoopField40']
                            variables['guiOutOfEdit8'] = StringTrimLeft(variables['guiOutOfEdit8'], 2)
                            if (InStr(variables['guiOutOfEdit8'] , "%")):
                                variables['str1'] = variables['guiOutOfEdit8']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfEdit8'] = "#" + Chr(34) + " + variables." + variables['var1'] + "//"
                            else:
                                variables['guiOutOfEdit8'] = "#" + variables['guiOutOfEdit8']
                        if (SubStr(Trim(StrLower(variables['A_LoopField40'])), 1 , 1)== StrLower("f")):
                            variables['guiOutOfEdit12'] = Trim(variables['A_LoopField40'])
                            variables['guiOutOfEdit12'] = StringTrimLeft(variables['guiOutOfEdit12'], 1)
                            if (InStr(variables['guiOutOfEdit12'] , "%")):
                                variables['str1'] = variables['guiOutOfEdit12']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['out2'] = variables['s']
                                variables['var1'] = "" + Chr(34) + " + variables." + variables['out2'] + " + " + Chr(34) + ""
                                variables['guiOutOfEdit12'] = variables['var1']
                        if (SubStr(Trim(StrLower(variables['A_LoopField40'])), 1 , 1)== StrLower("r")):
                            variables['guiOutOfEdit9'] = variables['A_LoopField40']
                            variables['guiOutOfEdit9'] = StringTrimLeft(variables['guiOutOfEdit9'], 1)
                            if (InStr(variables['guiOutOfEdit9'] , "%")):
                                variables['str1'] = variables['guiOutOfEdit9']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfEdit9'] = "" + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + "px"
                            else:
                                variables['guiOutOfEdit9'] = variables['guiOutOfEdit9'] + "px"
                        if (SubStr(Trim(StrLower(variables['A_LoopField40'])), 1 , 7)== StrLower("-border")):
                            variables['guiOutOfEdit10'] = variables['A_LoopField40']
                            variables['guiOutOfEdit10'] = StringTrimLeft(variables['guiOutOfEdit10'], 7)
                            variables['guiOutOfEdit10'] = "none"
                            if (InStr(variables['guiOutOfEdit10'] , "%")):
                                variables['str1'] = variables['guiOutOfEdit10']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfEdit10'] = "" + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + ""
                        if (SubStr(Trim(StrLower(variables['A_LoopField40'])), 1 , 1)== StrLower("x")):
                            variables['guiOutOfEditX'] = 1
                            variables['guiOutOfEdit1'] = variables['A_LoopField40']
                            if (InStr(variables['guiOutOfEdit1'] , "%")):
                                variables['str1'] = variables['guiOutOfEdit1']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfEdit1'] = " " + Chr(34) + "" + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + ""
                            variables['guiOutOfEdit1'] = StringTrimLeft(variables['guiOutOfEdit1'], 1)
                        if (SubStr(Trim(StrLower(variables['A_LoopField40'])), 1 , 1)== StrLower("y")):
                            variables['guiOutOfEditY'] = 1
                            variables['guiOutOfEdit2'] = variables['A_LoopField40']
                            if (InStr(variables['guiOutOfEdit2'] , "%")):
                                variables['str1'] = variables['guiOutOfEdit2']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfEdit2'] = " " + Chr(34) + "" + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + ""
                            variables['guiOutOfEdit2'] = StringTrimLeft(variables['guiOutOfEdit2'], 1)
                        if (SubStr(Trim(StrLower(variables['A_LoopField40'])), 1 , 1)== StrLower("w")):
                            variables['guiOutOfEditW'] = 1
                            variables['guiOutOfEdit3'] = variables['A_LoopField40']
                            if (InStr(variables['guiOutOfEdit3'] , "%")):
                                variables['str1'] = variables['guiOutOfEdit3']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfEdit3'] = " " + Chr(34) + "" + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + ""
                            variables['guiOutOfEdit3'] = StringTrimLeft(variables['guiOutOfEdit3'], 1)
                        if (SubStr(Trim(StrLower(variables['A_LoopField40'])), 1 , 1)== StrLower("h")):
                            variables['guiOutOfEditH'] = 1
                            variables['guiOutOfEdit4'] = variables['A_LoopField40']
                            if (InStr(variables['guiOutOfEdit4'] , "%")):
                                variables['str1'] = variables['guiOutOfEdit4']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfEdit4'] = " " + Chr(34) + "" + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + ""
                            variables['guiOutOfEdit4'] = StringTrimLeft(variables['guiOutOfEdit4'], 1)
                        if (SubStr(Trim(StrLower(variables['A_LoopField40'])), 1 , 1)== StrLower("v")):
                            variables['guiOutOfEditV'] = 1
                            variables['guiOutOfEdit5'] = variables['A_LoopField40']
                            variables['guiOutOfEdit52'] = variables['A_LoopField40']
                            variables['dynamicGuiSet'] = 1
                            if (InStr(variables['guiOutOfEdit5'] , "%")):
                                variables['str1'] = variables['guiOutOfEdit5']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfEdit5'] = " [variables." + variables['var1'] + "]"
                                variables['guiOutOfEdit52'] = " " + Chr(34) + " + [variables." + variables['var1'] + "]" + " + " + "" + Chr(34) + ""
                            variables['guiOutOfEdit52'] = StringTrimLeft(variables['guiOutOfEdit52'], 1)
                            variables['guiOutOfEdit5'] = StringTrimLeft(variables['guiOutOfEdit5'], 1)
                        if (SubStr(Trim(StrLower(variables['A_LoopField40'])), 1 , 1)== StrLower("g"))and  not ((SubStr(Trim(StrLower(variables['A_LoopField40'])), 1 , 3)== StrLower("gr-"))):
                            variables['guiOutOfEditG'] = 1
                            variables['guiOutOfEdit6'] = variables['A_LoopField40']
                            variables['guiOutOfEdit6'] = StringTrimLeft(variables['guiOutOfEdit6'], 1)
                    variables['NumOfEdits'] += 1
                    if (InStr(variables['out5'] , "%")):
                        variables['str1'] = variables['out5']
                        variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                        variables['var1'] = variables['s']
                        variables['out5'] = "" + Chr(34) + "" + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + "" + Chr(34) + ""
                    if (variables['dynamicGuiSet'] == 0):
                        if (variables['guiOutOfEditV'] == 1):
                            if (variables['guiOutOfEditG'] == 1):
                                variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + " = document.createElement(" + Chr(34) + "textarea" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "" + variables['guiOutOfEdit52'] + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".placeholder = " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.resize = " + Chr(34) + "none" + Chr(34) + "; // Disable resizing\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.left = " + Chr(34) + "" + variables['guiOutOfEdit1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.top = " + Chr(34) + "" + variables['guiOutOfEdit2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.width = " + Chr(34) + "" + variables['guiOutOfEdit3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.height = " + Chr(34) + "" + variables['guiOutOfEdit4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.border = " + Chr(34) + "" + variables['guiOutOfEdit10'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.color = " + Chr(34) + "" + variables['guiOutOfEdit7'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.background = " + Chr(34) + "" + variables['guiOutOfEdit11'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.backgroundColor = " + Chr(34) + "" + variables['guiOutOfEdit8'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.borderRadius = " + Chr(34) + "" + variables['guiOutOfEdit9'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.fontFamily = " + Chr(34) + "" + variables['guiOutOfEdit12'] + ", sans-serif" + Chr(34) + "; // Specify your desired font here\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".addEventListener(" + Chr(34) + "input" + Chr(34) + ", function () {\nvariables.A_GuiControl = Gui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".value\n  " + variables['guiOutOfEdit6'] + "(variables.A_GuiControl);\n});\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ");\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                            else:
                                variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + " = document.createElement(" + Chr(34) + "textarea" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "" + variables['guiOutOfEdit52'] + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".placeholder = " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.resize = " + Chr(34) + "none" + Chr(34) + "; // Disable resizing\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.left = " + Chr(34) + "" + variables['guiOutOfEdit1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.top = " + Chr(34) + "" + variables['guiOutOfEdit2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.width = " + Chr(34) + "" + variables['guiOutOfEdit3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.height = " + Chr(34) + "" + variables['guiOutOfEdit4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.border = " + Chr(34) + "" + variables['guiOutOfEdit10'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.color = " + Chr(34) + "" + variables['guiOutOfEdit7'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.background = " + Chr(34) + "" + variables['guiOutOfEdit11'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.backgroundColor = " + Chr(34) + "" + variables['guiOutOfEdit8'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.borderRadius = " + Chr(34) + "" + variables['guiOutOfEdit9'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.fontFamily = " + Chr(34) + "" + variables['guiOutOfEdit12'] + ", sans-serif" + Chr(34) + "; // Specify your desired font here\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ");\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                        else:
                            if (variables['guiOutOfEditG'] == 1):
                                variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + " = document.createElement(" + Chr(34) + "textarea" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "Edit" + Chr(34) + " + " + Chr(34) + "" + str(variables['NumOfEdits']) + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".placeholder = " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.resize = " + Chr(34) + "none" + Chr(34) + "; // Disable resizing\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.left = " + Chr(34) + "" + variables['guiOutOfEdit1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.top = " + Chr(34) + "" + variables['guiOutOfEdit2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.width = " + Chr(34) + "" + variables['guiOutOfEdit3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.height = " + Chr(34) + "" + variables['guiOutOfEdit4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.border = " + Chr(34) + "" + variables['guiOutOfEdit10'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.color = " + Chr(34) + "" + variables['guiOutOfEdit7'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.background = " + Chr(34) + "" + variables['guiOutOfEdit11'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.backgroundColor = " + Chr(34) + "" + variables['guiOutOfEdit8'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.borderRadius = " + Chr(34) + "" + variables['guiOutOfEdit9'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.fontFamily = " + Chr(34) + "" + variables['guiOutOfEdit12'] + ", sans-serif" + Chr(34) + "; // Specify your desired font here\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".addEventListener(" + Chr(34) + "input" + Chr(34) + ", function () {\nvariables.A_GuiControl = Gui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".value\n  " + variables['guiOutOfEdit6'] + "(variables.A_GuiControl);\n});\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ");\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                            else:
                                variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + " = document.createElement(" + Chr(34) + "textarea" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "Edit" + Chr(34) + " + " + Chr(34) + "" + str(variables['NumOfEdits']) + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".placeholder = " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.resize = " + Chr(34) + "none" + Chr(34) + "; // Disable resizing\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.left = " + Chr(34) + "" + variables['guiOutOfEdit1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.top = " + Chr(34) + "" + variables['guiOutOfEdit2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.width = " + Chr(34) + "" + variables['guiOutOfEdit3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.height = " + Chr(34) + "" + variables['guiOutOfEdit4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.border = " + Chr(34) + "" + variables['guiOutOfEdit10'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.color = " + Chr(34) + "" + variables['guiOutOfEdit7'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.background = " + Chr(34) + "" + variables['guiOutOfEdit11'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.backgroundColor = " + Chr(34) + "" + variables['guiOutOfEdit8'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.borderRadius = " + Chr(34) + "" + variables['guiOutOfEdit9'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.fontFamily = " + Chr(34) + "" + variables['guiOutOfEdit12'] + ", sans-serif" + Chr(34) + "; // Specify your desired font here\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ");\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                    else:
                        if (variables['guiOutOfEditV'] == 1):
                            if (variables['guiOutOfEditG'] == 1):
                                variables['jsCode0'] = "\n\n\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + " = document.createElement(" + Chr(34) + "textarea" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "" + variables['guiOutOfEdit52'] + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".placeholder = " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.resize = " + Chr(34) + "none" + Chr(34) + "; // Disable resizing\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.left = " + Chr(34) + "" + variables['guiOutOfEdit1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.top = " + Chr(34) + "" + variables['guiOutOfEdit2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.width = " + Chr(34) + "" + variables['guiOutOfEdit3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.height = " + Chr(34) + "" + variables['guiOutOfEdit4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.border = " + Chr(34) + "" + variables['guiOutOfEdit10'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.color = " + Chr(34) + "" + variables['guiOutOfEdit7'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.background = " + Chr(34) + "" + variables['guiOutOfEdit11'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.backgroundColor = " + Chr(34) + "" + variables['guiOutOfEdit8'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.borderRadius = " + Chr(34) + "" + variables['guiOutOfEdit9'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.fontFamily = " + Chr(34) + "" + variables['guiOutOfEdit12'] + ", sans-serif" + Chr(34) + "; // Specify your desired font here\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".addEventListener(" + Chr(34) + "input" + Chr(34) + ", function () {\nvariables.A_GuiControl = Gui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".value\n  " + variables['guiOutOfEdit6'] + "(variables.A_GuiControl);\n});\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ");\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                            else:
                                variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + " = document.createElement(" + Chr(34) + "textarea" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "" + variables['guiOutOfEdit52'] + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".placeholder = " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.resize = " + Chr(34) + "none" + Chr(34) + "; // Disable resizing\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.left = " + Chr(34) + "" + variables['guiOutOfEdit1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.top = " + Chr(34) + "" + variables['guiOutOfEdit2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.width = " + Chr(34) + "" + variables['guiOutOfEdit3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.height = " + Chr(34) + "" + variables['guiOutOfEdit4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.border = " + Chr(34) + "" + variables['guiOutOfEdit10'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.color = " + Chr(34) + "" + variables['guiOutOfEdit7'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.background = " + Chr(34) + "" + variables['guiOutOfEdit11'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.backgroundColor = " + Chr(34) + "" + variables['guiOutOfEdit8'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.borderRadius = " + Chr(34) + "" + variables['guiOutOfEdit9'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ".style.fontFamily = " + Chr(34) + "" + variables['guiOutOfEdit12'] + ", sans-serif" + Chr(34) + "; // Specify your desired font here\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "" + variables['guiOutOfEdit5'] + ");\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                        else:
                            if (variables['guiOutOfEditG'] == 1):
                                variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + " = document.createElement(" + Chr(34) + "textarea" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "Edit" + Chr(34) + " + " + Chr(34) + "" + str(variables['NumOfEdits']) + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".placeholder = " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.resize = " + Chr(34) + "none" + Chr(34) + "; // Disable resizing\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.left = " + Chr(34) + "" + variables['guiOutOfEdit1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.top = " + Chr(34) + "" + variables['guiOutOfEdit2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.width = " + Chr(34) + "" + variables['guiOutOfEdit3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.height = " + Chr(34) + "" + variables['guiOutOfEdit4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.border = " + Chr(34) + "" + variables['guiOutOfEdit10'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.color = " + Chr(34) + "" + variables['guiOutOfEdit7'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.background = " + Chr(34) + "" + variables['guiOutOfEdit11'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.backgroundColor = " + Chr(34) + "" + variables['guiOutOfEdit8'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.borderRadius = " + Chr(34) + "" + variables['guiOutOfEdit9'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.fontFamily = " + Chr(34) + "" + variables['guiOutOfEdit12'] + ", sans-serif" + Chr(34) + "; // Specify your desired font here\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".addEventListener(" + Chr(34) + "input" + Chr(34) + ", function () {\nvariables.A_GuiControl = Gui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".value\n  " + variables['guiOutOfEdit6'] + "(variables.A_GuiControl);\n});\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ");\n\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                            else:
                                variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + " = document.createElement(" + Chr(34) + "textarea" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "Edit" + Chr(34) + " + " + Chr(34) + "" + str(variables['NumOfEdits']) + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".placeholder = " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.resize = " + Chr(34) + "none" + Chr(34) + "; // Disable resizing\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.left = " + Chr(34) + "" + variables['guiOutOfEdit1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.top = " + Chr(34) + "" + variables['guiOutOfEdit2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.width = " + Chr(34) + "" + variables['guiOutOfEdit3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.height = " + Chr(34) + "" + variables['guiOutOfEdit4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.border = " + Chr(34) + "" + variables['guiOutOfEdit10'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.color = " + Chr(34) + "" + variables['guiOutOfEdit7'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.background = " + Chr(34) + "" + variables['guiOutOfEdit11'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.backgroundColor = " + Chr(34) + "" + variables['guiOutOfEdit8'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.borderRadius = " + Chr(34) + "" + variables['guiOutOfEdit9'] + "" + Chr(34) + "\nGui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ".style.fontFamily = " + Chr(34) + "" + variables['guiOutOfEdit12'] + ", sans-serif" + Chr(34) + "; // Specify your desired font here\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "Edit" + str(variables['NumOfEdits']) + ");\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                if (variables['out3'] == "picture"):
                    variables['base64ImageNum'] += 1
                    variables['guiOutOfPictureNum'] = 0
                    variables['guiOutOfPictureX'] = 0
                    variables['guiOutOfPictureY'] = 0
                    variables['guiOutOfPictureW'] = 0
                    variables['guiOutOfPictureH'] = 0
                    variables['guiOutOfPictureV'] = 0
                    variables['guiOutOfPictureG'] = 0
                    for A_Index41 in range(1, 6 + 1):
                        variables['A_Index41'] = A_Index41
                        variables[f'guiOutOfPicture{variables["A_Index41"]}'] = ""
                    variables['dynamicGuiSet'] = 0
                    items = LoopParseFunc(variables['out4'], " ")
                    for A_Index42, A_LoopField42 in enumerate(items, start=1):
                        variables['A_Index42'] = A_Index42
                        variables['A_LoopField42'] = A_LoopField42
                        #MsgBox, |%A_LoopField42%|
                        variables['guiOutOfPictureNum'] += 1
                        if (SubStr(Trim(StrLower(variables['A_LoopField42'])), 1 , 1)== StrLower("x")):
                            variables['guiOutOfPictureX'] = 1
                            variables['guiOutOfPicture1'] = variables['A_LoopField42']
                            if (InStr(variables['guiOutOfPicture1'] , "%")):
                                variables['str1'] = variables['guiOutOfPicture1']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfPicture1'] = " " + Chr(34) + "" + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + ""
                            variables['guiOutOfPicture1'] = StringTrimLeft(variables['guiOutOfPicture1'], 1)
                        if (SubStr(Trim(StrLower(variables['A_LoopField42'])), 1 , 1)== StrLower("y")):
                            variables['guiOutOfPictureY'] = 1
                            variables['guiOutOfPicture2'] = variables['A_LoopField42']
                            if (InStr(variables['guiOutOfPicture2'] , "%")):
                                variables['str1'] = variables['guiOutOfPicture2']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfPicture2'] = " " + Chr(34) + "" + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + ""
                            variables['guiOutOfPicture2'] = StringTrimLeft(variables['guiOutOfPicture2'], 1)
                        if (SubStr(Trim(StrLower(variables['A_LoopField42'])), 1 , 1)== StrLower("w")):
                            variables['guiOutOfPictureW'] = 1
                            variables['guiOutOfPicture3'] = variables['A_LoopField42']
                            if (InStr(variables['guiOutOfPicture3'] , "%")):
                                variables['str1'] = variables['guiOutOfPicture3']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfPicture3'] = " " + Chr(34) + "" + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + ""
                            variables['guiOutOfPicture3'] = StringTrimLeft(variables['guiOutOfPicture3'], 1)
                        if (SubStr(Trim(StrLower(variables['A_LoopField42'])), 1 , 1)== StrLower("h")):
                            variables['guiOutOfPictureH'] = 1
                            variables['guiOutOfPicture4'] = variables['A_LoopField42']
                            if (InStr(variables['guiOutOfPicture4'] , "%")):
                                variables['str1'] = variables['guiOutOfPicture4']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfPicture4'] = " " + Chr(34) + "" + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + ""
                            variables['guiOutOfPicture4'] = StringTrimLeft(variables['guiOutOfPicture4'], 1)
                        if (SubStr(Trim(StrLower(variables['A_LoopField42'])), 1 , 1)== StrLower("v")):
                            variables['guiOutOfPictureV'] = 1
                            variables['guiOutOfPicture5'] = variables['A_LoopField42']
                            variables['guiOutOfPicture52'] = variables['A_LoopField42']
                            variables['dynamicGuiSet'] = 1
                            if (InStr(variables['guiOutOfPicture5'] , "%")):
                                variables['str1'] = variables['guiOutOfPicture5']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfPicture5'] = " [variables." + variables['var1'] + "]"
                                variables['guiOutOfPicture52'] = " " + Chr(34) + " + [variables." + variables['var1'] + "]" + " + " + "" + Chr(34) + ""
                            variables['guiOutOfPicture5'] = StringTrimLeft(variables['guiOutOfPicture5'], 1)
                            variables['guiOutOfPicture52'] = StringTrimLeft(variables['guiOutOfPicture52'], 1)
                            variables['weDontHaveAvImage'] = 0
                        else:
                            variables['weDontHaveAvImage'] = 1
                        if (SubStr(Trim(StrLower(variables['A_LoopField42'])), 1 , 1)== StrLower("g")):
                            variables['guiOutOfPictureG'] = 1
                            variables['guiOutOfPicture6'] = variables['A_LoopField42']
                            variables['guiOutOfPicture6'] = StringTrimLeft(variables['guiOutOfPicture6'], 1)
                    variables['NumOfPictures'] += 1
                    if (variables['weDontHaveAvImage'] == 1):
                        variables['guiOutOfPictureV'] = 1
                        variables['guiOutOfPicture5'] = "v" + "Picture" + str(variables['NumOfPictures'])
                        variables['guiOutOfPicture52'] = "v" + "Picture" + str(variables['NumOfPictures'])
                        variables['dynamicGuiSet'] = 1
                        if (InStr(variables['guiOutOfPicture5'] , "%")):
                            variables['str1'] = variables['guiOutOfPicture5']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfPicture5'] = " [variables." + variables['var1'] + "]"
                            variables['guiOutOfPicture52'] = " " + Chr(34) + " + [variables." + variables['var1'] + "]" + " + " + "" + Chr(34) + ""
                        variables['guiOutOfPicture5'] = StringTrimLeft(variables['guiOutOfPicture5'], 1)
                        variables['guiOutOfPicture52'] = StringTrimLeft(variables['guiOutOfPicture52'], 1)
                    if (InStr(variables['out5'] , "%")):
                        variables['str1'] = variables['out5']
                        variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                        variables['var1'] = variables['s']
                        variables['out5'] = "" + Chr(34) + "" + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + "" + Chr(34) + ""
                    if (InStr(variables['out5'] , "https://")or InStr(variables['out5'] , "http://")or InStr(variables['out5'] , "www.")or InStr(variables['out5'] , "ftp://")):
                        # One or more of the specified substrings are found in out5
                        #MsgBox, URL or FTP link detected in out5: %out5%
                        variables['isBase64orURL2'] = "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".src = base64Image" + str(variables['base64ImageNum']) + ";\n"
                        variables['base64out'] = variables['out5']
                        variables['isBase64orURL'] = variables['isBase64orURL2']
                    else:
                        # None of the specified substrings are found in out5
                        #MsgBox, No URL or FTP link detected in out5: %out5%
                        variables['gg'] = 0
                    variables['base64'] = "let base64Image" + str(variables['base64ImageNum']) + " = " + Chr(34) + "" + variables['base64out'] + "" + Chr(34) + ""
                    variables['base64ImageData'] += variables['base64'] + "\n"
                    if (variables['dynamicGuiSet'] == 0):
                        if (variables['guiOutOfPictureV'] == 1):
                            if (variables['guiOutOfPictureG'] == 1):
                                variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + " = document.createElement(" + Chr(34) + "img" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "" + variables['guiOutOfPicture52'] + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.left = " + Chr(34) + "" + variables['guiOutOfPicture1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.top = " + Chr(34) + "" + variables['guiOutOfPicture2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.width = " + Chr(34) + "" + variables['guiOutOfPicture3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.height = " + Chr(34) + "" + variables['guiOutOfPicture4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".onclick = function (event) {\nvariables.A_GuiControl = event.target.id.replace(/^Gui" + Chr(92) + "d*/, " + Chr(34) + "" + Chr(34) + ");\n  " + variables['guiOutOfPicture6'] + "(variables.A_GuiControl);\n};\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ");\n\n\n\n// Set the src attribute to the Base64-encoded image string for the second block\n" + variables['isBase64orURL'] + "\n\n// Set CSS styles to resize the image to fit inside the div\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.maxWidth = " + Chr(34) + "100" + Chr(37) + "" + Chr(34) + "; // Resize the image to fit the width of the div\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.maxHeight = " + Chr(34) + "100" + Chr(37) + "" + Chr(34) + "; // Resize the image to fit the height of the div\n\n// Append the img element to the div for the second block\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ");\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                            else:
                                variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + " = document.createElement(" + Chr(34) + "img" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "" + variables['guiOutOfPicture52'] + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.left = " + Chr(34) + "" + variables['guiOutOfPicture1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.top = " + Chr(34) + "" + variables['guiOutOfPicture2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.width = " + Chr(34) + "" + variables['guiOutOfPicture3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.height = " + Chr(34) + "" + variables['guiOutOfPicture4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ");\n\n\n\n\n// Set the src attribute to the Base64-encoded image string for the second block\n" + variables['isBase64orURL'] + "\n\n\n// Set CSS styles to resize the image to fit inside the div\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.maxWidth = " + Chr(34) + "100" + Chr(37) + "" + Chr(34) + "; // Resize the image to fit the width of the div\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.maxHeight = " + Chr(34) + "100" + Chr(37) + "" + Chr(34) + "; // Resize the image to fit the height of the div\n\n// Append the img element to the div for the second block\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ");\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                        else:
                            if (variables['guiOutOfPictureG'] == 1):
                                variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + " = document.createElement(" + Chr(34) + "img" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "Picture" + Chr(34) + " + " + Chr(34) + "" + str(variables['NumOfPictures']) + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".style.left = " + Chr(34) + "" + variables['guiOutOfPicture1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".style.top = " + Chr(34) + "" + variables['guiOutOfPicture2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".style.width = " + Chr(34) + "" + variables['guiOutOfPicture3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".style.height = " + Chr(34) + "" + variables['guiOutOfPicture4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".onclick = function (event) {\nvariables.A_GuiControl = event.target.textContent\n  " + variables['guiOutOfPicture6'] + "(variables.A_GuiControl);\n};\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ");\n\n\n" + variables['isBase64orURL'] + "\n\n\n// Set CSS styles to resize the image to fit inside the div\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.maxWidth = " + Chr(34) + "100" + Chr(37) + "" + Chr(34) + "; // Resize the image to fit the width of the div\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.maxHeight = " + Chr(34) + "100" + Chr(37) + "" + Chr(34) + "; // Resize the image to fit the height of the div\n\n// Append the img element to the div for the second block\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ");\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                            else:
                                variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + " = document.createElement(" + Chr(34) + "img" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "Picture" + Chr(34) + " + " + Chr(34) + "" + str(variables['NumOfPictures']) + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".style.left = " + Chr(34) + "" + variables['guiOutOfPicture1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".style.top = " + Chr(34) + "" + variables['guiOutOfPicture2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".style.width = " + Chr(34) + "" + variables['guiOutOfPicture3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".style.height = " + Chr(34) + "" + variables['guiOutOfPicture4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ");\n\n\n\n\n// Set the src attribute to the Base64-encoded image string for the second block\n" + variables['isBase64orURL'] + "\n\n// Set CSS styles to resize the image to fit inside the div\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.maxWidth = " + Chr(34) + "100" + Chr(37) + "" + Chr(34) + "; // Resize the image to fit the width of the div\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.maxHeight = " + Chr(34) + "100" + Chr(37) + "" + Chr(34) + "; // Resize the image to fit the height of the div\n\n// Append the img element to the div for the second block\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ");\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                    else:
                        if (variables['guiOutOfPictureV'] == 1):
                            if (variables['guiOutOfPictureG'] == 1):
                                variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + " = document.createElement(" + Chr(34) + "img" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "" + variables['guiOutOfPicture52'] + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.left = " + Chr(34) + "" + variables['guiOutOfPicture1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.top = " + Chr(34) + "" + variables['guiOutOfPicture2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.width = " + Chr(34) + "" + variables['guiOutOfPicture3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.height = " + Chr(34) + "" + variables['guiOutOfPicture4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".onclick = function (event) {\nvariables.A_GuiControl = event.target.id.replace(/^Gui" + Chr(92) + "d*/, " + Chr(34) + "" + Chr(34) + ");\n  " + variables['guiOutOfPicture6'] + "(variables.A_GuiControl);\n};\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ");\n\n\n\n\n// Set the src attribute to the Base64-encoded image string for the second block\n" + variables['isBase64orURL'] + "\n\n// Set CSS styles to resize the image to fit inside the div\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.maxWidth = " + Chr(34) + "100" + Chr(37) + "" + Chr(34) + "; // Resize the image to fit the width of the div\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.maxHeight = " + Chr(34) + "100" + Chr(37) + "" + Chr(34) + "; // Resize the image to fit the height of the div\n\n// Append the img element to the div for the second block\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ");\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                            else:
                                variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + " = document.createElement(" + Chr(34) + "img" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "" + variables['guiOutOfPicture52'] + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.left = " + Chr(34) + "" + variables['guiOutOfPicture1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.top = " + Chr(34) + "" + variables['guiOutOfPicture2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.width = " + Chr(34) + "" + variables['guiOutOfPicture3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.height = " + Chr(34) + "" + variables['guiOutOfPicture4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ");\n\n\n// Set the src attribute to the Base64-encoded image string for the second block\n" + variables['isBase64orURL'] + "\n\n// Set CSS styles to resize the image to fit inside the div\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.maxWidth = " + Chr(34) + "100" + Chr(37) + "" + Chr(34) + "; // Resize the image to fit the width of the div\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.maxHeight = " + Chr(34) + "100" + Chr(37) + "" + Chr(34) + "; // Resize the image to fit the height of the div\n\n// Append the img element to the div for the second block\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ");\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                        else:
                            if (variables['guiOutOfPictureG'] == 1):
                                variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + " = document.createElement(" + Chr(34) + "img" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "Picture" + Chr(34) + " + " + Chr(34) + "" + str(variables['NumOfPictures']) + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".style.left = " + Chr(34) + "" + variables['guiOutOfPicture1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".style.top = " + Chr(34) + "" + variables['guiOutOfPicture2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".style.width = " + Chr(34) + "" + variables['guiOutOfPicture3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".style.height = " + Chr(34) + "" + variables['guiOutOfPicture4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".onclick = function (event) {\nvariables.A_GuiControl = event.target.textContent\n  " + variables['guiOutOfPicture6'] + "(variables.A_GuiControl);\n};\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ");\n\n\n// Set the src attribute to the Base64-encoded image string for the second block\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".src = " + Chr(34) + "data:image/*;base64," + Chr(34) + " + base64Image" + str(variables['base64ImageNum']) + "; // Assuming the image is in PNG format\n\n// Set CSS styles to resize the image to fit inside the div\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".style.maxWidth = " + Chr(34) + "100" + Chr(37) + "" + Chr(34) + "; // Resize the image to fit the width of the div\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".style.maxHeight = " + Chr(34) + "100" + Chr(37) + "" + Chr(34) + "; // Resize the image to fit the height of the div\n\n// Append the img element to the div for the second block\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ");\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
                            else:
                                variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + " = document.createElement(" + Chr(34) + "img" + Chr(34) + ");\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".id = " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + " + Chr(34) + "Picture" + Chr(34) + " + " + Chr(34) + "" + str(variables['NumOfPictures']) + "" + Chr(34) + "; // Set ID for referencing\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".style.fontSize = " + Chr(34) + "" + variables['guiFontShow'] + "px" + Chr(34) + "; // Set font size\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".style.position = " + Chr(34) + "absolute" + Chr(34) + "; // Set position to absolute\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".style.left = " + Chr(34) + "" + variables['guiOutOfPicture1'] + "px" + Chr(34) + "; // Set initial x position\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".style.top = " + Chr(34) + "" + variables['guiOutOfPicture2'] + "px" + Chr(34) + "; // Set initial y position\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".style.width = " + Chr(34) + "" + variables['guiOutOfPicture3'] + "px" + Chr(34) + "; // Set width\nGui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ".style.height = " + Chr(34) + "" + variables['guiOutOfPicture4'] + "px" + Chr(34) + "; // Set height\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "Picture" + str(variables['NumOfPictures']) + ");\n\n\n\n\n// Set the src attribute to the Base64-encoded image string for the second block\n" + variables['isBase64orURL'] + "\n\n// Set CSS styles to resize the image to fit inside the div\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.maxWidth = " + Chr(34) + "100" + Chr(37) + "" + Chr(34) + "; // Resize the image to fit the width of the div\nGui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ".style.maxHeight = " + Chr(34) + "100" + Chr(37) + "" + Chr(34) + "; // Resize the image to fit the height of the div\n\n// Append the img element to the div for the second block\nGui" + variables['GuiNumber'] + ".appendChild(Gui" + variables['GuiNumber'] + "" + variables['guiOutOfPicture5'] + ");\n"
                                variables['jsCode'] += "\n" + variables['jsCode0'] + "\n"
            if (variables['out3'] == "toggle"):
                variables['guiOutOfSwitchNum'] = 0
                variables['guiOutOfSwitchX'] = 0
                variables['guiOutOfSwitchY'] = 0
                variables['guiOutOfSwitchW'] = 0
                variables['guiOutOfSwitchH'] = 0
                variables['guiOutOfSwitchV'] = 0
                variables['guiOutOfSwitchG'] = 0
                variables['guiOutOfSwitchOn'] = 0
                for A_Index43 in range(1, 7 + 1):
                    variables['A_Index43'] = A_Index43
                    variables[f'guiOutOfSwitch{variables["A_Index43"]}'] = ""
                variables['guiOutOfSwitch3'] = "60"
                variables['guiOutOfSwitch4'] = "30"
                variables['isThereArecId'] = 1
                variables['dynamicGuiSet'] = 0
                items = LoopParseFunc(variables['out4'], " ")
                for A_Index44, A_LoopField44 in enumerate(items, start=1):
                    variables['A_Index44'] = A_Index44
                    variables['A_LoopField44'] = A_LoopField44
                    #MsgBox, |%A_LoopField44%|
                    variables['guiOutOfSwitchNum'] += 1
                    if (SubStr(Trim(StrLower(variables['A_LoopField44'])), 1 , 1)== StrLower("x")):
                        variables['guiOutOfSwitchX'] = 1
                        variables['guiOutOfSwitch1'] = variables['A_LoopField44']
                        if (InStr(variables['guiOutOfSwitch1'] , "%")):
                            variables['str1'] = variables['guiOutOfSwitch1']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfSwitch1'] = " variables." + variables['var1']
                        variables['guiOutOfSwitch1'] = StringTrimLeft(variables['guiOutOfSwitch1'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField44'])), 1 , 1)== StrLower("y")):
                        variables['guiOutOfSwitchY'] = 1
                        variables['guiOutOfSwitch2'] = variables['A_LoopField44']
                        if (InStr(variables['guiOutOfSwitch2'] , "%")):
                            variables['str1'] = variables['guiOutOfSwitch2']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfSwitch2'] = " variables." + variables['var1']
                        variables['guiOutOfSwitch2'] = StringTrimLeft(variables['guiOutOfSwitch2'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField44'])), 1 , 1)== StrLower("w")):
                        variables['guiOutOfSwitchW'] = 1
                        variables['guiOutOfSwitch3'] = variables['A_LoopField44']
                        if (InStr(variables['guiOutOfSwitch3'] , "%")):
                            variables['str1'] = variables['guiOutOfSwitch3']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfSwitch3'] = " variables." + variables['var1']
                        variables['guiOutOfSwitch3'] = StringTrimLeft(variables['guiOutOfSwitch3'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField44'])), 1 , 1)== StrLower("h")):
                        variables['guiOutOfSwitchH'] = 1
                        variables['guiOutOfSwitch4'] = variables['A_LoopField44']
                        if (InStr(variables['guiOutOfSwitch4'] , "%")):
                            variables['str1'] = variables['guiOutOfSwitch4']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfSwitch4'] = " variables." + variables['var1']
                        variables['guiOutOfSwitch4'] = StringTrimLeft(variables['guiOutOfSwitch4'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField44'])), 1 , 1)== StrLower("v")):
                        variables['guiOutOfSwitchV'] = 1
                        variables['guiOutOfSwitch5'] = "" + Chr(34) + "" + "Gui" + variables['GuiNumber'] + variables['A_LoopField44'] + "" + Chr(34) + ""
                        variables['guiOutOfSwitch5Fix'] = "" + Chr(34) + "" + "" + variables['A_LoopField44'] + "" + Chr(34) + ""
                        variables['guiOutOfSwitch5Fix'] = StringTrimRight(variables['guiOutOfSwitch5Fix'], 1)
                        variables['guiOutOfSwitch5Fix'] = StringTrimLeft(variables['guiOutOfSwitch5Fix'], 2)
                        variables['guiOutOfSwitch52'] = variables['A_LoopField44']
                        variables['dynamicGuiSet'] = 1
                        if (InStr(variables['guiOutOfSwitch5'] , "%")):
                            variables['str1'] = variables['guiOutOfSwitch5']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfSwitch5'] = " " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + [variables." + variables['var1'] + "]"
                            variables['guiOutOfSwitch5Fix'] = " + [variables." + variables['var1'] + "]"
                        else:
                            variables['A_LoopField44OutFixCnavas'] = StringTrimLeft(variables['A_LoopField44'], 1)
                            variables['guiOutOfSwitch5'] = " " + "" + Chr(34) + "" + "Gui" + variables['GuiNumber'] + variables['A_LoopField44OutFixCnavas'] + "" + Chr(34) + ""
                        variables['guiOutOfSwitch5'] = StringTrimLeft(variables['guiOutOfSwitch5'], 1)
                        variables['guiOutOfSwitch52'] = StringTrimLeft(variables['guiOutOfSwitch52'], 1)
                        variables['isThereArecId'] = 0
                    if (SubStr(Trim(StrLower(variables['A_LoopField44'])), 1 , 1)== StrLower("g")):
                        variables['guiOutOfSwitchG'] = 1
                        variables['guiOutOfSwitch6'] = variables['A_LoopField44']
                        variables['guiOutOfSwitch6'] = StringTrimLeft(variables['guiOutOfSwitch6'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField44'])), 1 , 2)== StrLower("on")):
                        variables['guiOutOfSwitchOn'] = 1
                variables['switchId'] += 1
                if (variables['isThereArecId'] == 1):
                    variables['guiOutOfSwitch5'] = "" + Chr(34) + "" + "Gui" + variables['GuiNumber'] + "Switch" + str(variables['switchId']) + "" + Chr(34) + ""
                    variables['guiOutOfSwitch5Fix'] = "" + Chr(34) + "" + "" + variables['GuiNumber'] + "Switch" + str(variables['switchId']) + "" + Chr(34) + ""
                    variables['guiOutOfSwitch5Fix'] = StringTrimRight(variables['guiOutOfSwitch5Fix'], 1)
                    variables['guiOutOfSwitch5Fix'] = StringTrimLeft(variables['guiOutOfSwitch5Fix'], 1)
                if (variables['guiOutOfSwitchOn'] == 1):
                    variables['switchOut'] = "createToggleSwitch(Gui" + variables['GuiNumber'] + ", " + variables['guiOutOfSwitch5'] + ", " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ", " + Chr(34) + "#2196F3" + Chr(34) + ", " + variables['guiOutOfSwitch1'] + ", " + variables['guiOutOfSwitch2'] + ", " + variables['guiOutOfSwitch3'] + ", " + variables['guiOutOfSwitch4'] + ", " + variables['guiOutOfSwitch6'] + " );\ndocument.getElementById('Gui" + variables['GuiNumber'] + "" + variables['guiOutOfSwitch5Fix'] + "').click();"
                else:
                    variables['switchOut'] = "createToggleSwitch(Gui" + variables['GuiNumber'] + ", " + variables['guiOutOfSwitch5'] + ", " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ", " + Chr(34) + "#2196F3" + Chr(34) + ", " + variables['guiOutOfSwitch1'] + ", " + variables['guiOutOfSwitch2'] + ", " + variables['guiOutOfSwitch3'] + ", " + variables['guiOutOfSwitch4'] + ", " + variables['guiOutOfSwitch6'] + " );"
                #MsgBox, % rectangleOut
                variables['jsCode'] += "\n" + variables['switchOut'] + "\n"
            if (variables['out3'] == "checkbox"):
                variables['guiOutOfCheckboxNum'] = 0
                variables['guiOutOfCheckboxX'] = 0
                variables['guiOutOfCheckboxY'] = 0
                variables['guiOutOfCheckboxW'] = 0
                variables['guiOutOfCheckboxH'] = 0
                variables['guiOutOfCheckboxV'] = 0
                variables['guiOutOfCheckboxG'] = 0
                variables['guiOutOfCheckboxOn'] = "false"
                for A_Index45 in range(1, 7 + 1):
                    variables['A_Index45'] = A_Index45
                    variables[f'guiOutOfCheckbox{variables["A_Index45"]}'] = ""
                variables['guiOutOfCheckbox3'] = "60"
                variables['guiOutOfCheckbox4'] = "30"
                variables['isThereArecId'] = 1
                variables['dynamicGuiSet'] = 0
                items = LoopParseFunc(variables['out4'], " ")
                for A_Index46, A_LoopField46 in enumerate(items, start=1):
                    variables['A_Index46'] = A_Index46
                    variables['A_LoopField46'] = A_LoopField46
                    #MsgBox, |%A_LoopField46%|
                    variables['guiOutOfCheckboxNum'] += 1
                    if (SubStr(Trim(StrLower(variables['A_LoopField46'])), 1 , 1)== StrLower("x")):
                        variables['guiOutOfCheckboxX'] = 1
                        variables['guiOutOfCheckbox1'] = variables['A_LoopField46']
                        if (InStr(variables['guiOutOfCheckbox1'] , "%")):
                            variables['str1'] = variables['guiOutOfCheckbox1']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfCheckbox1'] = " variables." + variables['var1']
                        variables['guiOutOfCheckbox1'] = StringTrimLeft(variables['guiOutOfCheckbox1'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField46'])), 1 , 1)== StrLower("y")):
                        variables['guiOutOfCheckboxY'] = 1
                        variables['guiOutOfCheckbox2'] = variables['A_LoopField46']
                        if (InStr(variables['guiOutOfCheckbox2'] , "%")):
                            variables['str1'] = variables['guiOutOfCheckbox2']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfCheckbox2'] = " variables." + variables['var1']
                        variables['guiOutOfCheckbox2'] = StringTrimLeft(variables['guiOutOfCheckbox2'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField46'])), 1 , 1)== StrLower("w")):
                        variables['guiOutOfCheckboxW'] = 1
                        variables['guiOutOfCheckbox3'] = variables['A_LoopField46']
                        if (InStr(variables['guiOutOfCheckbox3'] , "%")):
                            variables['str1'] = variables['guiOutOfCheckbox3']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfCheckbox3'] = " variables." + variables['var1']
                        variables['guiOutOfCheckbox3'] = StringTrimLeft(variables['guiOutOfCheckbox3'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField46'])), 1 , 1)== StrLower("h")):
                        variables['guiOutOfCheckboxH'] = 1
                        variables['guiOutOfCheckbox4'] = variables['A_LoopField46']
                        if (InStr(variables['guiOutOfCheckbox4'] , "%")):
                            variables['str1'] = variables['guiOutOfCheckbox4']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfCheckbox4'] = " variables." + variables['var1']
                        variables['guiOutOfCheckbox4'] = StringTrimLeft(variables['guiOutOfCheckbox4'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField46'])), 1 , 1)== StrLower("v")):
                        variables['guiOutOfCheckboxV'] = 1
                        variables['guiOutOfCheckbox5'] = "" + Chr(34) + "" + "Gui" + variables['GuiNumber'] + variables['A_LoopField46'] + "" + Chr(34) + ""
                        variables['guiOutOfCheckbox5Fix'] = "" + Chr(34) + "" + "" + variables['A_LoopField46'] + "" + Chr(34) + ""
                        variables['guiOutOfCheckbox5Fix'] = StringTrimRight(variables['guiOutOfCheckbox5Fix'], 1)
                        variables['guiOutOfCheckbox5Fix'] = StringTrimLeft(variables['guiOutOfCheckbox5Fix'], 2)
                        variables['guiOutOfCheckbox52'] = variables['A_LoopField46']
                        variables['dynamicGuiSet'] = 1
                        if (InStr(variables['guiOutOfCheckbox5'] , "%")):
                            variables['str1'] = variables['guiOutOfCheckbox5']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfCheckbox5'] = " " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + [variables." + variables['var1'] + "]"
                            variables['guiOutOfCheckbox5Fix'] = " + [variables." + variables['var1'] + "]"
                        else:
                            variables['A_LoopField46OutFixCnavas'] = StringTrimLeft(variables['A_LoopField46'], 1)
                            variables['guiOutOfCheckbox5'] = " " + "" + Chr(34) + "" + "Gui" + variables['GuiNumber'] + variables['A_LoopField46OutFixCnavas'] + "" + Chr(34) + ""
                        variables['guiOutOfCheckbox5'] = StringTrimLeft(variables['guiOutOfCheckbox5'], 1)
                        variables['guiOutOfCheckbox52'] = StringTrimLeft(variables['guiOutOfCheckbox52'], 1)
                        variables['isThereArecId'] = 0
                    if (SubStr(Trim(StrLower(variables['A_LoopField46'])), 1 , 1)== StrLower("g")):
                        variables['guiOutOfCheckboxG'] = 1
                        variables['guiOutOfCheckbox6'] = variables['A_LoopField46']
                        variables['guiOutOfCheckbox6'] = StringTrimLeft(variables['guiOutOfCheckbox6'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField46'])), 1 , 2)== StrLower("on")):
                        variables['guiOutOfCheckboxOn'] = "true"
                variables['CheckboxId'] += 1
                if (variables['isThereArecId'] == 1):
                    variables['guiOutOfCheckbox5'] = "" + Chr(34) + "" + "Gui" + variables['GuiNumber'] + "Checkbox" + str(variables['CheckboxId']) + "" + Chr(34) + ""
                    variables['guiOutOfCheckbox5Fix'] = "" + Chr(34) + "" + "" + variables['GuiNumber'] + "Checkbox" + str(variables['CheckboxId']) + "" + Chr(34) + ""
                    variables['guiOutOfCheckbox5Fix'] = StringTrimRight(variables['guiOutOfCheckbox5Fix'], 1)
                    variables['guiOutOfCheckbox5Fix'] = StringTrimLeft(variables['guiOutOfCheckbox5Fix'], 1)
                variables['CheckboxOut'] = "createCheckbox(Gui" + variables['GuiNumber'] + ", " + variables['guiOutOfCheckbox5'] + ", " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ", " + variables['guiOutOfCheckboxOn'] + ", " + variables['guiOutOfCheckbox1'] + ", " + variables['guiOutOfCheckbox2'] + ", " + variables['guiOutOfCheckbox6'] + " );"
                variables['jsCode'] += "\n" + variables['CheckboxOut'] + "\n"
            if (variables['out3'] == "ide"):
                variables['guiOutOfIDENum'] = 0
                variables['guiOutOfIDEX'] = 0
                variables['guiOutOfIDEY'] = 0
                variables['guiOutOfIDEW'] = 0
                variables['guiOutOfIDEH'] = 0
                variables['guiOutOfIDEV'] = 0
                variables['guiOutOfIDEG'] = 0
                variables['guiOutOfIDEL'] = 0
                variables['guiOutOfIDES'] = 0
                for A_Index47 in range(1, 8 + 1):
                    variables['A_Index47'] = A_Index47
                    variables[f'guiOutOfIDE{variables["A_Index47"]}'] = ""
                variables['guiOutOfIDE3'] = "300"
                variables['guiOutOfIDE4'] = "300"
                variables['guiOutOfIDE8'] = "18"
                variables['isThereArecId'] = 1
                variables['dynamicGuiSet'] = 0
                items = LoopParseFunc(variables['out4'], " ")
                for A_Index48, A_LoopField48 in enumerate(items, start=1):
                    variables['A_Index48'] = A_Index48
                    variables['A_LoopField48'] = A_LoopField48
                    #MsgBox, |%A_LoopField48%|
                    variables['guiOutOfIDENum'] += 1
                    if (SubStr(Trim(StrLower(variables['A_LoopField48'])), 1 , 1)== StrLower("x")):
                        variables['guiOutOfIDEX'] = 1
                        variables['guiOutOfIDE1'] = variables['A_LoopField48']
                        if (InStr(variables['guiOutOfIDE1'] , "%")):
                            variables['str1'] = variables['guiOutOfIDE1']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfIDE1'] = " variables." + variables['var1']
                        variables['guiOutOfIDE1'] = StringTrimLeft(variables['guiOutOfIDE1'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField48'])), 1 , 1)== StrLower("s")):
                        variables['guiOutOfIDES'] = 1
                        variables['guiOutOfIDE8'] = variables['A_LoopField48']
                        if (InStr(variables['guiOutOfIDE8'] , "%")):
                            variables['str1'] = variables['guiOutOfIDE8']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfIDE8'] = " variables." + variables['var1']
                        variables['guiOutOfIDE8'] = StringTrimLeft(variables['guiOutOfIDE8'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField48'])), 1 , 1)== StrLower("l")):
                        variables['guiOutOfIDEL'] = 1
                        variables['guiOutOfIDE7'] = variables['A_LoopField48']
                        if (InStr(variables['guiOutOfIDE7'] , "%")):
                            variables['str1'] = variables['guiOutOfIDE7']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfIDE7'] = " variables." + variables['var1']
                        variables['guiOutOfIDE7'] = StringTrimLeft(variables['guiOutOfIDE7'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField48'])), 1 , 1)== StrLower("y")):
                        variables['guiOutOfIDEY'] = 1
                        variables['guiOutOfIDE2'] = variables['A_LoopField48']
                        if (InStr(variables['guiOutOfIDE2'] , "%")):
                            variables['str1'] = variables['guiOutOfIDE2']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfIDE2'] = " variables." + variables['var1']
                        variables['guiOutOfIDE2'] = StringTrimLeft(variables['guiOutOfIDE2'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField48'])), 1 , 1)== StrLower("w")):
                        variables['guiOutOfIDEW'] = 1
                        variables['guiOutOfIDE3'] = variables['A_LoopField48']
                        if (InStr(variables['guiOutOfIDE3'] , "%")):
                            variables['str1'] = variables['guiOutOfIDE3']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfIDE3'] = " variables." + variables['var1']
                        variables['guiOutOfIDE3'] = StringTrimLeft(variables['guiOutOfIDE3'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField48'])), 1 , 1)== StrLower("h")):
                        variables['guiOutOfIDEH'] = 1
                        variables['guiOutOfIDE4'] = variables['A_LoopField48']
                        if (InStr(variables['guiOutOfIDE4'] , "%")):
                            variables['str1'] = variables['guiOutOfIDE4']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfIDE4'] = " variables." + variables['var1']
                        variables['guiOutOfIDE4'] = StringTrimLeft(variables['guiOutOfIDE4'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField48'])), 1 , 1)== StrLower("v")):
                        variables['guiOutOfIDEV'] = 1
                        variables['guiOutOfIDE5'] = "" + Chr(34) + "" + "Gui" + variables['GuiNumber'] + variables['A_LoopField48'] + "" + Chr(34) + ""
                        variables['guiOutOfIDE5Fix'] = "" + Chr(34) + "" + "" + variables['A_LoopField48'] + "" + Chr(34) + ""
                        variables['guiOutOfIDE5Fix'] = StringTrimRight(variables['guiOutOfIDE5Fix'], 1)
                        variables['guiOutOfIDE5Fix'] = StringTrimLeft(variables['guiOutOfIDE5Fix'], 2)
                        variables['guiOutOfIDE52'] = variables['A_LoopField48']
                        variables['dynamicGuiSet'] = 1
                        if (InStr(variables['guiOutOfIDE5'] , "%")):
                            variables['str1'] = variables['guiOutOfIDE5']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfIDE5'] = " " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + [variables." + variables['var1'] + "]"
                            variables['guiOutOfIDE5Fix'] = " + [variables." + variables['var1'] + "]"
                        else:
                            variables['A_LoopField48OutFixCnavas'] = StringTrimLeft(variables['A_LoopField48'], 1)
                            variables['guiOutOfIDE5'] = " " + "" + Chr(34) + "" + "Gui" + variables['GuiNumber'] + variables['A_LoopField48OutFixCnavas'] + "" + Chr(34) + ""
                        variables['guiOutOfIDE5'] = StringTrimLeft(variables['guiOutOfIDE5'], 1)
                        variables['guiOutOfIDE52'] = StringTrimLeft(variables['guiOutOfIDE52'], 1)
                        variables['isThereArecId'] = 0
                    if (SubStr(Trim(StrLower(variables['A_LoopField48'])), 1 , 1)== StrLower("g")):
                        variables['guiOutOfIDEG'] = 1
                        variables['guiOutOfIDE6'] = variables['A_LoopField48']
                        variables['guiOutOfIDE6'] = StringTrimLeft(variables['guiOutOfIDE6'], 1)
                variables['IDEId'] += 1
                if (variables['isThereArecId'] == 1):
                    variables['guiOutOfIDE5'] = "" + Chr(34) + "" + "Gui" + variables['GuiNumber'] + "IDE" + str(variables['IDEId']) + "" + Chr(34) + ""
                    variables['guiOutOfIDE5Fix'] = "" + Chr(34) + "" + "" + variables['GuiNumber'] + "IDE" + str(variables['IDEId']) + "" + Chr(34) + ""
                    variables['guiOutOfIDE5Fix'] = StringTrimRight(variables['guiOutOfIDE5Fix'], 1)
                    variables['guiOutOfIDE5Fix'] = StringTrimLeft(variables['guiOutOfIDE5Fix'], 1)
                if (InStr(variables['out5'] , "%")):
                    variables['out5'] = StringTrimRight(variables['out5'], 1)
                    variables['out5'] = StringTrimLeft(variables['out5'], 1)
                    variables['out5'] = "variables." + variables['out5']
                else:
                    variables['out5'] = "null"
                if (variables['guiOutOfIDE7'] == ""):
                    variables['guiOutOfIDE7'] = "autohotkey"
                #AddIDE(parent, xPos, yPos, w, h, id, font, langName = "autohotkey", onChangeFunc, initialText = "")
                variables['IDEOut'] = "AddIDE(Gui" + variables['GuiNumber'] + ", " + variables['guiOutOfIDE1'] + ", " + variables['guiOutOfIDE2'] + ", " + variables['guiOutOfIDE3'] + ", " + variables['guiOutOfIDE4'] + ", " + variables['guiOutOfIDE5'] + ", " + variables['guiOutOfIDE8'] + ", " + Chr(34) + "" + variables['guiOutOfIDE7'] + "" + Chr(34) + ", " + variables['guiOutOfIDE6'] + ",    " + variables['out5'] + "    );"
                variables['jsCode'] += "\n" + variables['IDEOut'] + "\n"
            if (variables['out3'] == "dropdownlist"):
                variables['guiOutOfDropDownListNum'] = 0
                variables['guiOutOfDropDownListX'] = 0
                variables['guiOutOfDropDownListY'] = 0
                variables['guiOutOfDropDownListW'] = 0
                variables['guiOutOfDropDownListH'] = 0
                variables['guiOutOfDropDownListV'] = 0
                variables['guiOutOfDropDownListG'] = 0
                for A_Index49 in range(1, 7 + 1):
                    variables['A_Index49'] = A_Index49
                    variables[f'guiOutOfDropDownList{variables["A_Index49"]}'] = ""
                variables['isThereArecId'] = 1
                variables['guiOutOfDropDownList3'] = "150"
                variables['guiOutOfDropDownList4'] = "30"
                variables['dynamicGuiSet'] = 0
                items = LoopParseFunc(variables['out4'], " ")
                for A_Index50, A_LoopField50 in enumerate(items, start=1):
                    variables['A_Index50'] = A_Index50
                    variables['A_LoopField50'] = A_LoopField50
                    #MsgBox, |%A_LoopField50%|
                    variables['guiOutOfDropDownListNum'] += 1
                    if (SubStr(Trim(StrLower(variables['A_LoopField50'])), 1 , 1)== StrLower("x")):
                        variables['guiOutOfDropDownListX'] = 1
                        variables['guiOutOfDropDownList1'] = variables['A_LoopField50']
                        if (InStr(variables['guiOutOfDropDownList1'] , "%")):
                            variables['str1'] = variables['guiOutOfDropDownList1']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfDropDownList1'] = " variables." + variables['var1']
                        variables['guiOutOfDropDownList1'] = StringTrimLeft(variables['guiOutOfDropDownList1'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField50'])), 1 , 1)== StrLower("y")):
                        variables['guiOutOfDropDownListY'] = 1
                        variables['guiOutOfDropDownList2'] = variables['A_LoopField50']
                        if (InStr(variables['guiOutOfDropDownList2'] , "%")):
                            variables['str1'] = variables['guiOutOfDropDownList2']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfDropDownList2'] = " variables." + variables['var1']
                        variables['guiOutOfDropDownList2'] = StringTrimLeft(variables['guiOutOfDropDownList2'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField50'])), 1 , 1)== StrLower("w")):
                        variables['guiOutOfDropDownListW'] = 1
                        variables['guiOutOfDropDownList3'] = variables['A_LoopField50']
                        if (InStr(variables['guiOutOfDropDownList3'] , "%")):
                            variables['str1'] = variables['guiOutOfDropDownList3']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfDropDownList3'] = " variables." + variables['var1']
                        variables['guiOutOfDropDownList3'] = StringTrimLeft(variables['guiOutOfDropDownList3'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField50'])), 1 , 1)== StrLower("h")):
                        variables['guiOutOfDropDownListH'] = 1
                        variables['guiOutOfDropDownList4'] = variables['A_LoopField50']
                        if (InStr(variables['guiOutOfDropDownList4'] , "%")):
                            variables['str1'] = variables['guiOutOfDropDownList4']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfDropDownList4'] = " variables." + variables['var1']
                        variables['guiOutOfDropDownList4'] = StringTrimLeft(variables['guiOutOfDropDownList4'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField50'])), 1 , 1)== StrLower("v")):
                        variables['guiOutOfDropDownListV'] = 1
                        variables['guiOutOfDropDownList5'] = "" + Chr(34) + "" + "Gui" + variables['GuiNumber'] + variables['A_LoopField50'] + "" + Chr(34) + ""
                        variables['guiOutOfDropDownList52'] = variables['A_LoopField50']
                        variables['dynamicGuiSet'] = 1
                        if (InStr(variables['guiOutOfDropDownList5'] , "%")):
                            variables['str1'] = variables['guiOutOfDropDownList5']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfDropDownList5'] = " " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + [variables." + variables['var1'] + "]"
                        else:
                            variables['A_LoopField50OutFixCnavas'] = StringTrimLeft(variables['A_LoopField50'], 1)
                            variables['guiOutOfDropDownList5'] = " " + "" + Chr(34) + "" + "Gui" + variables['GuiNumber'] + variables['A_LoopField50OutFixCnavas'] + "" + Chr(34) + ""
                        variables['guiOutOfDropDownList5'] = StringTrimLeft(variables['guiOutOfDropDownList5'], 1)
                        variables['guiOutOfDropDownList52'] = StringTrimLeft(variables['guiOutOfDropDownList52'], 1)
                        variables['isThereArecId'] = 0
                    if (SubStr(Trim(StrLower(variables['A_LoopField50'])), 1 , 1)== StrLower("g")):
                        variables['guiOutOfDropDownListG'] = 1
                        variables['guiOutOfDropDownList6'] = variables['A_LoopField50']
                        variables['guiOutOfDropDownList6'] = StringTrimLeft(variables['guiOutOfDropDownList6'], 1)
                variables['DropDownListId'] += 1
                if (variables['isThereArecId'] == 1):
                    variables['guiOutOfDropDownList5'] = "" + Chr(34) + "" + "Gui" + variables['GuiNumber'] + "DropDownList" + str(variables['DropDownListId']) + "" + Chr(34) + ""
                variables['DropDownListOut'] = "createCustomDropdown(Gui" + variables['GuiNumber'] + ", " + variables['guiOutOfDropDownList5'] + ", " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ", " + Chr(34) + "#333333" + Chr(34) + ", " + variables['guiOutOfDropDownList1'] + ", " + variables['guiOutOfDropDownList2'] + ", " + variables['guiOutOfDropDownList3'] + ", " + variables['guiOutOfDropDownList4'] + ", " + variables['guiOutOfDropDownList6'] + " );"
                #MsgBox, % rectangleOut
                variables['jsCode'] += "\n" + variables['DropDownListOut'] + "\n"
            if (variables['out3'] == "iframe"):
                variables['guiOutOfIframeNum'] = 0
                variables['guiOutOfIframeX'] = 0
                variables['guiOutOfIframeY'] = 0
                variables['guiOutOfIframeW'] = 0
                variables['guiOutOfIframeH'] = 0
                variables['guiOutOfIframeV'] = 0
                variables['guiOutOfIframeG'] = 0
                for A_Index51 in range(1, 7 + 1):
                    variables['A_Index51'] = A_Index51
                    variables[f'guiOutOfIframe{variables["A_Index51"]}'] = ""
                variables['isThereArecId'] = 1
                variables['guiOutOfIframe3'] = "150"
                variables['guiOutOfIframe4'] = "30"
                variables['dynamicGuiSet'] = 0
                items = LoopParseFunc(variables['out4'], " ")
                for A_Index52, A_LoopField52 in enumerate(items, start=1):
                    variables['A_Index52'] = A_Index52
                    variables['A_LoopField52'] = A_LoopField52
                    #MsgBox, |%A_LoopField52%|
                    variables['guiOutOfIframeNum'] += 1
                    if (SubStr(Trim(StrLower(variables['A_LoopField52'])), 1 , 1)== StrLower("x")):
                        variables['guiOutOfIframeX'] = 1
                        variables['guiOutOfIframe1'] = variables['A_LoopField52']
                        if (InStr(variables['guiOutOfIframe1'] , "%")):
                            variables['str1'] = variables['guiOutOfIframe1']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfIframe1'] = " variables." + variables['var1']
                        variables['guiOutOfIframe1'] = StringTrimLeft(variables['guiOutOfIframe1'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField52'])), 1 , 1)== StrLower("y")):
                        variables['guiOutOfIframeY'] = 1
                        variables['guiOutOfIframe2'] = variables['A_LoopField52']
                        if (InStr(variables['guiOutOfIframe2'] , "%")):
                            variables['str1'] = variables['guiOutOfIframe2']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfIframe2'] = " variables." + variables['var1']
                        variables['guiOutOfIframe2'] = StringTrimLeft(variables['guiOutOfIframe2'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField52'])), 1 , 1)== StrLower("w")):
                        variables['guiOutOfIframeW'] = 1
                        variables['guiOutOfIframe3'] = variables['A_LoopField52']
                        if (InStr(variables['guiOutOfIframe3'] , "%")):
                            variables['str1'] = variables['guiOutOfIframe3']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfIframe3'] = " variables." + variables['var1']
                        variables['guiOutOfIframe3'] = StringTrimLeft(variables['guiOutOfIframe3'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField52'])), 1 , 1)== StrLower("h")):
                        variables['guiOutOfIframeH'] = 1
                        variables['guiOutOfIframe4'] = variables['A_LoopField52']
                        if (InStr(variables['guiOutOfIframe4'] , "%")):
                            variables['str1'] = variables['guiOutOfIframe4']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfIframe4'] = " variables." + variables['var1']
                        variables['guiOutOfIframe4'] = StringTrimLeft(variables['guiOutOfIframe4'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField52'])), 1 , 1)== StrLower("v")):
                        variables['guiOutOfIframeV'] = 1
                        variables['guiOutOfIframe5'] = "" + Chr(34) + "" + "Gui" + variables['GuiNumber'] + variables['A_LoopField52'] + "" + Chr(34) + ""
                        variables['guiOutOfIframe52'] = variables['A_LoopField52']
                        variables['dynamicGuiSet'] = 1
                        if (InStr(variables['guiOutOfIframe5'] , "%")):
                            variables['str1'] = variables['guiOutOfIframe5']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfIframe5'] = " " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + [variables." + variables['var1'] + "]"
                        else:
                            variables['A_LoopField52OutFixCnavas'] = StringTrimLeft(variables['A_LoopField52'], 1)
                            variables['guiOutOfIframe5'] = " " + Chr(34) + "" + "Gui" + variables['GuiNumber'] + variables['A_LoopField52OutFixCnavas'] + "" + Chr(34) + ""
                        variables['guiOutOfIframe5'] = StringTrimLeft(variables['guiOutOfIframe5'], 1)
                        variables['guiOutOfIframe52'] = StringTrimLeft(variables['guiOutOfIframe52'], 1)
                        variables['isThereArecId'] = 0
                    if (SubStr(Trim(StrLower(variables['A_LoopField52'])), 1 , 1)== StrLower("r")):
                        variables['guiOutOfIframeG'] = 1
                        variables['guiOutOfIframe6'] = variables['A_LoopField52']
                        variables['guiOutOfIframe6'] = StringTrimLeft(variables['guiOutOfIframe6'], 1)
                variables['IframeId'] += 1
                if (variables['isThereArecId'] == 1):
                    variables['guiOutOfIframe5'] = "" + Chr(34) + "" + "Gui" + variables['GuiNumber'] + "Iframe" + str(variables['IframeId']) + "" + Chr(34) + ""
                variables['IframeOut'] = "createCustomIframe(Gui" + variables['GuiNumber'] + ", " + variables['guiOutOfIframe5'] + ", " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ", " + Chr(34) + "#333333" + Chr(34) + ", " + variables['guiOutOfIframe1'] + ", " + variables['guiOutOfIframe2'] + ", " + variables['guiOutOfIframe3'] + ", " + variables['guiOutOfIframe4'] + ", " + variables['guiOutOfIframe6'] + ");"
                variables['jsCode'] += "\n" + variables['IframeOut'] + "\n"
            if (variables['out3'] == "player"):
                variables['guiOutOfVideoNum'] = 0
                variables['guiOutOfVideoX'] = 0
                variables['guiOutOfVideoY'] = 0
                variables['guiOutOfVideoW'] = 0
                variables['guiOutOfVideoH'] = 0
                variables['guiOutOfVideoV'] = 0
                variables['guiOutOfVideoG'] = 0
                for A_Index53 in range(1, 7 + 1):
                    variables['A_Index53'] = A_Index53
                    variables[f'guiOutOfVideo{variables["A_Index53"]}'] = ""
                variables['guiOutOfVideo3'] = "480"
                variables['guiOutOfVideo4'] = "300"
                variables['isThereArecId'] = 1
                variables['dynamicGuiSet'] = 0
                items = LoopParseFunc(variables['out4'], " ")
                for A_Index54, A_LoopField54 in enumerate(items, start=1):
                    variables['A_Index54'] = A_Index54
                    variables['A_LoopField54'] = A_LoopField54
                    #MsgBox, |%A_LoopField54%|
                    variables['guiOutOfVideoNum'] += 1
                    if (SubStr(Trim(StrLower(variables['A_LoopField54'])), 1 , 1)== StrLower("x")):
                        variables['guiOutOfVideoX'] = 1
                        variables['guiOutOfVideo1'] = variables['A_LoopField54']
                        if (InStr(variables['guiOutOfVideo1'] , "%")):
                            variables['str1'] = variables['guiOutOfVideo1']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfVideo1'] = " variables." + variables['var1']
                        variables['guiOutOfVideo1'] = StringTrimLeft(variables['guiOutOfVideo1'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField54'])), 1 , 1)== StrLower("y")):
                        variables['guiOutOfVideoY'] = 1
                        variables['guiOutOfVideo2'] = variables['A_LoopField54']
                        if (InStr(variables['guiOutOfVideo2'] , "%")):
                            variables['str1'] = variables['guiOutOfVideo2']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfVideo2'] = " variables." + variables['var1']
                        variables['guiOutOfVideo2'] = StringTrimLeft(variables['guiOutOfVideo2'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField54'])), 1 , 1)== StrLower("w")):
                        variables['guiOutOfVideoW'] = 1
                        variables['guiOutOfVideo3'] = variables['A_LoopField54']
                        if (InStr(variables['guiOutOfVideo3'] , "%")):
                            variables['str1'] = variables['guiOutOfVideo3']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfVideo3'] = " variables." + variables['var1']
                        variables['guiOutOfVideo3'] = StringTrimLeft(variables['guiOutOfVideo3'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField54'])), 1 , 1)== StrLower("h")):
                        variables['guiOutOfVideoH'] = 1
                        variables['guiOutOfVideo4'] = variables['A_LoopField54']
                        if (InStr(variables['guiOutOfVideo4'] , "%")):
                            variables['str1'] = variables['guiOutOfVideo4']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfVideo4'] = " variables." + variables['var1']
                        variables['guiOutOfVideo4'] = StringTrimLeft(variables['guiOutOfVideo4'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField54'])), 1 , 1)== StrLower("v")):
                        variables['guiOutOfVideoV'] = 1
                        variables['guiOutOfVideo5'] = "" + Chr(34) + "" + "Gui" + variables['GuiNumber'] + variables['A_LoopField54'] + "" + Chr(34) + ""
                        variables['guiOutOfVideo52'] = variables['A_LoopField54']
                        variables['dynamicGuiSet'] = 1
                        if (InStr(variables['guiOutOfVideo5'] , "%")):
                            variables['str1'] = variables['guiOutOfVideo5']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfVideo5'] = " " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + [variables." + variables['var1'] + "]"
                        else:
                            variables['A_LoopField54OutFixCnavas'] = StringTrimLeft(variables['A_LoopField54'], 1)
                            variables['guiOutOfVideo5'] = " " + "" + Chr(34) + "" + "Gui" + variables['GuiNumber'] + variables['A_LoopField54OutFixCnavas'] + "" + Chr(34) + ""
                        variables['guiOutOfVideo5'] = StringTrimLeft(variables['guiOutOfVideo5'], 1)
                        variables['guiOutOfVideo52'] = StringTrimLeft(variables['guiOutOfVideo52'], 1)
                        variables['isThereArecId'] = 0
                    if (SubStr(Trim(StrLower(variables['A_LoopField54'])), 1 , 1)== StrLower("g")):
                        variables['guiOutOfVideoG'] = 1
                        variables['guiOutOfVideo6'] = variables['A_LoopField54']
                        variables['guiOutOfVideo6'] = StringTrimLeft(variables['guiOutOfVideo6'], 1)
                # 1 url
                # 2 yt url
                # 3 base64
                variables['typeOfAvideo'] = 0
                if (InStr(variables['out5'] , "https://")or InStr(variables['out5'] , "http://")or InStr(variables['out5'] , "www.")or InStr(variables['out5'] , "ftp://")):
                    # One or more of the specified substrings are found in out5
                    #MsgBox, URL or FTP link detected in out5: %out5%
                    variables['typeOfAvideo'] = 1
                    if (InStr(variables['out5'] , "https://www.youtube.com/"))or(InStr(variables['out5'] , "https://youtu.be/")):
                        variables['typeOfAvideo'] = 2
                        if (InStr(variables['out5'] , "https://www.youtube.com/")):
                            variables['gg'] = 0
                        else:
                            variables['str1'] = Trim(variables['out5'])
                            variables['s'] = StrSplit(variables['str1'] , "https://youtu.be/" , 2)
                            variables['out5'] = "https://www.youtube.com/watch?v=" + variables['s']
                else:
                    # None of the specified substrings are found in out5
                    #MsgBox, No URL or FTP link detected in out5: %out5%
                    variables['typeOfAvideo'] = 3
                variables['videoId'] += 1
                if (variables['isThereArecId'] == 1):
                    variables['guiOutOfVideo5'] = "" + Chr(34) + "" + "Gui" + variables['GuiNumber'] + "Video" + str(variables['videoId']) + "" + Chr(34) + ""
                if (variables['typeOfAvideo'] == 1):
                    variables['videoOut'] = "\nPlayVideoFromUrl(Gui" + variables['GuiNumber'] + ", " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ", " + variables['guiOutOfVideo5'] + ", " + variables['guiOutOfVideo1'] + ", " + variables['guiOutOfVideo2'] + ", " + variables['guiOutOfVideo3'] + ", " + variables['guiOutOfVideo4'] + ", false)\n"
                if (variables['typeOfAvideo'] == 2):
                    variables['videoOut'] = "\nPlayYoutubeVid(Gui" + variables['GuiNumber'] + ", " + Chr(34) + "" + variables['out5'] + "" + Chr(34) + ", " + variables['guiOutOfVideo5'] + ", " + variables['guiOutOfVideo1'] + ", " + variables['guiOutOfVideo2'] + ", " + variables['guiOutOfVideo3'] + ", " + variables['guiOutOfVideo4'] + ", false)\n"
                if (variables['typeOfAvideo'] == 3):
                    variables['videoOut'] = "\nPlayVideoFromBase64(Gui" + variables['GuiNumber'] + ", base64VideoData" + str(variables['base64ImageNum']) + ", " + variables['guiOutOfVideo5'] + ", " + variables['guiOutOfVideo1'] + ", " + variables['guiOutOfVideo2'] + ", " + variables['guiOutOfVideo3'] + ", " + variables['guiOutOfVideo4'] + ", false)\n"
                #MsgBox, % rectangleOut
                variables['jsCode'] += "\n" + variables['videoOut'] + "\n"
            if (variables['out3'] == "rectangle")or(variables['out3'] == "circle"):
                variables['ifWeUseCanvasThenAddUpdateFunc1'] = "updateRectangle(id, param1, param2, param3, param4);\nredrawCanvas(); // Redraw the canvas with updated rectangles"
                variables['ifWeUseCanvasThenAddUpdateFunc2'] = "updateRectangleColor(id, param1);\nredrawCanvas(); // Redraw the canvas with updated rectangles"
                variables['ifWeUseCanvas'] = 1
                variables['rectangleOut'] = ""
                variables['guiOutOfRectangleNum'] = 0
                variables['guiOutOfRectangleX'] = 0
                variables['guiOutOfRectangleY'] = 0
                variables['guiOutOfRectangleW'] = 0
                variables['guiOutOfRectangleH'] = 0
                variables['guiOutOfRectangleV'] = 0
                variables['guiOutOfRectangleG'] = 0
                for A_Index55 in range(1, 6 + 1):
                    variables['A_Index55'] = A_Index55
                    variables[f'guiOutOfRectangle{variables["A_Index55"]}'] = ""
                variables['dynamicGuiSet'] = 0
                variables['isThereArecId'] = 1
                items = LoopParseFunc(variables['out4'], " ")
                for A_Index56, A_LoopField56 in enumerate(items, start=1):
                    variables['A_Index56'] = A_Index56
                    variables['A_LoopField56'] = A_LoopField56
                    #MsgBox, |%A_LoopField56%|
                    variables['guiOutOfRectangleNum'] += 1
                    if (SubStr(Trim(StrLower(variables['A_LoopField56'])), 1 , 1)== StrLower("x")):
                        variables['guiOutOfRectangleX'] = 1
                        variables['guiOutOfRectangle1'] = variables['A_LoopField56']
                        if (InStr(variables['guiOutOfRectangle1'] , "%")):
                            variables['str1'] = variables['guiOutOfRectangle1']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfRectangle1'] = " variables." + variables['var1']
                        variables['guiOutOfRectangle1'] = StringTrimLeft(variables['guiOutOfRectangle1'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField56'])), 1 , 1)== StrLower("y")):
                        variables['guiOutOfRectangleY'] = 1
                        variables['guiOutOfRectangle2'] = variables['A_LoopField56']
                        if (InStr(variables['guiOutOfRectangle2'] , "%")):
                            variables['str1'] = variables['guiOutOfRectangle2']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfRectangle2'] = " variables." + variables['var1']
                        variables['guiOutOfRectangle2'] = StringTrimLeft(variables['guiOutOfRectangle2'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField56'])), 1 , 1)== StrLower("w")):
                        variables['guiOutOfRectangleW'] = 1
                        variables['guiOutOfRectangle3'] = variables['A_LoopField56']
                        if (InStr(variables['guiOutOfRectangle3'] , "%")):
                            variables['str1'] = variables['guiOutOfRectangle3']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfRectangle3'] = " variables." + variables['var1']
                        variables['guiOutOfRectangle3'] = StringTrimLeft(variables['guiOutOfRectangle3'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField56'])), 1 , 1)== StrLower("h")):
                        variables['guiOutOfRectangleH'] = 1
                        variables['guiOutOfRectangle4'] = variables['A_LoopField56']
                        if (InStr(variables['guiOutOfRectangle4'] , "%")):
                            variables['str1'] = variables['guiOutOfRectangle4']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfRectangle4'] = " variables." + variables['var1']
                        variables['guiOutOfRectangle4'] = StringTrimLeft(variables['guiOutOfRectangle4'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField56'])), 1 , 1)== StrLower("v")):
                        variables['guiOutOfRectangleV'] = 1
                        variables['guiOutOfRectangle5'] = "" + Chr(34) + "" + "Gui" + variables['GuiNumber'] + variables['A_LoopField56'] + "" + Chr(34) + ""
                        variables['guiOutOfRectangle52'] = variables['A_LoopField56']
                        variables['dynamicGuiSet'] = 1
                        if (InStr(variables['guiOutOfRectangle5'] , "%")):
                            variables['str1'] = variables['guiOutOfRectangle5']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfRectangle5'] = " " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + Chr(34) + " + [variables." + variables['var1'] + "]"
                        else:
                            variables['A_LoopField56OutFixCnavas'] = StringTrimLeft(variables['A_LoopField56'], 1)
                            variables['guiOutOfRectangle5'] = " " + "" + Chr(34) + "" + "Gui" + variables['GuiNumber'] + variables['A_LoopField56OutFixCnavas'] + "" + Chr(34) + ""
                        variables['guiOutOfRectangle5'] = StringTrimLeft(variables['guiOutOfRectangle5'], 1)
                        variables['guiOutOfRectangle52'] = StringTrimLeft(variables['guiOutOfRectangle52'], 1)
                        variables['isThereArecId'] = 0
                    if (SubStr(Trim(StrLower(variables['A_LoopField56'])), 1 , 1)== StrLower("g")):
                        variables['guiOutOfRectangleG'] = 1
                        variables['guiOutOfRectangle6'] = variables['A_LoopField56']
                        variables['guiOutOfRectangle6'] = StringTrimLeft(variables['guiOutOfRectangle6'], 1)
                variables['rectangleId'] += 1
                if (variables['isThereArecId'] == 1):
                    variables['guiOutOfRectangle5'] = "" + Chr(34) + "" + "Gui1Rectangle" + str(variables['switchId']) + "" + Chr(34) + ""
                if (variables['out3'] == "circle"):
                    variables['rectangleOut'] = "// draw a circle dont look that is says drawRoundedRectangle look at the 6th parameter in function its for rounding the rectangle and since we are rounding it to the half of the width of the rectangle it will look like a circle\nrectangles.push(drawRoundedRectangle(ctx, " + variables['guiOutOfRectangle1'] + ", " + variables['guiOutOfRectangle2'] + ", " + variables['guiOutOfRectangle3'] + ", " + variables['guiOutOfRectangle4'] + ", Round(" + variables['guiOutOfRectangle3'] + " / 2), " + Chr(34) + "#E5E5E5" + Chr(34) + ", " + variables['guiOutOfRectangle5'] + "));"
                else:
                    variables['rectangleOut'] = "rectangles.push(drawRoundedRectangle(ctx, " + variables['guiOutOfRectangle1'] + ", " + variables['guiOutOfRectangle2'] + ", " + variables['guiOutOfRectangle3'] + ", " + variables['guiOutOfRectangle4'] + ", 3, " + Chr(34) + "#E5E5E5" + Chr(34) + ", " + variables['guiOutOfRectangle5'] + "));"
                #MsgBox, % rectangleOut
                variables['jsCode'] += "\n" + variables['rectangleOut'] + "\n"
            if (variables['out2'] == "hide"):
                variables['outJSshowNoMore'] = "Gui" + variables['GuiNumber'] + ".style.display = " + Chr(34) + "none" + Chr(34) + ";"
                variables['jsCode'] += "\n" + variables['outJSshowNoMore'] + "\n"
            if (variables['out2'] == "show")or(variables['out2'] == "move"):
                if (Trim(variables['out3'])== ""):
                    variables['outJSshowNoMore'] = "Gui" + variables['GuiNumber'] + ".style.display = " + Chr(34) + "block" + Chr(34) + ";"
                    variables['jsCode'] += "\n" + variables['outJSshowNoMore'] + "\n"
                else:
                    variables['guiOutOfShowX'] = 0
                    variables['guiOutOfShowY'] = 0
                    variables['guiOutOfShowW'] = 0
                    variables['guiOutOfShowH'] = 0
                    variables['guiOutOfShowRound'] = "0"
                    variables['boderinGuiYes'] = "Gui" + variables['GuiNumber'] + ".style.border = " + Chr(34) + "2px solid white" + Chr(34) + ";"
                    variables['boderinGuiYesCan'] = "canvas.style.border = " + Chr(34) + "2px solid white" + Chr(34) + ";"
                    for A_Index57 in range(1, 4 + 1):
                        variables['A_Index57'] = A_Index57
                        variables[f'guiOutOfShow{variables["A_Index57"]}'] = ""
                    items = LoopParseFunc(variables['out3'], " ")
                    for A_Index58, A_LoopField58 in enumerate(items, start=1):
                        variables['A_Index58'] = A_Index58
                        variables['A_LoopField58'] = A_LoopField58
                        if (SubStr(Trim(StrLower(variables['A_LoopField58'])), 1 , 7)== StrLower("-border")):
                            variables['boderinGuiYes'] = "Gui" + variables['GuiNumber'] + ".style.border = " + Chr(34) + "" + Chr(34) + ";"
                            variables['boderinGuiYesCan'] = "canvas.style.border = " + Chr(34) + "" + Chr(34) + ";"
                        if (SubStr(Trim(StrLower(variables['A_LoopField58'])), 1 , 12)== StrLower("+WebsiteMode")):
                            variables['isFullScren'] = 1
                        if (SubStr(Trim(StrLower(variables['A_LoopField58'])), 1 , 1)== StrLower("x")):
                            variables['guiOutOfShowX'] = 1
                            variables['guiOutOfShow1'] = variables['A_LoopField58']
                            if (InStr(variables['guiOutOfShow1'] , "%")):
                                variables['str1'] = variables['guiOutOfShow1']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfShow1'] = " " + Chr(34) + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + ""
                            variables['guiOutOfShow1'] = StringTrimLeft(variables['guiOutOfShow1'], 1)
                        if (SubStr(Trim(StrLower(variables['A_LoopField58'])), 1 , 1)== StrLower("y")):
                            variables['guiOutOfShowY'] = 1
                            variables['guiOutOfShow2'] = variables['A_LoopField58']
                            if (InStr(variables['guiOutOfShow2'] , "%")):
                                variables['str1'] = variables['guiOutOfShow2']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfShow2'] = " " + Chr(34) + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + ""
                            variables['guiOutOfShow2'] = StringTrimLeft(variables['guiOutOfShow2'], 1)
                        if (SubStr(Trim(StrLower(variables['A_LoopField58'])), 1 , 1)== StrLower("w")):
                            variables['guiOutOfShowW'] = 1
                            variables['guiOutOfShow3'] = variables['A_LoopField58']
                            if (InStr(variables['guiOutOfShow3'] , "%")):
                                variables['str1'] = variables['guiOutOfShow3']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfShow3'] = " " + Chr(34) + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + ""
                            variables['guiOutOfShow3'] = StringTrimLeft(variables['guiOutOfShow3'], 1)
                        if (SubStr(Trim(StrLower(variables['A_LoopField58'])), 1 , 1)== StrLower("h")):
                            variables['guiOutOfShowH'] = 1
                            variables['guiOutOfShow4'] = variables['A_LoopField58']
                            if (InStr(variables['guiOutOfShow4'] , "%")):
                                variables['str1'] = variables['guiOutOfShow4']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfShow4'] = " " + Chr(34) + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + ""
                            variables['guiOutOfShow4'] = StringTrimLeft(variables['guiOutOfShow4'], 1)
                        if (SubStr(Trim(StrLower(variables['A_LoopField58'])), 1 , 1)== StrLower("r")):
                            variables['guiOutOfShowRound'] = variables['A_LoopField58']
                            variables['guiOutOfShowRound'] = StringTrimLeft(variables['guiOutOfShowRound'], 1)
                            if (InStr(variables['guiOutOfShowRound'] , "%")):
                                variables['str1'] = variables['guiOutOfShowRound']
                                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                                variables['var1'] = variables['s']
                                variables['guiOutOfShowRound'] = "" + Chr(34) + " + variables." + variables['var1'] + " + " + Chr(34) + "px"
                            else:
                                variables['guiOutOfButton9'] = variables['guiOutOfButton9'] + "px"
                    if (variables['guiOutOfShowX'] == 1):
                        variables['jsCode01'] = "Gui" + variables['GuiNumber'] + ".style.left = " + Chr(34) + "" + variables['guiOutOfShow1'] + "px" + Chr(34) + ";"
                    else:
                        variables['jsCode01'] = "Gui" + variables['GuiNumber'] + ".style.left = (window.innerWidth - parseInt(Gui" + variables['GuiNumber'] + ".style.width)) / 2 + " + Chr(34) + "px" + Chr(34) + ";"
                    if (variables['guiOutOfShowY'] == 1):
                        variables['jsCode02'] = "Gui" + variables['GuiNumber'] + ".style.top = " + Chr(34) + "" + variables['guiOutOfShow2'] + "px" + Chr(34) + ";"
                    else:
                        variables['jsCode02'] = "Gui" + variables['GuiNumber'] + ".style.top = (window.innerHeight - parseInt(Gui" + variables['GuiNumber'] + ".style.height)) / 2 + " + Chr(34) + "px" + Chr(34) + ";"
                    if (variables['guiOutOfShowX'] == 1):
                        variables['jsCode01Canvas'] = "canvas.style.left = " + Chr(34) + "" + variables['guiOutOfShow1'] + "px" + Chr(34) + ";"
                    else:
                        variables['jsCode01Canvas'] = "canvas.style.left = (window.innerWidth - canvas.width) / 2 + " + Chr(34) + "px" + Chr(34) + ";"
                    if (variables['guiOutOfShowY'] == 1):
                        variables['jsCode02Canvas'] = "canvas.style.top = " + Chr(34) + "" + variables['guiOutOfShow2'] + "px" + Chr(34) + ";"
                    else:
                        variables['jsCode02Canvas'] = "canvas.style.top = (window.innerHeight - canvas.height) / 2 + " + Chr(34) + "px" + Chr(34) + ";"
                    if (variables['isFullScren'] == 1):
                        variables['isFullScrenOnce'] += 1
                        if (variables['isFullScrenOnce'] == 1):
                            variables['FullScrenFixCode'] = "document.documentElement.setAttribute(" + Chr(34) + "style" + Chr(34) + ", " + Chr(34) + "padding: 0; margin: 0;" + Chr(34) + ");\ndocument.head.setAttribute(" + Chr(34) + "style" + Chr(34) + ", " + Chr(34) + "padding: 0; margin: 0;" + Chr(34) + ");\ndocument.body.setAttribute(" + Chr(34) + "style" + Chr(34) + ", " + Chr(34) + "overflow-x: hidden;padding: 0; margin: 0;" + Chr(34) + ");"
                        else:
                            variables['FullScrenFixCode'] = "\n"
                    else:
                        variables['FullScrenFixCode'] = "\n"
                    #MsgBox, % weUseCnanvasAtALL
                    if (variables['weUseCnanvasAtALL'] == 1):
                        variables['varOutJsCanvasFixTranspernat'] = "Gui1.style.backgroundColor = " + Chr(34) + "transparent" + Chr(34) + ";\nGui1.style.zIndex = " + Chr(34) + "100" + Chr(34) + ";"
                        if (variables['isFullScren'] == 1):
                            variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + ".style.position = " + Chr(34) + "absolute" + Chr(34) + ";\nGui" + variables['GuiNumber'] + ".style.width = window.innerWidth + " + Chr(34) + "px" + Chr(34) + "; // Set the width\nGui" + variables['GuiNumber'] + ".style.height = " + Chr(34) + "" + variables['guiOutOfShow4'] + "px" + Chr(34) + "; // Set the height\nGui" + variables['GuiNumber'] + ".style.color = " + Chr(34) + "white" + Chr(34) + ";\nGui" + variables['GuiNumber'] + ".style.fontSize = " + Chr(34) + "15px" + Chr(34) + ";\nGui" + variables['GuiNumber'] + ".style.padding = " + Chr(34) + "0px" + Chr(34) + ";\nGui" + variables['GuiNumber'] + ".style.borderRadius = " + Chr(34) + "" + variables['guiOutOfShowRound'] + "px" + Chr(34) + ";\nGui" + variables['GuiNumber'] + ".style.fontFamily = " + Chr(34) + "" + variables['fontName'] + ", sans-serif" + Chr(34) + "; // Specify your desired font here\nGui" + variables['GuiNumber'] + ".style.zIndex = " + Chr(34) + "" + variables['GuiNumber'] + "00" + Chr(34) + ";\n\n\n" + variables['varOutJsCanvasFixTranspernat'] + "\n\ndocument.body.appendChild(Gui" + variables['GuiNumber'] + "); // Append the GUI window to the body\nGui" + variables['GuiNumber'] + ".style.display = " + Chr(34) + "block" + Chr(34) + ";\n"
                        else:
                            variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + ".style.position = " + Chr(34) + "absolute" + Chr(34) + ";\nGui" + variables['GuiNumber'] + ".style.width = " + Chr(34) + "" + variables['guiOutOfShow3'] + "px" + Chr(34) + "; // Set the width\nGui" + variables['GuiNumber'] + ".style.height = " + Chr(34) + "" + variables['guiOutOfShow4'] + "px" + Chr(34) + "; // Set the height\nGui" + variables['GuiNumber'] + ".style.color = " + Chr(34) + "white" + Chr(34) + ";\nGui" + variables['GuiNumber'] + ".style.fontSize = " + Chr(34) + "15px" + Chr(34) + ";\nGui" + variables['GuiNumber'] + ".style.borderRadius = " + Chr(34) + "" + variables['guiOutOfShowRound'] + "px" + Chr(34) + ";\nGui" + variables['GuiNumber'] + ".style.padding = " + Chr(34) + "0px" + Chr(34) + ";\n" + variables['boderinGuiYes'] + "\nGui" + variables['GuiNumber'] + ".style.zIndex = " + Chr(34) + "" + variables['GuiNumber'] + "00" + Chr(34) + ";\nGui" + variables['GuiNumber'] + ".style.fontFamily = " + Chr(34) + "" + variables['fontName'] + ", sans-serif" + Chr(34) + "; // Specify your desired font here\n\n// Calculate center position\n" + variables['jsCode01'] + "\n" + variables['jsCode02'] + "\n\n\n" + variables['varOutJsCanvasFixTranspernat'] + "\n\ndocument.body.appendChild(Gui" + variables['GuiNumber'] + "); // Append the GUI window to the body\nGui" + variables['GuiNumber'] + ".style.display = " + Chr(34) + "block" + Chr(34) + ";\n"
                    else:
                        if (variables['isFullScren'] == 1):
                            variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + ".style.position = " + Chr(34) + "absolute" + Chr(34) + ";\nGui" + variables['GuiNumber'] + ".style.width = window.innerWidth + " + Chr(34) + "px" + Chr(34) + "; // Set the width\nGui" + variables['GuiNumber'] + ".style.height = " + Chr(34) + "" + variables['guiOutOfShow4'] + "px" + Chr(34) + "; // Set the height\nGui" + variables['GuiNumber'] + ".style.background = " + Chr(34) + "" + variables['guiColorShow'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + ".style.backgroundColor = " + Chr(34) + "" + variables['guiColorShow'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + ".style.color = " + Chr(34) + "white" + Chr(34) + ";\nGui" + variables['GuiNumber'] + ".style.fontSize = " + Chr(34) + "15px" + Chr(34) + ";\nGui" + variables['GuiNumber'] + ".style.padding = " + Chr(34) + "0px" + Chr(34) + ";\nGui" + variables['GuiNumber'] + ".style.borderRadius = " + Chr(34) + "" + variables['guiOutOfShowRound'] + "px" + Chr(34) + ";\nGui" + variables['GuiNumber'] + ".style.fontFamily = " + Chr(34) + "" + variables['fontName'] + ", sans-serif" + Chr(34) + "; // Specify your desired font here\nGui" + variables['GuiNumber'] + ".style.zIndex = " + Chr(34) + "" + variables['GuiNumber'] + "00" + Chr(34) + ";\n\n\n" + variables['varOutJsCanvasFixTranspernat'] + "\n\ndocument.body.appendChild(Gui" + variables['GuiNumber'] + "); // Append the GUI window to the body\nGui" + variables['GuiNumber'] + ".style.display = " + Chr(34) + "block" + Chr(34) + ";\n"
                        else:
                            variables['jsCode0'] = "\nGui" + variables['GuiNumber'] + ".style.position = " + Chr(34) + "absolute" + Chr(34) + ";\nGui" + variables['GuiNumber'] + ".style.width = " + Chr(34) + "" + variables['guiOutOfShow3'] + "px" + Chr(34) + "; // Set the width\nGui" + variables['GuiNumber'] + ".style.height = " + Chr(34) + "" + variables['guiOutOfShow4'] + "px" + Chr(34) + "; // Set the height\nGui" + variables['GuiNumber'] + ".style.background = " + Chr(34) + "" + variables['guiColorShow'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + ".style.backgroundColor = " + Chr(34) + "" + variables['guiColorShow'] + "" + Chr(34) + ";\nGui" + variables['GuiNumber'] + ".style.color = " + Chr(34) + "white" + Chr(34) + ";\nGui" + variables['GuiNumber'] + ".style.fontSize = " + Chr(34) + "15px" + Chr(34) + ";\nGui" + variables['GuiNumber'] + ".style.borderRadius = " + Chr(34) + "" + variables['guiOutOfShowRound'] + "px" + Chr(34) + ";\nGui" + variables['GuiNumber'] + ".style.padding = " + Chr(34) + "0px" + Chr(34) + ";\n" + variables['boderinGuiYes'] + "\nGui" + variables['GuiNumber'] + ".style.fontFamily = " + Chr(34) + "" + variables['fontName'] + ", sans-serif" + Chr(34) + "; // Specify your desired font here\nGui" + variables['GuiNumber'] + ".style.zIndex = " + Chr(34) + "" + variables['GuiNumber'] + "00" + Chr(34) + ";\n\n// Calculate center position\n" + variables['jsCode01'] + "\n" + variables['jsCode02'] + "\n\n\n" + variables['varOutJsCanvasFixTranspernat'] + "\n\ndocument.body.appendChild(Gui" + variables['GuiNumber'] + "); // Append the GUI window to the body\nGui" + variables['GuiNumber'] + ".style.display = " + Chr(34) + "block" + Chr(34) + ";\n"
                    if (variables['isFullScren'] == 1):
                        variables['jsCode0Canvas'] = "\n\n// Create a canvas element dynamically\ncanvas = document.createElement(" + Chr(34) + "canvas" + Chr(34) + ");\ncanvas.id = " + Chr(34) + "canvasId" + Chr(34) + "; // Assign ID to the canvas element\ncanvas.style.background = " + Chr(34) + "" + variables['guiColorShow'] + "" + Chr(34) + ";\ncanvas.width = window.innerWidth;\ncanvas.height = " + Chr(34) + "" + variables['guiOutOfShow4'] + "" + Chr(34) + "; // Set the height\ncanvas.style.borderRadius = " + Chr(34) + "" + variables['guiOutOfShowRound'] + "px" + Chr(34) + ";\ncanvas.style.backgroundColor = " + Chr(34) + "" + variables['guiColorShow'] + "" + Chr(34) + "; // Set background color\n\n// Get the 2D rendering context\nctx = canvas.getContext(" + Chr(34) + "2d" + Chr(34) + ");\n\n// Center the canvas\ncanvas.style.position = " + Chr(34) + "absolute" + Chr(34) + ";\n\n\n\n// Append the canvas to the body\ndocument.body.appendChild(canvas);\n\n// Array to store information about rectangles\nrectangles = [];\n"
                    else:
                        variables['jsCode0Canvas'] = "\n\n// Create a canvas element dynamically\ncanvas = document.createElement(" + Chr(34) + "canvas" + Chr(34) + ");\ncanvas.id = " + Chr(34) + "canvasId" + Chr(34) + "; // Assign ID to the canvas element\ncanvas.style.background = " + Chr(34) + "" + variables['guiColorShow'] + "" + Chr(34) + ";\ncanvas.width = " + Chr(34) + "" + variables['guiOutOfShow3'] + "" + Chr(34) + "; // Set the width\ncanvas.height = " + Chr(34) + "" + variables['guiOutOfShow4'] + "" + Chr(34) + "; // Set the height\ncanvas.style.borderRadius = " + Chr(34) + "" + variables['guiOutOfShowRound'] + "px" + Chr(34) + ";\n" + variables['boderinGuiYesCan'] + "\ncanvas.style.backgroundColor = " + Chr(34) + "" + variables['guiColorShow'] + "" + Chr(34) + "; // Set background color\n\n// Get the 2D rendering context\nctx = canvas.getContext(" + Chr(34) + "2d" + Chr(34) + ");\n\n// Center the canvas\ncanvas.style.position = " + Chr(34) + "absolute" + Chr(34) + ";\n" + variables['jsCode01Canvas'] + "\n" + variables['jsCode02Canvas'] + "\n\n\n// Append the canvas to the body\ndocument.body.appendChild(canvas);\n\n// Array to store information about rectangles\nrectangles = [];\n"
                    if (variables['guiOutOfShow3']  != ""):
                        variables['jsCode01CanvasW'] = "canvas.width = " + Chr(34) + "" + variables['guiOutOfShow3'] + "" + Chr(34) + "; // Set the width"
                    if (variables['guiOutOfShow4']  != ""):
                        variables['jsCode01CanvasH'] = "canvas.height = " + Chr(34) + "" + variables['guiOutOfShow4'] + "" + Chr(34) + "; // Set the height"
                    variables['jsCode0Canvas2'] = "\n" + variables['jsCode01CanvasW'] + "\n" + variables['jsCode01CanvasH'] + "\n\n\n" + variables['jsCode01Canvas'] + "\n" + variables['jsCode02Canvas'] + "\n\n// Append the canvas to the body\ndocument.body.appendChild(canvas);\nredrawCanvas();\n"
                    if (variables['weUseCnanvasAtALLEver'] == 1):
                        variables['jsCode0'] = variables['jsCode0'] + variables['jsCode0Canvas2']
                    if (variables['weUseCnanvasAtALL'] == 1):
                        variables['jsCode0'] = variables['jsCode0'] + variables['jsCode0Canvas']
                        variables['weUseCnanvasAtALL'] = 0
                        variables['weUseCnanvasAtALLEver'] = 1
                    variables['jsCode'] += "\n" + variables['jsCode0'] + "\n" + variables['FullScrenFixCode'] + "\n"
            variables['lineDone'] = 1
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 12)== StrLower("GuiControl, "))or(SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 11)== StrLower("GuiControl ")):
            variables['str1'] = variables['A_LoopField32']
            variables['str1'] = StrReplace(variables['str1'] , ": " , ", ")
            variables['s'] = StrSplit(variables['str1'] , "," , 1)
            variables['out1'] = Trim(variables['s'])
            #MsgBox, % out1
            variables['GuiNumberOld'] = variables['GuiNumber']
            variables['GuiNumber'] = RegExReplace(variables['out1'] , "\\D" , "")
            if (variables['GuiNumber'] == ""):
                variables['GuiNumber'] = "1"
            variables['s'] = StrSplit(variables['str1'] , ", " , 2)
            variables['out2'] = StrLower(Trim(variables['s']))
            variables['s'] = StrSplit(variables['str1'] , ", " , 3)
            variables['out3'] = Trim(variables['s'])
            variables['s'] = StrSplit(variables['str1'] , ", " , 4)
            variables['out4'] = Trim(variables['s'])
            variables['s'] = StrSplit(variables['str1'] , ", " , 5)
            variables['out5'] = Trim(variables['s'])
            if (InStr(variables['out3'] , "%")):
                variables['str1'] = variables['out3']
                variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                variables['var1'] = variables['s']
                variables['out3'] = "" + Chr(34) + " + variables." + variables['var1']
            else:
                variables['out3'] = variables['out3'] + Chr(34)
            if (variables['out2'] == "move"):
                variables['guiOutOfMoveX'] = 0
                variables['guiOutOfMoveY'] = 0
                variables['guiOutOfMoveW'] = 0
                variables['guiOutOfMoveH'] = 0
                for A_Index59 in range(1, 4 + 1):
                    variables['A_Index59'] = A_Index59
                    variables[f'guiOutOfMove{variables["A_Index59"]}'] = ""
                items = LoopParseFunc(variables['out4'], " ")
                for A_Index60, A_LoopField60 in enumerate(items, start=1):
                    variables['A_Index60'] = A_Index60
                    variables['A_LoopField60'] = A_LoopField60
                    if (SubStr(Trim(StrLower(variables['A_LoopField60'])), 1 , 1)== StrLower("x")):
                        variables['guiOutOfMoveX'] = 1
                        variables['guiOutOfMove1'] = variables['A_LoopField60']
                        if (InStr(variables['guiOutOfMove1'] , "%")):
                            variables['str1'] = variables['guiOutOfMove1']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfMove1'] = " variables." + variables['var1']
                        variables['guiOutOfMove1'] = StringTrimLeft(variables['guiOutOfMove1'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField60'])), 1 , 1)== StrLower("y")):
                        variables['guiOutOfMoveY'] = 1
                        variables['guiOutOfMove2'] = variables['A_LoopField60']
                        if (InStr(variables['guiOutOfMove2'] , "%")):
                            variables['str1'] = variables['guiOutOfMove2']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfMove2'] = " variables." + variables['var1']
                        variables['guiOutOfMove2'] = StringTrimLeft(variables['guiOutOfMove2'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField60'])), 1 , 1)== StrLower("w")):
                        variables['guiOutOfMoveW'] = 1
                        variables['guiOutOfMove3'] = variables['A_LoopField60']
                        if (InStr(variables['guiOutOfMove3'] , "%")):
                            variables['str1'] = variables['guiOutOfMove3']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfMove3'] = " variables." + variables['var1']
                        variables['guiOutOfMove3'] = StringTrimLeft(variables['guiOutOfMove3'], 1)
                    if (SubStr(Trim(StrLower(variables['A_LoopField60'])), 1 , 1)== StrLower("h")):
                        variables['guiOutOfMoveH'] = 1
                        variables['guiOutOfMove4'] = variables['A_LoopField60']
                        if (InStr(variables['guiOutOfMove4'] , "%")):
                            variables['str1'] = variables['guiOutOfMove4']
                            variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                            variables['var1'] = variables['s']
                            variables['guiOutOfMove4'] = " variables." + variables['var1']
                        variables['guiOutOfMove4'] = StringTrimLeft(variables['guiOutOfMove4'], 1)
                variables['out0'] = "GuiControl(" + Chr(34) + "" + variables['out2'] + "" + Chr(34) + ", " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + variables['out3'] + ", " + variables['guiOutOfMove1'] + ", " + variables['guiOutOfMove2'] + ", " + variables['guiOutOfMove3'] + ", " + variables['guiOutOfMove4'] + ");"
                #MsgBox, % out0
            if (variables['out2'] == "focus"):
                variables['out0'] = "GuiControl(" + Chr(34) + "" + variables['out2'] + "" + Chr(34) + ", " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + variables['out3'] + ");"
            if (variables['out2'] == "text"):
                variables['var1'] = variables['out4']
                if (InStr(variables['var1'] , "%")):
                    variables['str1'] = variables['var1']
                    variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                    variables['var1'] = variables['s']
                    variables['var1'] = "variables." + variables['var1']
                    variables['out0'] = "GuiControl(" + Chr(34) + "" + variables['out2'] + "" + Chr(34) + ", " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + variables['out3'] + ", " + variables['var1'] + ");"
                else:
                    variables['out0'] = "GuiControl(" + Chr(34) + "" + variables['out2'] + "" + Chr(34) + ", " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + variables['out3'] + ", " + Chr(34) + "" + variables['var1'] + "" + Chr(34) + ");"
            if (variables['out2'] == "textide"):
                variables['var1'] = variables['out4']
                if (InStr(variables['var1'] , "%")):
                    variables['str1'] = variables['var1']
                    variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                    variables['var1'] = variables['s']
                    variables['var1'] = "variables." + variables['var1']
                    variables['out0'] = "GuiControl(" + Chr(34) + "" + variables['out2'] + "" + Chr(34) + ", " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + variables['out3'] + ", " + variables['var1'] + ");"
                else:
                    variables['out0'] = "GuiControl(" + Chr(34) + "" + variables['out2'] + "" + Chr(34) + ", " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + variables['out3'] + ", " + Chr(34) + "" + variables['var1'] + "" + Chr(34) + ");"
            if (variables['out2'] == "hide"):
                variables['out0'] = "GuiControl(" + Chr(34) + "" + variables['out2'] + "" + Chr(34) + ", " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + variables['out3'] + ");"
            if (variables['out2'] == "show"):
                variables['out0'] = "GuiControl(" + Chr(34) + "" + variables['out2'] + "" + Chr(34) + ", " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + variables['out3'] + ");"
            if (variables['out2'] == "disable"):
                variables['out0'] = "GuiControl(" + Chr(34) + "" + variables['out2'] + "" + Chr(34) + ", " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + variables['out3'] + ");"
            if (variables['out2'] == "destroy"):
                variables['out0'] = "GuiControl(" + Chr(34) + "" + variables['out2'] + "" + Chr(34) + ", " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + variables['out3'] + ");"
            if (variables['out2'] == "enable"):
                variables['out0'] = "GuiControl(" + Chr(34) + "" + variables['out2'] + "" + Chr(34) + ", " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + variables['out3'] + ");"
            if (variables['out2'] == "picture"):
                variables['out0'] = "GuiControl(" + Chr(34) + "" + variables['out2'] + "" + Chr(34) + ", " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + variables['out3'] + ", " + Chr(34) + "" + variables['out4'] + "" + Chr(34) + ");"
            if (variables['out2'] == "font"):
                if (InStr(variables['out4'] , "s")):
                    variables['out2'] = "font"
                    variables['var1'] = variables['out4']
                    variables['var1'] = StringTrimLeft(variables['var1'], 1)
                    if (InStr(variables['var1'] , "%")):
                        variables['str1'] = variables['var1']
                        variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                        variables['var1'] = variables['s']
                        variables['var1'] = "variables." + variables['var1']
                        variables['out0'] = "GuiControl(" + Chr(34) + "" + variables['out2'] + "" + Chr(34) + ", " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + variables['out3'] + ", " + variables['var1'] + ");"
                    else:
                        variables['out0'] = "GuiControl(" + Chr(34) + "" + variables['out2'] + "" + Chr(34) + ", " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + variables['out3'] + ", " + variables['var1'] + ");"
                if (InStr(variables['out4'] , "c")):
                    variables['out2'] = "color"
                    variables['var1'] = variables['out4']
                    variables['var1'] = StringTrimLeft(variables['var1'], 1)
                    if (InStr(variables['var1'] , "%")):
                        variables['str1'] = variables['var1']
                        variables['s'] = StrSplit(variables['str1'] , "%" , 2)
                        variables['var1'] = variables['s']
                        variables['var1'] = "variables." + variables['var1']
                        variables['var1'] = "" + Chr(34) + "#" + Chr(34) + " + " + variables['var1']
                        variables['out0'] = "GuiControl(" + Chr(34) + "" + variables['out2'] + "" + Chr(34) + ", " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + variables['out3'] + ", " + variables['var1'] + ");"
                    else:
                        variables['var1'] = "#" + variables['var1']
                        variables['out0'] = "GuiControl(" + Chr(34) + "" + variables['out2'] + "" + Chr(34) + ", " + Chr(34) + "Gui" + variables['GuiNumber'] + "" + variables['out3'] + ", " + Chr(34) + "" + variables['var1'] + "" + Chr(34) + ");"
            variables['out0'] = StrReplace(variables['out0'] , Chr(44) + Chr(32) + Chr(44) + Chr(32), "")
            variables['jsCode'] += variables['out0'] + "\n"
            variables['lineDone'] = 1
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 8)== StrLower("Random, ")):
            variables['sstr1'] = variables['A_LoopField32']
            variables['s'] = StrSplit(variables['sstr1'] , "," , 2)
            variables['out00'] = variables['s']
            variables['s'] = StrSplit(variables['sstr1'] , "," , 3)
            variables['out11'] = variables['s']
            variables['s'] = StrSplit(variables['sstr1'] , "," , 4)
            variables['out22'] = variables['s']
            #MsgBox, % out2
            variables['out00'] = Trim(variables['out00'])
            variables['out11'] = Trim(variables['out11'])
            variables['out22'] = Trim(variables['out22'])
            variables['line00'] = transpileVariables(variables['out00'] , variables['functionNames'])
            variables['line11'] = transpileVariables(variables['out11'] , variables['functionNames'])
            variables['line22'] = transpileVariables(variables['out22'] , variables['functionNames'])
            #MsgBox, % line
            variables['var1'] = variables['line00'] + " = getRandomNumber(" + variables['line11'] + ", " + variables['line22'] + ")"
            #MsgBox, % var1
            variables['lineDone'] = 1
            variables['jsCode'] += variables['var1'] + "\n"
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 7)== "gosub, "):
            #MsgBox, % A_LoopField32
            variables['sstr1'] = variables['A_LoopField32']
            variables['s'] = StrSplit(variables['sstr1'] , "," , 2)
            variables['out1'] = variables['s']
            variables['out1'] = Trim(variables['out1'])
            variables['out2'] = "await " + variables['out1'] + "()"
            #MsgBox, % out2
            variables['lineDone'] = 1
            variables['jsCode'] += variables['out2'] + "\n"
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 10)== "settimer, "):
            variables['sstr1'] = variables['A_LoopField32']
            variables['s'] = StrSplit(variables['sstr1'] , "," , 2)
            variables['out1'] = Trim(variables['s'])
            variables['s'] = StrSplit(variables['sstr1'] , "," , 3)
            variables['out2'] = Trim(variables['s'])
            #~ MsgBox, |%out1%|
            #~ MsgBox, |%out2%|
            variables['myVar'] = variables['out2']
            if (RegExReplace(variables['myVar'] , "^\\d+(\\.\\d+)?$" , "")== ""):
                #MsgBox, % "The variable is a number."
                variables['out3'] = "SetTimer(" + variables['out1'] + ", " + variables['out2'] + ")"
            else:
                if (StrLower(variables['out2'])== "off"):
                    variables['out2'] = "Off"
                else:
                    variables['out2'] = "On"
                #MsgBox, % "The variable is not a number."
                variables['out3'] = "SetTimer(" + variables['out1'] + ", " + Chr(34) + variables['out2'] + Chr(34) + ")"
            #MsgBox, % out3
            variables['jsCode'] += variables['out3'] + "\n"
            variables['lineDone'] = 1
        elif (RegExReplace(variables['A_LoopField32'] , "^\\w+:$" , "") != variables['A_LoopField32'])and(Trim(SubStr(variables['A_LoopField32'] , 0))== ":")and(variables['lineDone']  != 1):
            #MsgBox, % A_LoopField32
            variables['out1'] = variables['A_LoopField32']
            variables['out1'] = Trim(variables['out1'])
            variables['out1'] = StringTrimRight(variables['out1'], 1)
            if (variables['out1'] == "OnKeyPress"):
                variables['onKeyPress'] = "\n     document.addEventListener(" + Chr(34) + "keypress" + Chr(34) + ", function (event) {\n          // Code to execute when a key is pressed\n          console.log(" + Chr(34) + "Key pressed:" + Chr(34) + ", event.key);\n\n          OnKeyPress(event.key);\n          });\n"
                variables['forJsCode'] = "\n async function OnKeyPress(A_ThisHotkey)\n         {\n          variables.A_ThisHotkey = A_ThisHotkey\n"
                variables['jsCode'] += variables['forJsCode'] + "\n"
            else:
                variables['jsCode'] += "async function " + variables['out1'] + "(A_GuiControl)\n{\n"
            #MsgBox, % out1
            #~ MsgBox, % see
            variables['lineDone'] = 1
        elif (RegExReplace(variables['A_LoopField32'] , "^.*::$" , "")== "")and(variables['lineDone']  != 1):
            if (variables['A_LoopField32']  != ""):
                variables['out1'] = variables['A_LoopField32']
                variables['out1'] = Trim(variables['out1'])
                #MsgBox, % out1
                variables['HotKeyShift'] = 0
                variables['HotKeyAlt'] = 0
                variables['HotKeyCtrl'] = 0
                items = LoopParseFunc(variables['out1'])
                for A_Index61, A_LoopField61 in enumerate(items, start=1):
                    variables['A_Index61'] = A_Index61
                    variables['A_LoopField61'] = A_LoopField61
                    if (variables['A_LoopField61'] == "!"):
                        variables['HotKeyAlt'] = 1
                    if (variables['A_LoopField61'] == "+"):
                        variables['HotKeyShift'] = 1
                    if (variables['A_LoopField61'] == "^"):
                        variables['HotKeyCtrl'] = 1
                variables['HotKeylettersOnly'] = ""
                variables['HotKeylettersOnly'] = RegExReplace(variables['out1'] , "[^a-zA-Z]" , "")
                variables['HotKeylettersOnly'] = TitleCaseString(variables['HotKeylettersOnly'])
                variables['HotKeylettersOnlySTRLEN'] = 0
                items = LoopParseFunc(variables['HotKeylettersOnly'])
                for A_Index62, A_LoopField62 in enumerate(items, start=1):
                    variables['A_Index62'] = A_Index62
                    variables['A_LoopField62'] = A_LoopField62
                    variables['HotKeylettersOnlySTRLEN'] += 1
                if (variables['HotKeylettersOnlySTRLEN']  != 1):
                    variables['HotKeylettersOnly'] = "Arrow" + variables['HotKeylettersOnly']
                #MsgBox, % HotKeylettersOnly
                variables['HotKeyNumOnly'] = ""
                variables['HotKeyNumOnly'] = RegExReplace(variables['out1'] , "\\D" , "")
                if (variables['HotKeyNumOnly'] == ""):
                    variables['out3'] = variables['HotKeylettersOnly']
                else:
                    variables['out3'] = variables['HotKeyNumOnly']
                if (variables['HotKeyCtrl'] == 1):
                    variables['out3'] = "Ctrl+" + variables['out3']
                if (variables['HotKeyShift'] == 1):
                    variables['out3'] = "Shift+" + variables['out3']
                if (variables['HotKeyAlt'] == 1):
                    variables['out3'] = "Alt+" + variables['out3']
                variables['out4'] = variables['out3']
                variables['out4'] = StrReplace(variables['out4'] , "+" , "")
                variables['out3'] = StrReplace(variables['out3'] , "ArrowBackspace" , "Backspace")
                variables['out4'] = StrReplace(variables['out4'] , "ArrowBackspace" , "Backspace")
                variables['out3'] = StrReplace(variables['out3'] , "ArrowEnter" , "Enter")
                variables['out4'] = StrReplace(variables['out4'] , "ArrowEnter" , "Enter")
                variables['HotKeyCalledHotKyesOut'] = "\nMakeHotKey(" + Chr(34) + "" + variables['out3'] + "" + Chr(34) + ", function(hotkey) {\nHotKeyCalled" + variables['out4'] + "()\n});\n"
                variables['HotKeyCalledHotKyes'] += variables['HotKeyCalledHotKyesOut'] + "\n"
                variables['out2'] = "\nasync function HotKeyCalled" + variables['out4'] + "()\n{\n// console.log(" + Chr(34) + "HotKeyCalled " + variables['out4'] + "" + Chr(34) + ")\n\n"
                #MsgBox, % out2
                variables['jsCode'] += variables['out2'] + "\n"
                variables['lineDone'] = 1
        elif (variables['A_LoopField32'] == "Return"):
            variables['jsCode'] += "}" + "\n"
            variables['lineDone'] = 1
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 10)== "inputbox, "):
            variables['lineDone'] = 1
            variables['out2'] = StringTrimLeft(variables['A_LoopField32'], 10)
            variables['sstr1'] = variables['out2']
            variables['s'] = StrSplit(variables['sstr1'] , "," , 1)
            variables['ou1'] = variables['s']
            variables['s'] = StrSplit(variables['sstr1'] , "," , 2)
            variables['ou2'] = variables['s']
            variables['s'] = StrSplit(variables['sstr1'] , "," , 3)
            variables['ou3'] = variables['s']
            variables['ou1'] = Trim(variables['ou1'])
            variables['ou2'] = Trim(variables['ou2'])
            variables['ou3'] = Trim(variables['ou3'])
            if (variables['ou3'] == ""):
                variables['ou3'] = variables['ou2']
            variables['var1'] = "variables." + variables['ou1'] + " = prompt('" + variables['ou3'] + "');"
            variables['jsCode'] += variables['var1'] + "\n"
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 17)== StrLower("StringTrimRight, ")):
            variables['varr1'] = StrSplit(variables['A_LoopField32'] , "," , 2)
            variables['varr2'] = StrSplit(variables['A_LoopField32'] , "," , 3)
            variables['varr3'] = StrSplit(variables['A_LoopField32'] , "," , 4)
            variables['outt1'] = Trim(transpileVariables(variables['varr1'] , variables['functionNames']))
            variables['outt2'] = Trim(transpileVariables(variables['varr2'] , variables['functionNames']))
            variables['outt3'] = Trim(transpileVariables(variables['varr3'] , variables['functionNames']))
            variables['out'] = variables['outt1'] + " = " + "StringTrimRight(" + variables['outt2'] + ", " + variables['outt3'] + ")"
            variables['lineDone'] = 1
            variables['jsCode'] += variables['out'] + "\n"
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 16)== StrLower("StringTrimLeft, ")):
            variables['varr1'] = StrSplit(variables['A_LoopField32'] , "," , 2)
            variables['varr2'] = StrSplit(variables['A_LoopField32'] , "," , 3)
            variables['varr3'] = StrSplit(variables['A_LoopField32'] , "," , 4)
            variables['outt1'] = Trim(transpileVariables(variables['varr1'] , variables['functionNames']))
            variables['outt2'] = Trim(transpileVariables(variables['varr2'] , variables['functionNames']))
            variables['outt3'] = Trim(transpileVariables(variables['varr3'] , variables['functionNames']))
            variables['out'] = variables['outt1'] + " = " + "StringTrimLeft(" + variables['outt2'] + ", " + variables['outt3'] + ")"
            variables['lineDone'] = 1
            variables['jsCode'] += variables['out'] + "\n"
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 7)== StrLower("Run, % ")):
            variables['sstr1'] = StringTrimLeft(variables['A_LoopField32'], 7)
            variables['out1'] = transpileVariables(variables['sstr1'] , variables['functionNames'])
            variables['out2'] = "window.open(" + variables['out1'] + ");"
            variables['jsCode'] += variables['out2'] + "\n"
            variables['lineDone'] = 1
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 5)== StrLower("Run, "))and( not (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 7)== StrLower("Run, % "))):
            variables['sstr1'] = StringTrimLeft(variables['A_LoopField32'], 5)
            variables['out1'] = transpileLowVariables(variables['sstr1'])
            variables['out2'] = "window.open(" + variables['out1'] + ");"
            variables['jsCode'] += variables['out2'] + "\n"
            variables['lineDone'] = 1
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 6)== StrLower("Run, %")):
            variables['sstr1'] = StringTrimLeft(variables['A_LoopField32'], 6)
            variables['out1'] = transpileLowVariables(variables['sstr1'])
            variables['out2'] = "window.open(" + variables['out1'] + ");"
            variables['jsCode'] += variables['out2'] + "\n"
            variables['lineDone'] = 1
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 13)== StrLower("MouseGetPos, ")):
            variables['str1'] = variables['A_LoopField32']
            variables['out2'] = StringTrimLeft(variables['A_LoopField32'], 13)
            #MsgBox, % out2
            variables['out2'] = Trim(variables['out2'])
            #MsgBox, |%out2%|
            if (InStr(variables['out2'] , ",")):
                variables['str1'] = variables['out2']
                variables['s'] = StrSplit(variables['str1'] , ", " , 1)
                variables['out21'] = variables['s']
                variables['s'] = StrSplit(variables['str1'] , ", " , 2)
                variables['out22'] = variables['s']
                variables['line1'] = transpileVariables(variables['out21'] , variables['functionNames'])
                variables['line2'] = transpileVariables(variables['out22'] , variables['functionNames'])
                #MsgBox, % line
                variables['var1'] = variables['line1'] + " = MouseGetPos(" + Chr(34) + "x" + Chr(34) + ")"
                variables['var2'] = variables['line2'] + " = MouseGetPos(" + Chr(34) + "y" + Chr(34) + ")"
                if (Trim(variables['out21'])== ""):
                    variables['jsCode'] += variables['var2'] + "\n"
                else:
                    variables['jsCode'] += variables['var1'] + "\n" + variables['var2'] + "\n"
            else:
                variables['line'] = variables['varTraspiler'](variables['out2'] , 0)
                #MsgBox, % line
                variables['var1'] = variables['line'] + " = MouseGetPos(" + Chr(34) + "x" + Chr(34) + ")"
                variables['jsCode'] += variables['var1'] + "\n"
            variables['lineDone'] = 1
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 11)== StrLower("SoundPlay, ")):
            variables['str1'] = variables['A_LoopField32']
            variables['out2'] = StringTrimLeft(variables['A_LoopField32'], 11)
            variables['out2'] = Trim(variables['out2'])
            #MsgBox, |%out2%|
            variables['str1'] = variables['out2']
            if (InStr(variables['str1'] , ",")):
                variables['s'] = StrSplit(variables['str1'] , ", " , 1)
                variables['out21'] = StrLower(Trim(variables['s']))
                variables['s'] = StrSplit(variables['str1'] , ", " , 2)
                variables['out22'] = Trim(variables['s'])
                if (InStr(variables['out21'] , "volume")):
                    # volume
                    variables['var1'] = "SoundPlay(" + Chr(34) + "setVolume" + Chr(34) + ", " + variables['out22'] + ")"
                else:
                    # play
                    # in out22 we have a file path that has to converted to base64
                    variables['base64soundNum'] += 1
                    variables['base64out'] = Trim(variables['out22'])
                    variables['base64sound'] = variables['base64out']
                    variables['base64soundListDummy'] = "\nlet base64sound" + str(variables['base64soundNum']) + " = " + Chr(34) + "" + variables['base64sound'] + "" + Chr(34) + "\n"
                    variables['base64soundList'] += variables['base64soundListDummy']
                    variables['var1'] = "SoundPlay(" + Chr(34) + "play" + Chr(34) + ", base64sound" + str(variables['base64soundNum']) + ")"
            else:
                variables['str1'] = Trim(variables['str1'])
                variables['var1'] = "SoundPlay(" + Chr(34) + variables['str1'] + Chr(34) + ")"
            variables['jsCode'] += variables['var1'] + "\n"
            variables['lineDone'] = 1
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 6)== StrLower("Icon, ")):
            variables['out2'] = StringTrimLeft(variables['A_LoopField32'], 6)
            variables['jsCode'] += "changeFavicon(" + Chr(34) + Trim(variables['out2']) + Chr(34) + ")" + "\n"
            variables['lineDone'] = 1
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 7)== StrLower("Title, ")):
            variables['str1'] = StringTrimLeft(variables['A_LoopField32'], 7)
            variables['jsCode'] += "document.title = " + transpileLowVariables(Trim(variables['str1'])) + "\n"
            variables['lineDone'] = 1
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 12)== "fileappend, "):
            variables['sstr1'] = variables['A_LoopField32']
            variables['s'] = StrSplit(variables['sstr1'] , "," , 2)
            variables['out111111'] = Trim(variables['s'])
            variables['s'] = StrSplit(variables['sstr1'] , "," , 3)
            variables['out222222222222'] = Trim(variables['s'])
            variables['out111111'] = transpileLowVariables(variables['out111111'])
            variables['out222222222222'] = transpileLowVariables(variables['out222222222222'])
            variables['out3'] = "FileAppend(" + variables['out111111'] + ", " + variables['out222222222222'] + ")"
            #MsgBox, % out3
            variables['jsCode'] += variables['out3'] + "\n"
            variables['lineDone'] = 1
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 10)== StrLower("FileRead, ")):
            variables['sstr1'] = variables['A_LoopField32']
            variables['s'] = StrSplit(variables['sstr1'] , ", " , 2)
            variables['out1'] = variables['s']
            variables['s'] = StrSplit(variables['sstr1'] , ", " , 3)
            variables['out2'] = variables['s']
            variables['out1'] = Trim(variables['out1'])
            variables['out2'] = Trim(variables['out2'])
            variables['out2'] = transpileLowVariables(variables['out2'])
            variables['numOfTextData'] += 1
            #MsgBox, % out2
            variables['extractedText'] = FileRead("" + variables['out2'] + "")
            variables['extractedText'] = StrReplace(variables['extractedText'] , Chr(96), Chr(92) + Chr(96))
            variables['extractedText'] = StrReplace(variables['extractedText'] , "$" , Chr(92) + Chr(36))
            variables['extractedText'] = StrReplace(variables['extractedText'] , Chr(92), Chr(92) + Chr(92))
            #MsgBox, % extractedText
            variables['tempTextData'] = "let textData" + str(variables['numOfTextData']) + " = " + Chr(96) + "" + str(variables['extractedText']) + "" + Chr(96) + ";"
            #MsgBox, %tempTextData%
            variables['TextData'] += variables['tempTextData'] + "\n\n"
            variables['out3'] = "variables." + variables['out1'] + " = " + "textData" + str(variables['numOfTextData'])
            variables['jsCode'] += "\n" + variables['out3'] + "\n"
            variables['lineDone'] = 1
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 9)== StrLower("Sleep, % ")):
            variables['var1'] = StringTrimLeft(variables['A_LoopField32'], 9)
            variables['var2'] = transpileVariables(variables['var1'] , variables['functionNames'])
            variables['out2'] = "await sleep(" + variables['var2'] + ")"
            variables['jsCode'] += variables['out2'] + "\n"
            variables['lineDone'] = 1
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 7)== StrLower("Sleep, "))and( not (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 9)== StrLower("Sleep, % "))):
            variables['var1'] = StringTrimLeft(variables['A_LoopField32'], 7)
            variables['var2'] = transpileVariables(variables['var1'] , variables['functionNames'])
            variables['out2'] = "await sleep(" + variables['var2'] + ")"
            variables['jsCode'] += variables['out2'] + "\n"
            variables['lineDone'] = 1
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 7)== StrLower("Msgbox,"))and( not (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 10)== StrLower("Msgbox, % ")))and(InStr(variables['A_LoopField32'] , " % "))and(CountCommasWithoutBacktick(variables['A_LoopField32'])):
            variables['sstr1'] = variables['A_LoopField32']
            variables['sstr1'] = StrReplace(variables['sstr1'] , "" + Chr(96) + "," , "|comasdhkbdsjvfesvyessfe6uw7igfweiugvseuvk|la|")
            variables['s'] = StrSplit(variables['sstr1'] , "," , 2)
            variables['Options'] = variables['s']
            variables['Options'] = Trim(variables['Options'])
            variables['s'] = StrSplit(variables['sstr1'] , "," , 3)
            variables['Title'] = variables['s']
            variables['Title'] = Trim(variables['Title'])
            variables['s'] = StrSplit(variables['sstr1'] , "," , 4)
            variables['out2'] = variables['s']
            variables['out2'] = StrReplace(variables['out2'] , " % " , "")
            variables['s'] = StrSplit(variables['sstr1'] , "," , 5)
            variables['timeoutMsgbox'] = variables['s']
            variables['timeoutMsgbox'] = Trim(variables['timeoutMsgbox'])
            variables['s'] = StrSplit(variables['sstr1'] , "," , 6)
            variables['toggleAwait'] = variables['s']
            variables['toggleAwait'] = Trim(variables['toggleAwait'])
            variables['out2'] = StrReplace(variables['out2'] , "|comasdhkbdsjvfesvyessfe6uw7igfweiugvseuvk|la|" , "" + Chr(92) + ",")
            #MsgBox, % out2
            variables['out2'] = Trim(variables['out2'])
            variables['line'] = transpileVariables(variables['out2'] , variables['functionNames'])
            #MsgBox, % line
            if (variables['Title'] == ""):
                variables['Title'] = " "
            if (variables['line'] == ""):
                variables['line'] = " "
            if (variables['Options'] == ""):
                variables['Options'] = 0
            if (variables['timeoutMsgbox'] == ""):
                variables['timeoutMsgbox'] = 0
            if (variables['toggleAwait'] == "1")or(variables['toggleAwait'] == ""):
                variables['var1'] = "await showCustomMessageBox({}," + Chr(34) + variables['Title'] + Chr(34) + ", " + str(variables['line']) + ", " + str(variables['Options']) + ", " + str(variables['timeoutMsgbox']) + ")"
            else:
                variables['var1'] = "showCustomMessageBox({}," + Chr(34) + variables['Title'] + Chr(34) + ", " + str(variables['line']) + ", " + str(variables['Options']) + ", " + str(variables['timeoutMsgbox']) + ")"
            #MsgBox, % var1
            variables['lineDone'] = 1
            variables['jsCode'] += variables['var1'] + "\n"
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 7)== StrLower("Msgbox,"))and( not (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 10)== StrLower("Msgbox, % ")))and( not (InStr(variables['A_LoopField32'] , " % ")))and(CountCommasWithoutBacktick(variables['A_LoopField32'])):
            variables['sstr1'] = variables['A_LoopField32']
            variables['sstr1'] = StrReplace(variables['sstr1'] , Chr(96) + "," , "|comasdhkbdsjvfesvyessfe6uw7igfweiugvseuvk|la|")
            variables['s'] = StrSplit(variables['sstr1'] , "," , 2)
            variables['Options'] = variables['s']
            variables['Options'] = Trim(variables['Options'])
            variables['s'] = StrSplit(variables['sstr1'] , "," , 3)
            variables['Title'] = variables['s']
            variables['Title'] = Trim(variables['Title'])
            variables['s'] = StrSplit(variables['sstr1'] , ", " , 4)
            variables['var1'] = variables['s']
            variables['numOfProcentSings'] = 0
            #MsgBox, % var1
            items = LoopParseFunc(variables['var1'])
            for A_Index63, A_LoopField63 in enumerate(items, start=1):
                variables['A_Index63'] = A_Index63
                variables['A_LoopField63'] = A_LoopField63
                if (variables['A_LoopField63'] == "%"):
                    variables['numOfProcentSings'] += 1
            for A_Index64 in range(1, variables['numOfProcentSings'] + 1):
                variables['A_Index64'] = A_Index64
                # Find the position of the first occurrence of "%"
                if (InStr(variables['var1'] , "%")):
                    variables['pos'] = InStr(variables['var1'] , "%")
                    # Replace only the first occurrence of "%" with "|"
                    variables['var1'] = SubStr(variables['var1'] , 1 , variables['pos'] - 1) + Chr(34) + " + variables." + SubStr(variables['var1'] , variables['pos'] + 1)
                    variables['pos'] = InStr(variables['var1'] , "%")
                    variables['var1'] = SubStr(variables['var1'] , 1 , variables['pos'] - 1) + " + " + Chr(34) + SubStr(variables['var1'] , variables['pos'] + 1)
                else:
                    break
            variables['out2'] = variables['var1']
            variables['out2'] = Chr(34) + variables['out2'] + Chr(34)
            variables['s'] = StrSplit(variables['sstr1'] , "," , 5)
            variables['timeoutMsgbox'] = variables['s']
            variables['timeoutMsgbox'] = Trim(variables['timeoutMsgbox'])
            variables['s'] = StrSplit(variables['sstr1'] , "," , 6)
            variables['toggleAwait'] = variables['s']
            variables['toggleAwait'] = Trim(variables['toggleAwait'])
            variables['out2'] = StrReplace(variables['out2'] , "|comasdhkbdsjvfesvyessfe6uw7igfweiugvseuvk|la|" , "" + Chr(92) + ",")
            #MsgBox, % out2
            variables['out2'] = Trim(variables['out2'])
            variables['line'] = variables['out2']
            #MsgBox, % line
            if (variables['Title'] == ""):
                variables['Title'] = " "
            if (variables['line'] == ""):
                variables['line'] = " "
            if (variables['Options'] == ""):
                variables['Options'] = 0
            if (variables['timeoutMsgbox'] == ""):
                variables['timeoutMsgbox'] = 0
            if (variables['toggleAwait'] == "1")or(variables['toggleAwait'] == ""):
                variables['var1'] = "await showCustomMessageBox({}," + Chr(34) + variables['Title'] + Chr(34) + ", " + str(variables['line']) + ", " + str(variables['Options']) + ", " + str(variables['timeoutMsgbox']) + ")"
            else:
                variables['var1'] = "showCustomMessageBox({}," + Chr(34) + variables['Title'] + Chr(34) + ", " + str(variables['line']) + ", " + str(variables['Options']) + ", " + str(variables['timeoutMsgbox']) + ")"
            #MsgBox, % var1
            variables['lineDone'] = 1
            variables['jsCode'] += variables['var1'] + "\n"
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 7)== StrLower("Msgbox,"))and( not (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 10)== StrLower("Msgbox, % ")))and( not (InStr(variables['A_LoopField32'] , " % ")))and(variables['lineDone']  != 1)and( not (CountCommasWithoutBacktick(variables['A_LoopField32']))):
            variables['ALoopField'] = StrReplace(variables['A_LoopField32'] , "" + Chr(96) + "," , "|comasdhkbdsjvfesvyessfe6uw7igfweiugvseuvk|la|")
            variables['out2'] = StringTrimLeft(variables['ALoopField'], 7)
            variables['lineDone'] = 1
            #MsgBox, % out2
            variables['out2'] = Trim(variables['out2'])
            variables['var1'] = variables['out2']
            variables['var1'] = transpileLowVariables(variables['out2'])
            #MsgBox % var1
            #MsgBox % var1
            variables['out2'] = StrReplace(variables['out2'] , "|comasdhkbdsjvfesvyessfe6uw7igfweiugvseuvk|la|" , "" + Chr(92) + ",")
            variables['out2'] = Trim(variables['out2'])
            variables['Title'] = " "
            variables['Options'] = 0
            variables['timeoutMsgbox'] = 0
            variables['var1'] = "await showCustomMessageBox({}," + Chr(34) + variables['Title'] + Chr(34) + ", " + str(variables['var1']) + ", " + str(variables['Options']) + ", " + str(variables['timeoutMsgbox']) + ")"
            variables['jsCode'] += variables['var1'] + "\n"
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 9)== StrLower("Msgbox, %")):
            variables['lineDone'] = 1
            variables['out2'] = StringTrimLeft(variables['A_LoopField32'], 9)
            #MsgBox, % out2
            variables['out2'] = Trim(variables['out2'])
            #MsgBox, % out2
            variables['line'] = transpileVariables(variables['out2'] , variables['functionNames'])
            #MsgBox, % line
            variables['var1'] = "await showCustomMessageBox({}," + Chr(34) + " " + Chr(34) + ", " + str(variables['line']) + ", " + "0" + ", " + "0." + ")"
            #MsgBox, % var1
            variables['jsCode'] += variables['var1'] + "\n"
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 3)== StrLower("if ")):
            variables['var1'] = StringTrimLeft(variables['A_LoopField32'], 3)
            variables['var2'] = Trim(transpileVariables(variables['var1'] , variables['functionNames']))
            variables['out'] = "if (" + variables['var2'] + ")"
            variables['lineDone'] = 1
            variables['jsCode'] += variables['out'] + "\n"
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 8)== StrLower("else if ")):
            variables['var1'] = StringTrimLeft(variables['A_LoopField32'], 8)
            variables['var2'] = Trim(transpileVariables(variables['var1'] , variables['functionNames']))
            variables['out'] = "else if (" + variables['var2'] + ")"
            variables['lineDone'] = 1
            variables['jsCode'] += variables['out'] + "\n"
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 3)== StrLower("if(")):
            variables['var1'] = StringTrimLeft(variables['A_LoopField32'], 2)
            variables['var2'] = Trim(transpileVariables(variables['var1'] , variables['functionNames']))
            variables['out'] = "if (" + variables['var2'] + ")"
            variables['lineDone'] = 1
            variables['jsCode'] += variables['out'] + "\n"
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 8)== StrLower("else if(")):
            variables['var1'] = StringTrimLeft(variables['A_LoopField32'], 7)
            variables['var2'] = Trim(transpileVariables(variables['var1'] , variables['functionNames']))
            variables['out'] = "else if (" + variables['var2'] + ")"
            variables['lineDone'] = 1
            variables['jsCode'] += variables['out'] + "\n"
        elif (SubStr(Trim(variables['A_LoopField32']), 1 , 7)== "return "):
            variables['sstrFormReturn'] = StringTrimLeft(variables['A_LoopField32'], 7)
            variables['var12312'] = transpileVariables(variables['sstrFormReturn'] , variables['functionNames'])
            variables['out'] = "return " + variables['var12312']
            variables['lineDone'] = 1
            variables['jsCode'] += variables['out'] + "\n"
        elif (StrLower(variables['A_LoopField32'])== "loop"):
            # infinity loops
            variables['haveWeEverUsedAloop'] = 1
            variables['lineDone'] = 1
            variables['var1'] = "for (/* Normal Loop */ variables.A" + Chr(95) + "Index" + str(variables['AindexcharLength']) + " = 1; ; variables.A" + Chr(95) + "Index" + str(variables['AindexcharLength']) + "++)"
            variables['nothing'] = ""
            variables['AindexcharLengthStr'] = variables['nothing'] + str(variables['AindexcharLength']) + variables['nothing']
            variables['theFixTextLoopNL'] = ""
            variables['jsCodeAcurlyBraceAddSomeVrasFixNL'] = 1
            variables['lineDone'] = 1
            variables['AHKcodeLoopfixa'] += "nl|itsaersdtgtgfergsdgfsegdfsedAA|" + str(variables['AindexcharLength']) + "\n"
            variables['AHKcodeLoopfixa1'] = "nl|itsaersdtgtgfergsdgfsegdfsedAA|" + str(variables['AindexcharLength'])
            variables['AindexcharLength'] += 1
            variables['jsCode'] += variables['AHKcodeLoopfixa1'] + "\n" + variables['var1'] + "\n"
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 6)== "loop, ")and(SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 8) != "loop, % ")and(SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 7) != "loop % ")and(SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 11) != StrLower("Loop, Parse")):
            variables['sstr123'] = variables['A_LoopField32']
            #MsgBox, % sstr123
            variables['out2'] = StringTrimLeft(variables['sstr123'], 6)
            #MsgBox % out2
            #MsgBox, % out2
            variables['out2'] = Trim(variables['out2'])
            variables['myVar'] = variables['out2']
            variables['lineYGI'] = transpileVariables(variables['myVar'] , variables['functionNames'])
            variables['line'] = variables['lineYGI']
            variables['haveWeEverUsedAloop'] = 1
            #MsgBox, % line
            variables['var1'] = "for (/* Normal Loop */ variables.A" + Chr(95) + "Index" + str(variables['AindexcharLength']) + " = 1; variables.A" + Chr(95) + "Index" + str(variables['AindexcharLength']) + " <= " + variables['line'] + "; variables.A" + Chr(95) + "Index" + str(variables['AindexcharLength']) + "++)"
            variables['nothing'] = ""
            variables['AindexcharLengthStr'] = variables['nothing'] + str(variables['AindexcharLength']) + variables['nothing']
            variables['theFixTextLoopNL'] = ""
            variables['jsCodeAcurlyBraceAddSomeVrasFixNL'] = 1
            variables['AHKcodeLoopfixa'] += "nl|itsaersdtgtgfergsdgfsegdfsedAA|" + str(variables['AindexcharLength']) + "\n"
            variables['AHKcodeLoopfixa1'] = "nl|itsaersdtgtgfergsdgfsegdfsedAA|" + str(variables['AindexcharLength'])
            variables['AindexcharLength'] += 1
            variables['lineDone'] = 1
            variables['jsCode'] += variables['AHKcodeLoopfixa1'] + "\n" + variables['var1'] + "\n"
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 8)== "loop, % "):
            variables['sstr123'] = variables['A_LoopField32']
            #MsgBox, % sstr123
            variables['out2'] = StringTrimLeft(variables['sstr123'], 8)
            #MsgBox % out2
            #MsgBox, % out2
            variables['out2'] = Trim(variables['out2'])
            variables['myVar'] = variables['out2']
            variables['lineYGI'] = transpileVariables(variables['myVar'] , variables['functionNames'])
            variables['line'] = variables['lineYGI']
            #MsgBox, % line
            variables['var1'] = "for (/* Normal Loop */ variables.A" + Chr(95) + "Index" + str(variables['AindexcharLength']) + " = 1; variables.A" + Chr(95) + "Index" + str(variables['AindexcharLength']) + " <= " + variables['line'] + "; variables.A" + Chr(95) + "Index" + str(variables['AindexcharLength']) + "++)"
            variables['nothing'] = ""
            variables['AindexcharLengthStr'] = variables['nothing'] + str(variables['AindexcharLength']) + variables['nothing']
            variables['theFixTextLoopNL'] = ""
            variables['jsCodeAcurlyBraceAddSomeVrasFixNL'] = 1
            variables['haveWeEverUsedAloop'] = 1
            variables['AHKcodeLoopfixa'] += "nl|itsaersdtgtgfergsdgfsegdfsedAA|" + str(variables['AindexcharLength']) + "\n"
            variables['AHKcodeLoopfixa1'] = "nl|itsaersdtgtgfergsdgfsegdfsedAA|" + str(variables['AindexcharLength'])
            variables['AindexcharLength'] += 1
            variables['lineDone'] = 1
            variables['jsCode'] += variables['AHKcodeLoopfixa1'] + "\n" + variables['var1'] + "\n"
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 13)== StrLower("Loop, Parse, ")):
            variables['var1'] = variables['A_LoopField32']
            variables['lineDone'] = 1
            variables['var1'] = Trim(variables['var1'])
            variables['var1'] = StringTrimLeft(variables['var1'], 13)
            variables['line1'] = Trim(StrSplit(variables['var1'] , "," , 1))
            variables['line1'] = transpileVariables(variables['line1'] , variables['functionNames'])
            variables['line2'] = ""
            variables['line3'] = ""
            variables['itemsOut'] = ""
            variables['line2'] = Trim(StrSplit(variables['var1'] , "," , 2))
            variables['line3'] = Trim(StrSplit(variables['var1'] , "," , 3))
            if (InStr(variables['var1'] , Chr(96) + ",")):
                variables['line2'] = Chr(34) + "," + Chr(34)
                variables['itemsOut'] = "var items" + str(variables['AindexcharLength']) + " = LoopParseFunc(" + variables['line1'] + ", " + variables['line2'] + ");"
            else:
                if (variables['line2'] == "")and(variables['line3'] == ""):
                    # nothing so only each char
                    variables['itemsOut'] = "var items" + str(variables['AindexcharLength']) + " = LoopParseFunc(" + variables['line1'] + ");"
                if (variables['line2']  != "")and(variables['line3'] == ""):
                    if (InStr(variables['line2'] , Chr(96))):
                        variables['line2'] = Chr(34) + variables['line2'] + Chr(34)
                    variables['itemsOut'] = "var items" + str(variables['AindexcharLength']) + " = LoopParseFunc(" + variables['line1'] + ", " + variables['line2'] + ");"
                if (variables['line2']  != "")and(variables['line3']  != ""):
                    if (InStr(variables['line2'] , Chr(96))):
                        variables['line2'] = Chr(34) + variables['line2'] + Chr(34)
                    if (InStr(variables['line3'] , Chr(96))):
                        variables['line3'] = Chr(34) + variables['line3'] + Chr(34)
                    variables['itemsOut'] = "var items" + str(variables['AindexcharLength']) + " = LoopParseFunc(" + variables['line1'] + ", " + variables['line2'] + ", " + variables['line3'] + ");"
                variables['itemsOut'] = StrReplace(variables['itemsOut'] , Chr(96), Chr(92))
            variables['var1out'] = variables['itemsOut'] + "\n" + "for (/* Loop Parse */ let A" + Chr(95) + "Index" + str(variables['AindexcharLength']) + " = 1; A" + Chr(95) + "Index" + str(variables['AindexcharLength']) + " <= items" + str(variables['AindexcharLength']) + ".length; A" + Chr(95) + "Index" + str(variables['AindexcharLength']) + "++)"
            variables['nothing'] = ""
            variables['AindexcharLengthStr'] = variables['nothing'] + str(variables['AindexcharLength']) + variables['nothing']
            variables['theFixTextLoopLP'] = "variables.A" + Chr(95) + "Index" + str(variables['AindexcharLength']) + " = A" + Chr(95) + "Index" + str(variables['AindexcharLength']) + "\n" + "variables.A" + Chr(95) + "LoopField" + str(variables['AindexcharLength']) + " = items" + str(variables['AindexcharLength']) + "[A" + Chr(95) + "Index" + str(variables['AindexcharLength']) + " - 1];"
            variables['jsCodeAcurlyBraceAddSomeVrasFixLP'] = 1
            variables['haveWeEverUsedAloop'] = 1
            variables['AHKcodeLoopfixa'] += "lp|itsaersdtgtgfergsdgfsegdfsedAA|" + str(variables['AindexcharLength']) + "\n"
            variables['AHKcodeLoopfixa1'] = "lp|itsaersdtgtgfergsdgfsegdfsedAA|" + str(variables['AindexcharLength'])
            variables['AindexcharLength'] += 1
            variables['jsCode'] += variables['AHKcodeLoopfixa1'] + "\n" + variables['var1out'] + "\n"
        elif (SubStr(variables['A_LoopField32'] , -1)== "++"):
            variables['sstr123'] = Trim(variables['A_LoopField32'])
            variables['sstr123'] = StringTrimRight(variables['sstr123'], 2)
            variables['sstr123'] = Trim(transpileVariables(variables['sstr123'] , variables['functionNames']))
            variables['out'] = variables['sstr123'] + " += 1"
            variables['lineDone'] = 1
            variables['jsCode'] += variables['out'] + "\n"
        elif (SubStr(variables['A_LoopField32'] , -1)== "--"):
            variables['sstr123'] = Trim(variables['A_LoopField32'])
            variables['sstr123'] = StringTrimRight(variables['sstr123'], 2)
            variables['sstr123'] = Trim(transpileVariables(variables['sstr123'] , variables['functionNames']))
            variables['out'] = variables['sstr123'] + " -= 1"
            variables['lineDone'] = 1
            variables['jsCode'] += variables['out'] + "\n"
        elif ((InStr(variables['A_LoopField32'] , " := "))or(InStr(variables['A_LoopField32'] , " .= "))or(InStr(variables['A_LoopField32'] , " += "))or(InStr(variables['A_LoopField32'] , " -= "))or(InStr(variables['A_LoopField32'] , " *= "))and(variables['lineDone'] == 0)and( not (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 1)== Chr(59)))):
            if ( not (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 1)== Chr(59))):
                variables['lineDone'] = 1
                variables['sstr123'] = variables['A_LoopField32']
                variables['whatVarWeUse'] = ""
                if (InStr(variables['A_LoopField32'] , " := ")):
                    variables['whatVarWeUse'] = " = "
                if (InStr(variables['A_LoopField32'] , " .= ")):
                    variables['whatVarWeUse'] = " += "
                if (InStr(variables['A_LoopField32'] , " += ")):
                    variables['whatVarWeUse'] = " += "
                if (InStr(variables['A_LoopField32'] , " -= ")):
                    variables['whatVarWeUse'] = " -= "
                if (InStr(variables['A_LoopField32'] , " *= ")):
                    variables['whatVarWeUse'] = " *= "
                variables['sstr123'] = StrReplace(variables['sstr123'] , ":=" , "=")
                variables['sstr123'] = StrReplace(variables['sstr123'] , ".=" , "=")
                variables['sstr123'] = StrReplace(variables['sstr123'] , "+=" , "=")
                variables['sstr123'] = StrReplace(variables['sstr123'] , "-=" , "=")
                variables['sstr123'] = StrReplace(variables['sstr123'] , "*=" , "=")
                variables['var1avavavavva'] = Trim(StrSplit(variables['sstr123'] , "=" , 1))
                variables['var2avavavavva'] = Trim(StrSplit(variables['sstr123'] , "=" , 2))
                #OutputDebug, ||||||||||||%var2%||||||||||||
                variables['varOUT1avavavavva'] = transpileVariables(variables['var1avavavavva'] , variables['functionNames'])
                variables['varOUT2avavavavva'] = transpileVariables(variables['var2avavavavva'] , variables['functionNames'])
                variables['out'] = variables['varOUT1avavavavva'] + variables['whatVarWeUse'] + variables['varOUT2avavavavva']
                variables['jsCode'] += variables['out'] + "\n"
        elif (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 1)== Chr(59))and(variables['lineDone'] == 0):
            variables['sstr123'] = StringTrimLeft(variables['A_LoopField32'], 1)
            variables['sstr123'] = "//" + variables['sstr123']
            variables['out'] = variables['sstr123']
            variables['lineDone'] = 1
            variables['jsCode'] += variables['out'] + "\n"
        elif (SubStr(variables['A_LoopField32'] , 0)== ")")and(variables['lineDone'] == 0):
            variables['AIndex'] = variables['A_Index32'] + 1
            if ( not (variables[f'fixFuncSyntaxBugFixNum{variables["AIndex"]}'] == "{")):
                variables['var1'] = StrSplit(variables['A_LoopField32'] , "(" , 1)
                if (InStr(variables['var1'] , "%")):
                    variables['numOfCharsToTrimFuncFixRun'] = 0
                    items = LoopParseFunc(variables['var1'])
                    for A_Index65, A_LoopField65 in enumerate(items, start=1):
                        variables['A_Index65'] = A_Index65
                        variables['A_LoopField65'] = A_LoopField65
                        variables['numOfCharsToTrimFuncFixRun'] += 1
                    variables['var2'] = StringTrimLeft(variables['A_LoopField32'], variables['numOfCharsToTrimFuncFixRun'])
                    variables['var12'] = StrSplit(variables['var1'] , "%" , 1)
                    variables['var13'] = StrSplit(variables['var1'] , "%" , 2)
                    variables['var1'] = "funcs" + "[" + Chr(34) + variables['var12'] + Chr(34) + " + variables." + variables['var13'] + "]"
                    variables['out'] = "await " + variables['var1'] + transpileVariables(variables['var2'] , variables['functionNames'])
                    variables['lineDone'] = 1
                    variables['jsCode'] += variables['out'] + "\n"
                else:
                    variables['numOfCharsToTrimFuncFixRun'] = 0
                    items = LoopParseFunc(variables['var1'])
                    for A_Index66, A_LoopField66 in enumerate(items, start=1):
                        variables['A_Index66'] = A_Index66
                        variables['A_LoopField66'] = A_LoopField66
                        variables['numOfCharsToTrimFuncFixRun'] += 1
                    variables['var2'] = StringTrimLeft(variables['A_LoopField32'], variables['numOfCharsToTrimFuncFixRun'])
                    variables['out'] = "await " + variables['var1'] + transpileVariables(variables['var2'] , variables['functionNames'])
                    variables['lineDone'] = 1
                    variables['jsCode'] += variables['out'] + "\n"
            else:
                if ( not ((SubStr(StrLower(variables['A_LoopField32']), 1 , 4)== variables['CheckIFandElsesss1'])or(SubStr(StrLower(variables['A_LoopField32']), 1 , 3)== variables['CheckIFandElsesss2'])or(SubStr(StrLower(variables['A_LoopField32']), 1 , 5)== variables['CheckIFandElsesss3'])or(SubStr(StrLower(variables['A_LoopField32']), 1 , 4)== variables['CheckIFandElsesss4'])or(SubStr(StrLower(variables['A_LoopField32']), 1 , 9)== variables['CheckIFandElsesss5'])or(SubStr(StrLower(variables['A_LoopField32']), 1 , 8)== variables['CheckIFandElsesss6'])or(SubStr(StrLower(variables['A_LoopField32']), 1 , 10)== variables['CheckIFandElsesss7'])or(SubStr(StrLower(variables['A_LoopField32']), 1 , 9)== variables['CheckIFandElsesss8'])or(SubStr(StrLower(variables['A_LoopField32']), 1 , 5)== "loop,"))):
                    # not a func
                    #OutputDebug, %A_LoopField32%
                    variables['sstr23IfFuncIn'] = variables['A_LoopField32']
                    variables['sstr23IfFuncInNAME'] = StrSplit(variables['sstr23IfFuncIn'] , Chr(40), 1)
                    variables['sstr23IfFuncIn'] = StrSplit(variables['sstr23IfFuncIn'] , Chr(40), 2)
                    variables['nothing'] = ""
                    variables['sstr23IfFuncInALL'] = StrReplace(variables['sstr23IfFuncIn'] , Chr(40), "")
                    variables['sstr23IfFuncInALL'] = StrReplace(variables['sstr23IfFuncInALL'] , Chr(41), "")
                    variables['wasHereInfuncAndgetingVar1'] = 0
                    variables['theVarsPArmFormTheFunc'] = ""
                    if (variables['sstr23IfFuncInALL']  != ""):
                        items = LoopParseFunc(variables['sstr23IfFuncInALL'], ",")
                        for A_Index67, A_LoopField67 in enumerate(items, start=1):
                            variables['A_Index67'] = A_Index67
                            variables['A_LoopField67'] = A_LoopField67
                            variables['wasHereInfuncAndgetingVar1'] = 1
                            variables['var1'] = Trim(variables['A_LoopField67'])
                            variables['theVarsPArmFormTheFunc'] += "variables." + variables['var1'] + " = " + variables['var1'] + "\n"
                    variables['funcs'] += "  " + "" + variables['sstr23IfFuncInNAME'] + "" + ": " + variables['sstr23IfFuncInNAME'] + "," + "\n"
                    variables['doWeEvenDecAnyFuncHUH'] = 1
                    variables['skipLeftCuleyForFuncPLS'] = 0
                    if (variables['sstr23IfFuncInALL']  != ""):
                        variables['sstr234567'] = "async function " + variables['sstr23IfFuncInNAME'] + Chr(40) + variables['sstr23IfFuncInALL'] + Chr(41) + "\n{\n" + variables['theVarsPArmFormTheFunc']
                        variables['skipLeftCuleyForFuncPLS'] = 1
                    else:
                        variables['sstr234567'] = "async function " + variables['sstr23IfFuncInNAME'] + Chr(40) + variables['sstr23IfFuncInALL'] + Chr(41) + ""
                    for A_Index68 in range(1, variables['sstr23IfFuncInNAMEnum'] + 1):
                        variables['A_Index68'] = A_Index68
                        if (variables[f'sstr23IfFuncInNAME{variables["A_Index68"]}'] == variables['sstr23IfFuncInNAME']):
                            variables['var12312'] = ""
                            if (variables['sstr23IfFuncInALL']  != ""):
                                items = LoopParseFunc(variables['sstr23IfFuncInALL'], ",")
                                for A_Index69, A_LoopField69 in enumerate(items, start=1):
                                    variables['A_Index69'] = A_Index69
                                    variables['A_LoopField69'] = A_LoopField69
                                    variables['wasHereInfuncAndgetingVar1'] = 1
                                    variables['var1'] = Trim(variables['A_LoopField69'])
                                    variables['var12312'] += transpileVariables(variables['var1'] , variables['functionNames']) + ", "
                                variables['var12312'] = StringTrimRight(variables['var12312'], 2)
                            if (variables['wasHereInfuncAndgetingVar1'] == 0):
                                variables['sstr2345678'] = variables['sstr23IfFuncInNAME'] + Chr(40) + Chr(41)
                            else:
                                variables['sstr2345678'] = variables['sstr23IfFuncInNAME'] + Chr(40) + variables['var12312'] + Chr(41)
                            variables['lineDone'] = 1
                    variables['sstr23IfFuncInNAMEnum'] += 1
                    variables[f'sstr23IfFuncInNAME{variables["sstr23IfFuncInNAMEnum"]}'] = variables['sstr23IfFuncInNAME']
                    if (variables['lineDone'] == 1):
                        variables['jsCode'] += variables['sstr2345678'] + "\n"
                    else:
                        variables['lineDone'] = 1
                        variables['jsCode'] += variables['sstr234567'] + "\n"
        else:
            # this is THE else
            if (variables['lineDone']  != 1):
                if (variables['skipLeftCuleyForFuncPLS']  != 1):
                    if (SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 1)== Chr(125)):
                        variables['maybeWeHaveCommentInClosingCurlyBracket'] = variables['A_LoopField32']
                        if (InStr(variables['maybeWeHaveCommentInClosingCurlyBracket'] , Chr(59))):
                            variables['maybeWeHaveCommentInClosingCurlyBracket'] = StrReplace(variables['maybeWeHaveCommentInClosingCurlyBracket'] , Chr(59), "//")
                            variables['jsCode'] += variables['maybeWeHaveCommentInClosingCurlyBracket'] + "\n"
                        else:
                            variables['jsCode'] += Chr(125) + "\n"
                    else:
                        if (variables['jsCodeAcurlyBraceAddSomeVrasFixLP'] == 1)and(SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 1)== Chr(123)):
                            variables['jsCodeAcurlyBraceAddSomeVrasFixLP'] = 0
                            variables['jsCode'] += variables['A_LoopField32'] + "\n" + variables['theFixTextLoopLP'] + "\n"
                        else:
                            if (variables['jsCodeAcurlyBraceAddSomeVrasFixNL'] == 1)and(SubStr(Trim(StrLower(variables['A_LoopField32'])), 1 , 1)== Chr(123)):
                                variables['jsCodeAcurlyBraceAddSomeVrasFixNL'] = 0
                                variables['jsCode'] += variables['A_LoopField32'] + "\n" + variables['theFixTextLoopNL'] + "\n"
                            else:
                                variables['jsCode'] += variables['A_LoopField32'] + "\n"
                else:
                    variables['skipLeftCuleyForFuncPLS'] = 0
    #s
    if (variables['haveWeEverUsedAloop'] == 1):
        variables['AHKcodeLoopfixa'] = StringTrimRight(variables['AHKcodeLoopfixa'], 1)
        #OutputDebug, |%AHKcodeLoopfixa%|
        variables['AIndexLoopCurlyFix'] = 1
        items = LoopParseFunc(variables['AHKcodeLoopfixa'], "\n", "\r")
        for A_Index70, A_LoopField70 in enumerate(items, start=1):
            variables['A_Index70'] = A_Index70
            variables['A_LoopField70'] = A_LoopField70
            variables['sstr123'] = variables['A_LoopField70']
            variables['fixLoopLokingFor'] = variables['A_LoopField70']
            variables['fixLoopLokingForfound'] = 1
            variables['out1'] = StrSplit(variables['sstr123'] , "|" , 1)
            variables['out2'] = StrSplit(variables['sstr123'] , "|" , 3)
            #OutputDebug, |%out1%|
            #OutputDebug, |%out2%|
            variables['wasAtanyIfsElseAddAIndexLoopCurlyFix'] = 0
            if (variables['out1'] == "nl"):
                variables['inTarget'] = 0
                variables['insideBracket'] = 0
                variables['netsedCurly'] = 0
                variables['eldLoopNestedBADlol'] = 0
                variables['readyToEnd'] = 0
                variables['endBracketDOntPutThere'] = 0
                variables['dontSaveStr'] = 0
                variables['weAreDoneHereCurly'] = 0
                variables['DeleayOneCuzOfLoopParse'] = 0
                variables['fixLoopLokingForNum'] = 0
                variables['insdeAnestedLoopBAD'] = 0
                variables['foundTheTopLoop'] = 0
                variables[f'out4758686d86d86d86578991a{variables["AIndexLoopCurlyFix"]}'] = ""
                items = LoopParseFunc(variables['jsCode'], "\n", "\r")
                for A_Index71, A_LoopField71 in enumerate(items, start=1):
                    variables['A_Index71'] = A_Index71
                    variables['A_LoopField71'] = A_LoopField71
                    #MsgBox, dsfgsdefgesrdg1
                    #MsgBox, |%A_LoopField71%|`n|%fixLoopLokingFor%|
                    if (InStr(variables['A_LoopField71'] , variables['fixLoopLokingFor']))and(variables['insdeAnestedLoopBAD']  != 1):
                        variables['fixLoopLokingForNum'] = 1
                        #MsgBox, do we came here 1
                    if (InStr(variables['A_LoopField71'] , "for (/*"))and(variables['weAreDoneHereCurly']  != 1)and(variables['insdeAnestedLoopBAD']  != 1)and(variables['fixLoopLokingForNum'] == 1):
                        variables['s'] = StrSplit(variables['A_LoopField71'] , "A" + Chr(95) + "Index" , 2)
                        variables['out1z'] = variables['s']
                        variables['s'] = StrSplit(variables['out1z'] , " " , 1)
                        variables['out1z'] = Trim(variables['s'])
                        #MsgBox, % out1z
                        #MsgBox, do we came here 2
                        variables['fixLoopLokingForNum'] = 0
                        variables['foundTheTopLoop'] += 1
                        variables['inTarget'] = 1
                        #MsgBox, % A_LoopField71
                        variables['dontSaveStr'] = 1
                        variables['ALoopField'] = variables['A_LoopField71']
                        variables['DeleayOneCuzOfLoopParse'] = 1
                        variables[f'out4758686d86d86d86578991a{variables["AIndexLoopCurlyFix"]}'] += variables['ALoopField'] + "\n"
                    if (variables['inTarget'] == 1)and(InStr(variables['A_LoopField71'] , Chr(123)))and(variables['insdeAnestedLoopBAD']  != 1):
                        variables['insideBracket'] = 1
                    if (variables['insideBracket'] == 1)and(InStr(variables['A_LoopField71'] , Chr(123)))and(variables['insdeAnestedLoopBAD']  != 1):
                        variables['netsedCurly'] += 1
                    if (variables['insideBracket'] == 1)and(InStr(variables['A_LoopField71'] , Chr(125)))and(variables['insdeAnestedLoopBAD']  != 1):
                        variables['netsedCurly'] -= 1
                        variables['readyToEnd'] = 1
                    if (InStr(variables['A_LoopField71'] , "for (/*"))and(variables['insdeAnestedLoopBAD']  != 1)and(variables['foundTheTopLoop'] >= 2):
                        variables['insdeAnestedLoopBAD'] = 1
                        variables['insideBracket1'] = 0
                        variables['netsedCurly1'] = 0
                    if (variables['inTarget'] == 1):
                        variables['foundTheTopLoop'] += 1
                    if (variables['insdeAnestedLoopBAD'] == 1):
                        if (InStr(variables['A_LoopField71'] , Chr(123))):
                            variables['insideBracket1'] = 1
                        if (variables['insideBracket1'] == 1)and(InStr(variables['A_LoopField71'] , Chr(123))):
                            variables['netsedCurly1'] += 1
                        if (variables['insideBracket1'] == 1)and(InStr(variables['A_LoopField71'] , Chr(125))):
                            variables['netsedCurly1'] -= 1
                            variables['readyToEnd1'] = 1
                        if (InStr(variables['A_LoopField71'] , Chr(125)))and(variables['readyToEnd1'] == 1)and(variables['netsedCurly1'] == 0)and(variables['insideBracket'] == 1):
                            #MsgBox, % A_LoopField71
                            variables['eldLoopNestedBADlol'] = 1
                        variables[f'out4758686d86d86d86578991a{variables["AIndexLoopCurlyFix"]}'] += variables['A_LoopField71'] + "\n"
                    if (variables['inTarget'] == 1)and(variables['dontSaveStr']  != 1)and(variables['fixLoopLokingForNum']  != 1)and(variables['insdeAnestedLoopBAD']  != 1):
                        variables['ALoopField'] = variables['A_LoopField71']
                        # Replace "A_Index" with or without a following digit with "A_Index" + out1z
                        variables['ALoopField'] = RegExReplace(variables['ALoopField'] , "A" + Chr(95) + "Index(?:\\d+)?" , "A" + Chr(95) + "Index" + variables['out1z'])
                        variables[f'out4758686d86d86d86578991a{variables["AIndexLoopCurlyFix"]}'] += variables['ALoopField'] + "\n"
                    if (variables['inTarget'] == 1)and(InStr(variables['A_LoopField71'] , Chr(125)))and(variables['readyToEnd'] == 1)and(variables['netsedCurly'] == 0)and(variables['weAreDoneHereCurly'] == 0)and(variables['dontSaveStr']  != 1)and(variables['insdeAnestedLoopBAD']  != 1):
                        #MsgBox, % A_LoopField71
                        variables['weAreDoneHereCurly'] = 1
                        variables['inTarget'] = 0
                        variables['endBracketDOntPutThere'] = 1
                    variables['dontSaveStr'] = 0
                    if (variables['inTarget']  != 1)and(variables['endBracketDOntPutThere']  != 1)and(variables['insdeAnestedLoopBAD']  != 1):
                        variables[f'out4758686d86d86d86578991a{variables["AIndexLoopCurlyFix"]}'] += variables['A_LoopField71'] + "\n"
                    variables['endBracketDOntPutThere'] = 0
                    if (variables['eldLoopNestedBADlol'] == 1):
                        variables['insdeAnestedLoopBAD'] = 0
                variables['strstysrstsytTRIMHELP'] = variables[f'out4758686d86d86d86578991a{variables["AIndexLoopCurlyFix"]}']
                variables['strstysrstsytTRIMHELP'] = StringTrimRight(variables['strstysrstsytTRIMHELP'], 1)
                #MsgBox, % out4758686d86d86d86578991a%AIndexLoopCurlyFix%
                variables['jsCode'] = variables['strstysrstsytTRIMHELP']
                #MsgBox, % jsCode
                variables['wasAtanyIfsElseAddAIndexLoopCurlyFix'] = 1
            else:
                variables['inTarget'] = 0
                variables['insideBracket'] = 0
                variables['netsedCurly'] = 0
                variables['eldLoopNestedBADlol'] = 0
                variables['readyToEnd'] = 0
                variables['endBracketDOntPutThere'] = 0
                variables['dontSaveStr'] = 0
                variables['weAreDoneHereCurly'] = 0
                variables['DeleayOneCuzOfLoopParse'] = 0
                variables['fixLoopLokingForNum'] = 0
                variables['insdeAnestedLoopBAD'] = 0
                variables['foundTheTopLoop'] = 0
                variables[f'out4758686d86d86d86578991a{variables["AIndexLoopCurlyFix"]}'] = ""
                items = LoopParseFunc(variables['jsCode'], "\n", "\r")
                for A_Index72, A_LoopField72 in enumerate(items, start=1):
                    variables['A_Index72'] = A_Index72
                    variables['A_LoopField72'] = A_LoopField72
                    if (InStr(variables['A_LoopField72'] , variables['fixLoopLokingFor']))and(variables['insdeAnestedLoopBAD']  != 1):
                        variables['fixLoopLokingForNum'] = 1
                        #MsgBox, do we came here 3
                    if (InStr(variables['A_LoopField72'] , "for (/*"))and(variables['weAreDoneHereCurly']  != 1)and(variables['insdeAnestedLoopBAD']  != 1)and(variables['fixLoopLokingForNum'] == 1):
                        variables['s'] = StrSplit(variables['A_LoopField72'] , "A" + Chr(95) + "Index" , 2)
                        variables['out1z'] = variables['s']
                        variables['s'] = StrSplit(variables['out1z'] , " " , 1)
                        variables['out1z'] = Trim(variables['s'])
                        #MsgBox, % out1z
                        variables['fixLoopLokingForNum'] = 0
                        #MsgBox, do we came here 4
                        variables['foundTheTopLoop'] += 1
                        variables['inTarget'] = 1
                        #MsgBox, % A_LoopField72
                        variables['dontSaveStr'] = 1
                        variables['ALoopField'] = variables['A_LoopField72']
                        variables['DeleayOneCuzOfLoopParse'] = 1
                        variables[f'out4758686d86d86d86578991a{variables["AIndexLoopCurlyFix"]}'] += variables['ALoopField'] + "\n"
                    if (variables['inTarget'] == 1)and(InStr(variables['A_LoopField72'] , Chr(123)))and(variables['insdeAnestedLoopBAD']  != 1):
                        variables['insideBracket'] = 1
                    if (variables['insideBracket'] == 1)and(InStr(variables['A_LoopField72'] , Chr(123)))and(variables['insdeAnestedLoopBAD']  != 1):
                        variables['netsedCurly'] += 1
                    if (variables['insideBracket'] == 1)and(InStr(variables['A_LoopField72'] , Chr(125)))and(variables['insdeAnestedLoopBAD']  != 1):
                        variables['netsedCurly'] -= 1
                        variables['readyToEnd'] = 1
                    if (InStr(variables['A_LoopField72'] , "for (/*"))and(variables['insdeAnestedLoopBAD']  != 1)and(variables['foundTheTopLoop'] >= 2):
                        variables['insdeAnestedLoopBAD'] = 1
                        variables['insideBracket1'] = 0
                        variables['netsedCurly1'] = 0
                    if (variables['inTarget'] == 1):
                        variables['foundTheTopLoop'] += 1
                    if (variables['insdeAnestedLoopBAD'] == 1):
                        if (InStr(variables['A_LoopField72'] , Chr(123))):
                            variables['insideBracket1'] = 1
                        if (variables['insideBracket1'] == 1)and(InStr(variables['A_LoopField72'] , Chr(123))):
                            variables['netsedCurly1'] += 1
                        if (variables['insideBracket1'] == 1)and(InStr(variables['A_LoopField72'] , Chr(125))):
                            variables['netsedCurly1'] -= 1
                            variables['readyToEnd1'] = 1
                        if (InStr(variables['A_LoopField72'] , Chr(125)))and(variables['readyToEnd1'] == 1)and(variables['netsedCurly1'] == 0)and(variables['insideBracket'] == 1):
                            #MsgBox, % A_LoopField72
                            variables['eldLoopNestedBADlol'] = 1
                        variables[f'out4758686d86d86d86578991a{variables["AIndexLoopCurlyFix"]}'] += variables['A_LoopField72'] + "\n"
                    if (variables['inTarget'] == 1)and(variables['dontSaveStr']  != 1)and(variables['fixLoopLokingForNum']  != 1)and(variables['insdeAnestedLoopBAD']  != 1):
                        variables['ALoopField'] = variables['A_LoopField72']
                        # Replace "A_Index" with or without a following digit with "A_Index" + out1z
                        variables['ALoopField'] = RegExReplace(variables['ALoopField'] , "A" + Chr(95) + "Index(?:\\d+)?" , "A" + Chr(95) + "Index" + variables['out1z'])
                        # Replace "A_Index" with or without a following digit with "A_Index" + out1z
                        variables['ALoopField'] = RegExReplace(variables['ALoopField'] , "A" + Chr(95) + "LoopField(?:\\d+)?" , "A" + Chr(95) + "LoopField" + variables['out1z'])
                        variables[f'out4758686d86d86d86578991a{variables["AIndexLoopCurlyFix"]}'] += variables['ALoopField'] + "\n"
                    if ((variables['inTarget'] == 1)and(InStr(variables['A_LoopField72'] , Chr(125)))and(variables['readyToEnd'] == 1)and(variables['netsedCurly'] == 0)and(variables['weAreDoneHereCurly'] == 0)and(variables['dontSaveStr']  != 1)and(variables['insdeAnestedLoopBAD']  != 1)):
                        #MsgBox, % A_LoopField72
                        variables['weAreDoneHereCurly'] = 1
                        variables['inTarget'] = 0
                        variables['endBracketDOntPutThere'] = 1
                    variables['dontSaveStr'] = 0
                    if (variables['inTarget']  != 1)and(variables['endBracketDOntPutThere']  != 1)and(variables['insdeAnestedLoopBAD']  != 1):
                        variables[f'out4758686d86d86d86578991a{variables["AIndexLoopCurlyFix"]}'] += variables['A_LoopField72'] + "\n"
                    variables['endBracketDOntPutThere'] = 0
                    if (variables['eldLoopNestedBADlol'] == 1):
                        variables['insdeAnestedLoopBAD'] = 0
                variables['strstysrstsytTRIMHELP'] = variables[f'out4758686d86d86d86578991a{variables["AIndexLoopCurlyFix"]}']
                variables['strstysrstsytTRIMHELP'] = StringTrimRight(variables['strstysrstsytTRIMHELP'], 1)
                #MsgBox, % out4758686d86d86d86578991a%AIndexLoopCurlyFix%
                variables['jsCode'] = variables['strstysrstsytTRIMHELP']
                #MsgBox, % jsCode
                variables['wasAtanyIfsElseAddAIndexLoopCurlyFix'] = 1
            if (variables['wasAtanyIfsElseAddAIndexLoopCurlyFix'] == 1):
                variables['AIndexLoopCurlyFix'] += 1
                variables['wasAtanyIfsElseAddAIndexLoopCurlyFix'] = 0
        variables['out4758686d86dgt8r754444444'] = ""
        variables['hold'] = 0
        items = LoopParseFunc(variables['jsCode'], "\n", "\r")
        for A_Index73, A_LoopField73 in enumerate(items, start=1):
            variables['A_Index73'] = A_Index73
            variables['A_LoopField73'] = A_LoopField73
            variables['ignore'] = 0
            if (InStr(variables['A_LoopField73'] , "for (/*")):
                if (variables['hold'] == 1)and(variables['holdText'] == variables['A_LoopField73']):
                    variables['ignore'] = 1
                else:
                    variables['holdText'] = variables['A_LoopField73']
                    variables['hold'] = 1
            if ( not (variables['ignore'])):
                variables['out4758686d86dgt8r754444444'] += variables['A_LoopField73'] + "\n"
        variables['out4758686d86dgt8r754444444'] = StringTrimRight(variables['out4758686d86dgt8r754444444'], 1)
        variables['jsCode'] = variables['out4758686d86dgt8r754444444']
    variables['AHKcodeOut1234565432'] = ""
    items = LoopParseFunc(variables['jsCode'], "\n", "\r")
    for A_Index74, A_LoopField74 in enumerate(items, start=1):
        variables['A_Index74'] = A_Index74
        variables['A_LoopField74'] = A_LoopField74
        variables['out'] = variables['A_LoopField74']
        if ( not (InStr(variables['out'] , "|itsaersdtgtgfergsdgfsegdfsedAA|"))):
            variables['AHKcodeOut1234565432'] += variables['out'] + "\n"
    variables['jsCode'] = StringTrimRight(variables['AHKcodeOut1234565432'], 1)
    variables['Attw456543w45eqsubeotibebrawaaachi'] = "\n        // Attaching event listener to document\n        document.addEventListener(" + Chr(34) + "mouseup" + Chr(34) + ", OnMouseRelease);\n        document.addEventListener(" + Chr(34) + "touchend" + Chr(34) + ", OnTouchEnd);\n\n        function OnMouseRelease(event) {\n          // This function will be called when the mouse button is released\n          // You can perform your desired actions here\n          //console.log(" + Chr(34) + "Mouse released" + Chr(34) + ");\n          // Call your main function after mouse release\n          OnMouseClick(event);\n        }\n\n        function OnTouchEnd(event) {\n          // This function will be called when the touch is lifted\n          // You can perform your desired actions here\n          //console.log(" + Chr(34) + "Touch ended" + Chr(34) + ");\n          // Call your main function after touch ends\n          OnMouseClick(event);\n        }\n"
    variables['outJScodeLastTime'] = ""
    items = LoopParseFunc(variables['jsCode'], "\n", "\r")
    for A_Index75, A_LoopField75 in enumerate(items, start=1):
        variables['A_Index75'] = A_Index75
        variables['A_LoopField75'] = A_LoopField75
        variables['sstr1'] = variables['A_LoopField75']
        variables['sstr1'] = StrReplace(variables['sstr1'] , "variables.A_ScreenWidth" , "BuildInVars(" + Chr(34) + "A_ScreenWidth" + Chr(34) + ")")
        variables['sstr1'] = StrReplace(variables['sstr1'] , "variables.A_ScreenHeight" , "BuildInVars(" + Chr(34) + "A_ScreenHeight" + Chr(34) + ")")
        variables['sstr1'] = StrReplace(variables['sstr1'] , "variables.A_GuiControl" , "A_GuiControl")
        variables['sstr1'] = StrReplace(variables['sstr1'] , "variables.A_TimeIdle" , "BuildInVars(" + Chr(34) + "A_TimeIdle" + Chr(34) + ")")
        variables['sstr1'] = StrReplace(variables['sstr1'] , "variables.A_TickCount" , "BuildInVars(" + Chr(34) + "A_TickCount" + Chr(34) + ")")
        variables['sstr1'] = StrReplace(variables['sstr1'] , "variables.A_LastKey" , "BuildInVars(" + Chr(34) + "A_LastKey" + Chr(34) + ")")
        variables['sstr1'] = StrReplace(variables['sstr1'] , "variables.A_Now" , "BuildInVars(" + Chr(34) + "A_Now" + Chr(34) + ")")
        variables['sstr1'] = StrReplace(variables['sstr1'] , "variables.A_YYYY" , "BuildInVars(" + Chr(34) + "A_YYYY" + Chr(34) + ")")
        variables['sstr1'] = StrReplace(variables['sstr1'] , "variables.A_MMMM" , "BuildInVars(" + Chr(34) + "A_MMMM" + Chr(34) + ")")
        variables['sstr1'] = StrReplace(variables['sstr1'] , "variables.A_MMM" , "BuildInVars(" + Chr(34) + "A_MMM" + Chr(34) + ")")
        variables['sstr1'] = StrReplace(variables['sstr1'] , "variables.A_MM" , "BuildInVars(" + Chr(34) + "A_MM" + Chr(34) + ")")
        variables['sstr1'] = StrReplace(variables['sstr1'] , "variables.A_DDDD" , "BuildInVars(" + Chr(34) + "A_DDDD" + Chr(34) + ")")
        variables['sstr1'] = StrReplace(variables['sstr1'] , "variables.A_DDD" , "BuildInVars(" + Chr(34) + "A_DDD" + Chr(34) + ")")
        variables['sstr1'] = StrReplace(variables['sstr1'] , "variables.A_DD" , "BuildInVars(" + Chr(34) + "A_DD" + Chr(34) + ")")
        variables['sstr1'] = StrReplace(variables['sstr1'] , "variables.A_Hour" , "BuildInVars(" + Chr(34) + "A_Hour" + Chr(34) + ")")
        variables['sstr1'] = StrReplace(variables['sstr1'] , "variables.A_Min" , "BuildInVars(" + Chr(34) + "A_Min" + Chr(34) + ")")
        variables['sstr1'] = StrReplace(variables['sstr1'] , "variables.A_Sec" , "BuildInVars(" + Chr(34) + "A_Sec" + Chr(34) + ")")
        variables['sstr1'] = StrReplace(variables['sstr1'] , "variables.A_Space" , "BuildInVars(" + Chr(34) + "A_Space" + Chr(34) + ")")
        variables['sstr1'] = StrReplace(variables['sstr1'] , "variables.A_Tab" , "BuildInVars(" + Chr(34) + "A_Tab" + Chr(34) + ")")
        variables['sstr1'] = StrReplace(variables['sstr1'] , "runHTML(variables.Gui" , "runHTML(Gui")
        variables['sstr1'] = StrReplace(variables['sstr1'] , "runHTML( variables.Gui" , "runHTML(Gui")
        variables['sstr1'] = StrReplace(variables['sstr1'] , "Att" + Chr(119) + "456543w45eqsubeotibebrawaaachingeventlistenertodocumentaddEventListeneThisfunnctionaftertouchends768ds798y9z7s7xcfy8s7d9fcx" , variables['Attw456543w45eqsubeotibebrawaaachi'])
        variables['sstr1'] = StrReplace(variables['sstr1'] , "async function OnMouseClick(A_GuiControl)" , "async function OnMouseClick()")
        variables['sstr1'] = StrReplace(variables['sstr1'] , "< ==" , "<=")
        variables['sstr1'] = StrReplace(variables['sstr1'] , "> ==" , ">=")
        variables['sstr1'] = StrReplace(variables['sstr1'] , Chr(96), Chr(92))
        if (SubStr(Trim(StrLower(variables['A_LoopField75'])), 1 , 10)== StrLower("IfMsgBox, ")):
            variables['sstr1'] = ".then(async (result) => {\n" + variables['sstr1']
            variables['sstr1'] = StrReplace(variables['sstr1'] , " Yes" , " OK")
            variables['sstr1'] = StrReplace(variables['sstr1'] , " Retry" , " OK")
            variables['sstr1'] = StrReplace(variables['sstr1'] , " Retry" , " OK")
            variables['sstr1'] = StrReplace(variables['sstr1'] , "Else" , "else")
            variables['sstr1'] = StrReplace(variables['sstr1'] , "IfMsgBox, " , "if (result === " + Chr(34))
            variables['sstr1'] = variables['sstr1'] + Chr(34) + ")\n"
        if (SubStr(Trim(StrLower(variables['A_LoopField75'])), 1 , 20)== StrLower("} // end of ifmsgbox")):
            variables['sstr1'] = variables['sstr1'] + "\n});\n"
        if (StrLower(variables['sstr1'])== "exitapp"):
            variables['sstr1'] = "window.close()"
        if (StrLower(variables['sstr1'])== "reload"):
            variables['sstr1'] = "location.reload()"
        variables['outJScodeLastTime'] += variables['sstr1'] + "\n"
    variables['jsCode'] = StringTrimRight(variables['outJScodeLastTime'], 1)
    for A_Index76 in range(1, variables['theIdNumOfThe34'] + 1):
        variables['A_Index76'] = A_Index76
        variables['jsCode'] = StrReplace(variables['jsCode'] , "ihuiuuhuuhtheidFor--asas-theuhturtyphoutr-" + Chr(65) + Chr(65) + str(variables['A_Index76']) + Chr(65) + Chr(65), variables[f'theIdNumOfThe34theVar{variables["A_Index76"]}'])
    variables['outJScodeLastTime2'] = ""
    items = LoopParseFunc(variables['jsCode'], "\n", "\r")
    for A_Index77, A_LoopField77 in enumerate(items, start=1):
        variables['A_Index77'] = A_Index77
        variables['A_LoopField77'] = A_LoopField77
        variables['sstr1'] = variables['A_LoopField77']
        variables['sstr1'] = StrReplace(variables['sstr1'] , "GetKeyState (" + Chr(34) + "Up" , "GetKeyState (" + Chr(34) + "ArrowUp")
        variables['sstr1'] = StrReplace(variables['sstr1'] , "GetKeyState (" + Chr(34) + "Down" , "GetKeyState (" + Chr(34) + "ArrowDown")
        variables['sstr1'] = StrReplace(variables['sstr1'] , "GetKeyState (" + Chr(34) + "Left" , "GetKeyState (" + Chr(34) + "ArrowLeft")
        variables['sstr1'] = StrReplace(variables['sstr1'] , "GetKeyState (" + Chr(34) + "Right" , "GetKeyState (" + Chr(34) + "ArrowRight")
        variables['sstr1'] = StrReplace(variables['sstr1'] , Chr(34) + Chr(34) + Chr(34), Chr(34) + Chr(34))
        variables['outJScodeLastTime2'] += variables['sstr1'] + "\n"
    variables['jsCode'] = StringTrimRight(variables['outJScodeLastTime2'], 1)
    variables['jsCode'] = "\n" + "// Declare and assign a variable\nlet variables = {\nnull: null,\n};\n" + variables['jsCode'] + "\n"
    variables['funcs'] += "}"
    variables['funcsOutFixBug'] = ""
    items = LoopParseFunc(variables['funcs'], "\n", "\r")
    for A_Index78, A_LoopField78 in enumerate(items, start=1):
        variables['A_Index78'] = A_Index78
        variables['A_LoopField78'] = A_LoopField78
        if ( not (InStr(variables['A_LoopField78'] , "else if"))):
            variables['funcsOutFixBug'] += variables['A_LoopField78'] + "\n"
    variables['funcs'] = StringTrimRight(variables['funcsOutFixBug'], 1)
    if (variables['doWeEvenDecAnyFuncHUH'] == 0):
        variables['jsCode'] = "\n" + variables['onKeyPress'] + "\n\n" + variables['jsCodeGui'] + "\n\n" + variables['HotKeyCalledHotKyes'] + "\n\n" + variables['jsCode']
    else:
        variables['jsCode'] = "\n" + variables['funcs'] + "\n\n" + variables['onKeyPress'] + "\n\n" + variables['jsCodeGui'] + "\n\n" + variables['HotKeyCalledHotKyes'] + "\n\n" + variables['jsCode']
    variables['addFuncIfWeUseIt_BuildInVars'] = ""
    variables['addFuncIfWeUseIt_showCustomMessageBox'] = "\n      function showCustomMessageBox(options, title, text, value, timeout) {\n        return new Promise((resolve) => {\n          // Define default options for the message box\n          let defaultOptions = {\n            title: title || " + Chr(34) + "" + Chr(34) + ", // Default title is empty\n            text: text || " + Chr(34) + "Press OK to continue." + Chr(34) + ", // Default text if not provided\n            showCancelButton: false, // Default is to not show Cancel button\n            showDenyButton: false, // Default is to not show Deny button\n            confirmButtonText: " + Chr(34) + "OK" + Chr(34) + ", // Default text for OK button\n            focusConfirm: true, // Default focus on OK button\n          };\n\n          let numOriginal = value;\n\n          let num = numOriginal;\n\n          let done1 = 0;\n\n          let done2 = 0;\n\n          let done3 = 0;\n\n          let AIndex = 0;\n\n          for (AIndex = 1; AIndex <= 1; AIndex++) {\n            // this is about if you add always on top in a msgbox it will be removed in js cuz its kinda useless...\n            // becouse if you like adding always on top in ahk in js we dont realy do it so yeah\n            if (num >= 262144) {\n              num = num - 262144;\n              numOriginal = numOriginal - 262144;\n            }\n\n            if (num >= 256 && num < 500) {\n              num = num - 256;\n\n              done3 = 256;\n            }\n\n            if (num >= 512) {\n              num = num - 512;\n\n              done3 = 512;\n            }\n\n            if (num == 0) {\n              done1 = 0;\n\n              break;\n            }\n\n            if (num <= 6) {\n              done1 = num;\n\n              break;\n            }\n\n            if (num >= 64 && num < 64 * 2) {\n              done2 = 64;\n\n              if (num == 64) {\n                done1 = 0;\n\n                break;\n              } else {\n                done1 = num - 64;\n\n                break;\n              }\n            }\n\n            if (num >= 48 && num < 63) {\n              done2 = 48;\n\n              if (num == 48) {\n                done1 = 0;\n\n                break;\n              } else {\n                done1 = num - 48;\n\n                break;\n              }\n            }\n\n            if (num >= 32 && num < 47) {\n              done2 = 32;\n\n              if (num == 32) {\n                done1 = 0;\n\n                break;\n              } else {\n                done1 = num - 32;\n\n                break;\n              }\n            }\n\n            if (num >= 16 && num < 30) {\n              done2 = 16;\n\n              if (num == 16) {\n                done1 = 0;\n\n                break;\n              } else {\n                done1 = num - 16;\n\n                break;\n              }\n            }\n          }\n\n          let doneAdded = done1 + done2 + done3;\n\n          if (doneAdded !== numOriginal) {\n            // displayMessage(" + Chr(34) + "The calc was wrong!" + Chr(34) + ");\n          } else {\n            // displayMessage(" + Chr(34) + "num was: " + Chr(34) + " + numOriginal + " + Chr(34) + "" + Chr(92) + "ndone1: " + Chr(34) + " + done1 + " + Chr(34) + "" + Chr(92) + "ndone2: " + Chr(34) + " + done2 + " + Chr(34) + "" + Chr(92) + "ndone3: " + Chr(34) + " + done3);\n          }\n\n          // Parse the value to determine the options for the message box\n          if (done1 === 1) defaultOptions.showCancelButton = true; // OK/Cancel in ahk but here it will show Ok/Cancel wiat its same haha\n\n          // not gonna work if you can make it work i will appreciate\n          //   if (done1 === 2) {\n          //     defaultOptions.showCancelButton = true; // Abort/Retry/Ignore\n          //     defaultOptions.showDenyButton = true;\n          //   }\n          if (done1 === 3) {\n            defaultOptions.showCancelButton = true; // Yes/No/Cancel in ahk but here it will show Ok/No/Cancel\n            defaultOptions.showDenyButton = true;\n          }\n          if (done1 === 4) {\n            // defaultOptions.showCancelButton = true;\n            defaultOptions.showDenyButton = true; // Yes/No in ahk but here it will show Ok/No\n          }\n          if (done1 === 5) {\n            defaultOptions.showCancelButton = true; // Retry/Cancel in ahk but here it will show Ok/Cancel tip you can write in the Msgbox press ok to retry\n          }\n          // not gonna work if you can make it work i will appreciate\n          //   if (done1 === 6) {\n          //     defaultOptions.showCancelButton = true; // Cancel/Try Again/Continue\n          //     defaultOptions.showDenyButton = true;\n          //   }\n\n          if (done2 === 16) defaultOptions.icon = " + Chr(34) + "error" + Chr(34) + "; // Icon Hand (stop/error)\n          if (done2 === 32) defaultOptions.icon = " + Chr(34) + "question" + Chr(34) + "; // Icon Question\n          if (done2 === 48) defaultOptions.icon = " + Chr(34) + "warning" + Chr(34) + "; // Icon Exclamation\n          if (done2 === 64) defaultOptions.icon = " + Chr(34) + "info" + Chr(34) + "; // Icon Asterisk (info)\n\n          if (done3 === 256) defaultOptions.focusDeny = true; // Makes the 3rd button the default\n          if (done3 === 512) defaultOptions.focusCancel = true; // Makes the 2nd button the default\n\n          // Set timeout if provided\n          if (timeout) {\n            defaultOptions.timer = timeout * 1000; // Convert timeout to milliseconds\n          }\n\n          // Merge default options with provided options\n          Object.assign(defaultOptions, options);\n\n          // Display the message box with the constructed options\n          Swal.fire(defaultOptions).then((result) => {\n            if (result.isConfirmed) {\n              resolve(" + Chr(34) + "OK" + Chr(34) + ");\n            } else if (result.isDenied) {\n              resolve(" + Chr(34) + "No" + Chr(34) + ");\n            } else {\n              resolve(" + Chr(34) + "Cancel" + Chr(34) + ");\n            }\n          });\n        });\n      }\n"
    variables['addFuncIfWeUseIt_BuildInVars'] = "\n      var lastKeyPressed = " + Chr(34) + "" + Chr(34) + ";\n\n      function trackLastKeyPressed() {\n        document.addEventListener(" + Chr(34) + "keydown" + Chr(34) + ", function (event) {\n          lastKeyPressed = event.key;\n          // console.log(lastKeyPressed);\n        });\n      }\n\n      function getLastKeyPressed() {\n        return lastKeyPressed;\n      }\n\n      // Call the trackLastKeyPressed function to start tracking key presses\n      trackLastKeyPressed();\n" + "\n      let lastInputTime = Date.now(); // Initialize with current timestamp\n      let startTimestamp = Date.now(); // Initialize with current timestamp\n\n      // Event listener to track user activity\n      function resetIdleTimer() {\n        lastInputTime = Date.now(); // Update last input time\n      }\n\n      document.addEventListener(" + Chr(34) + "mousemove" + Chr(34) + ", resetIdleTimer);\n      document.addEventListener(" + Chr(34) + "keypress" + Chr(34) + ", resetIdleTimer);\n\n      // Function to calculate time since last input event\n      function A_TimeIdle() {\n        return Date.now() - lastInputTime; // Calculate time difference\n      }\n\n      // Function to calculate tick count in milliseconds\n      function A_TickCount() {\n        return Date.now() - startTimestamp;\n      }\n\n      function BuildInVars(varName) {\n        switch (varName) {\n          case " + Chr(34) + "A_ScreenWidth" + Chr(34) + ":\n            // Return screen width\n            return window.innerWidth;\n          case " + Chr(34) + "A_LastKey" + Chr(34) + ":\n            // Return screen width\n            return getLastKeyPressed();\n          case " + Chr(34) + "A_ScreenHeight" + Chr(34) + ":\n            // Return screen height\n            return window.innerHeight;\n          case " + Chr(34) + "A_TimeIdle" + Chr(34) + ":\n            // Return time idle\n            return A_TimeIdle();\n          case " + Chr(34) + "A_TickCount" + Chr(34) + ":\n            // Return tick count in milliseconds\n            return A_TickCount();\n          case " + Chr(34) + "A_Now" + Chr(34) + ":\n            // Return current local timestamp\n            return new Date().toLocaleString();\n          case " + Chr(34) + "A_YYYY" + Chr(34) + ":\n            // Return current year\n            return new Date().getFullYear();\n          case " + Chr(34) + "A_MM" + Chr(34) + ":\n            // Return current month\n            return (new Date().getMonth() + 1).toString().padStart(2, " + Chr(34) + "0" + Chr(34) + ");\n          case " + Chr(34) + "A_DD" + Chr(34) + ":\n            // Return current day\n            return new Date().getDate().toString().padStart(2, " + Chr(34) + "0" + Chr(34) + ");\n          case " + Chr(34) + "A_MMMM" + Chr(34) + ":\n            // Return full month name\n            return new Date().toLocaleDateString(undefined, { month: " + Chr(34) + "long" + Chr(34) + " });\n          case " + Chr(34) + "A_MMM" + Chr(34) + ":\n            // Return short month name\n            return new Date().toLocaleDateString(undefined, { month: " + Chr(34) + "short" + Chr(34) + " });\n          case " + Chr(34) + "A_DDDD" + Chr(34) + ":\n            // Return full day name\n            return new Date().toLocaleDateString(undefined, { weekday: " + Chr(34) + "long" + Chr(34) + " });\n          case " + Chr(34) + "A_DDD" + Chr(34) + ":\n            // Return short day name\n            return new Date().toLocaleDateString(undefined, { weekday: " + Chr(34) + "short" + Chr(34) + " });\n          case " + Chr(34) + "A_Hour" + Chr(34) + ":\n            // Return current hour\n            return new Date().getHours().toString().padStart(2, " + Chr(34) + "0" + Chr(34) + ");\n          case " + Chr(34) + "A_Min" + Chr(34) + ":\n            // Return current minute\n            return new Date().getMinutes().toString().padStart(2, " + Chr(34) + "0" + Chr(34) + ");\n          case " + Chr(34) + "A_Sec" + Chr(34) + ":\n            // Return current second\n            return new Date().getSeconds().toString().padStart(2, " + Chr(34) + "0" + Chr(34) + ");\n          case " + Chr(34) + "A_Space" + Chr(34) + ":\n            // Return space character\n            return " + Chr(34) + " " + Chr(34) + ";\n          case " + Chr(34) + "A_Tab" + Chr(34) + ":\n            // Return tab character\n            return " + Chr(34) + "" + Chr(92) + "t" + Chr(34) + ";\n\n          default:\n            // Handle unknown variable names\n            return null;\n        }\n      }\n"
    variables['addFuncIfWeUseIt_MakeHotKey'] = "\n      function MakeHotKey(hotkey, callback) {\n        document.addEventListener(" + Chr(34) + "keydown" + Chr(34) + ", function (event) {\n          const keys = hotkey.split(" + Chr(34) + "+" + Chr(34) + ").map((key) => key.trim().toLowerCase());\n          const modifiers = {\n            ctrl: event.ctrlKey,\n            shift: event.shiftKey,\n            alt: event.altKey,\n          };\n\n          let hotkeyPressed = true;\n          keys.forEach((key) => {\n            if (key === " + Chr(34) + "ctrl" + Chr(34) + " || key === " + Chr(34) + "shift" + Chr(34) + " || key === " + Chr(34) + "alt" + Chr(34) + ") {\n              if (!modifiers[key]) {\n                hotkeyPressed = false;\n              }\n            } else if (key === " + Chr(34) + "backspace" + Chr(34) + ") {\n              if (event.key !== " + Chr(34) + "Backspace" + Chr(34) + ") {\n                hotkeyPressed = false;\n              }\n            } else if (key.startsWith(" + Chr(34) + "arrow" + Chr(34) + ")) {\n              const arrowDirection = key.replace(" + Chr(34) + "arrow" + Chr(34) + ", " + Chr(34) + "" + Chr(34) + ");\n              if (arrowDirection === " + Chr(34) + "up" + Chr(34) + " && event.key !== " + Chr(34) + "ArrowUp" + Chr(34) + ") {\n                hotkeyPressed = false;\n              } else if (arrowDirection === " + Chr(34) + "down" + Chr(34) + " && event.key !== " + Chr(34) + "ArrowDown" + Chr(34) + ") {\n                hotkeyPressed = false;\n              } else if (arrowDirection === " + Chr(34) + "left" + Chr(34) + " && event.key !== " + Chr(34) + "ArrowLeft" + Chr(34) + ") {\n                hotkeyPressed = false;\n              } else if (arrowDirection === " + Chr(34) + "right" + Chr(34) + " && event.key !== " + Chr(34) + "ArrowRight" + Chr(34) + ") {\n                hotkeyPressed = false;\n              }\n            } else if (key === " + Chr(34) + "enter" + Chr(34) + ") {\n              if (event.key !== " + Chr(34) + "Enter" + Chr(34) + ") {\n                hotkeyPressed = false;\n              }\n            } else if (!event.key.match(/^[0-9a-zA-Z]$/) && event.key !== key) {\n              hotkeyPressed = false;\n            } else if (event.key.toLowerCase() !== key && event.key.match(/^[a-zA-Z]$/)) {\n              hotkeyPressed = false;\n            }\n          });\n\n          if (hotkeyPressed) {\n            if (modifiers[" + Chr(34) + "shift" + Chr(34) + "]) {\n              callback(hotkey.toUpperCase());\n            } else {\n              callback(hotkey.toLowerCase());\n            }\n          }\n        });\n      }\n"
    variables['addFuncIfWeUseIt_Abs'] = "\n      // Absolute value\n      function Abs(num) {\n        if (num === null || isNaN(num)) return null;\n        return Math.abs(num);\n      }\n"
    variables['addFuncIfWeUseIt_ACos'] = "\n      // Arc cosine\n      function ACos(num) {\n        if (num === null || isNaN(num)) return null;\n        return Math.acos(num);\n      }\n"
    variables['addFuncIfWeUseIt_ASin'] = "\n      // Arc sine\n      function ASin(num) {\n        if (num === null || isNaN(num)) return null;\n        return Math.asin(num);\n      }\n"
    variables['addFuncIfWeUseIt_ATan'] = "\n      // Arc tangent\n      function ATan(num) {\n        if (num === null || isNaN(num)) return null;\n        return Math.atan(num);\n      }\n"
    variables['addFuncIfWeUseIt_Ceil'] = "\n      // Ceiling\n      function Ceil(num) {\n        if (num === null || isNaN(num)) return null;\n        return Math.ceil(num);\n      }\n"
    variables['addFuncIfWeUseIt_Cos'] = "\n      // Cosine\n      function Cos(num) {\n        if (num === null || isNaN(num)) return null;\n        return Math.cos(num);\n      }\n"
    variables['addFuncIfWeUseIt_Exp'] = "\n      // Exponential\n      function Exp(num) {\n        if (num === null || isNaN(num)) return null;\n        return Math.exp(num);\n      }\n"
    variables['addFuncIfWeUseIt_Floor'] = "\n      // Flooring\n      function Floor(num) {\n        if (num === null || isNaN(num)) return null;\n        return Math.floor(num);\n      }\n"
    variables['addFuncIfWeUseIt_Ln'] = "\n      // Natural logarithm\n      function Ln(num) {\n        if (num === null || isNaN(num)) return null;\n        return Math.log(num);\n      }\n"
    variables['addFuncIfWeUseIt_Log'] = "\n      // Base-10 logarithm\n      function Log(num) {\n        if (num === null || isNaN(num)) return null;\n        return Math.log10(num);\n      }\n"
    variables['addFuncIfWeUseIt_Round'] = "\n      // Rounding\n      function Round(num) {\n        if (num === null || isNaN(num)) return null;\n        return Math.round(num);\n      }\n"
    variables['addFuncIfWeUseIt_Sin'] = "\n      // Sin\n      function Sin(num) {\n        if (num === null || isNaN(num)) return null;\n        return Math.sin(num);\n      }\n"
    variables['addFuncIfWeUseIt_Sqrt'] = "\n      // Square root\n      function Sqrt(num) {\n        if (num === null || isNaN(num)) return null;\n        return Math.sqrt(num);\n      }\n"
    variables['addFuncIfWeUseIt_Tan'] = "\n      // Tangent\n      function Tan(num) {\n        if (num === null || isNaN(num)) return null;\n        return Math.tan(num);\n      }\n"
    variables['addFuncIfWeUseIt_Chr'] = "\n      function Chr(number) {\n        // Check if the number is null\n        if (number === null) {\n          // Return an empty string\n          return " + Chr(34) + "" + Chr(34) + ";\n        }\n\n        // Check if the number is within the valid range\n        if (number >= 0 && number <= 0x10ffff) {\n          // Convert the number to a character using String.fromCharCode\n          return String.fromCharCode(number);\n        } else {\n          // Return an empty string for invalid numbers\n          return " + Chr(34) + "" + Chr(34) + ";\n        }\n      }\n"
    variables['addFuncIfWeUseIt_sleep'] = "\n      // Function to simulate Sleep\n      function sleep(ms) {\n        return new Promise((resolve) => setTimeout(resolve, ms));\n      }\n"
    variables['addFuncIfWeUseIt_InStr'] = "\n      // InStr\n      function InStr(Haystack, Needle, CaseSensitive = true, StartingPos = 1, Occurrence = 1) {\n        if (Haystack === null || Needle === null) return false;\n\n        // Adjust starting position if less than 1\n        StartingPos = Math.max(StartingPos, 1);\n\n        // Case-sensitive search by default\n        if (!CaseSensitive) {\n          Haystack = Haystack.toLowerCase();\n          Needle = Needle.toLowerCase();\n        }\n\n        let pos = -1;\n        let count = 0;\n        for (let i = StartingPos - 1; i < Haystack.length; i++) {\n          if (Haystack.substring(i, i + Needle.length) === Needle) {\n            count++;\n            if (count === Occurrence) {\n              pos = i + 1;\n              break;\n            }\n          }\n        }\n\n        return pos > 0; // Return true if the substring is found, false otherwise\n      }\n"
    variables['addFuncIfWeUseIt_RegExMatch'] = "\n      // RegExMatch\n      function RegExMatch(Haystack, NeedleRegEx, OutputVar, StartingPos) {\n          if (Haystack === null || NeedleRegEx === null) return null;\n\n          const regex = new RegExp(NeedleRegEx);\n          let match;\n\n          if (typeof Haystack === 'string') {\n              match = Haystack.match(regex);\n          }\n\n          if (match) {\n              if (OutputVar) {\n                  OutputVar.push(match[0]);\n              }\n              return match.index + 1;\n          } else {\n              return 0;\n          }\n      }\n"
    variables['addFuncIfWeUseIt_StrLen'] = "\n      // StrLen\n      function StrLen(str) {\n        return str === null ? null : str.length;\n      }\n"
    variables['addFuncIfWeUseIt_getRandomNumber'] = "\n      // Function to generate a random number between min (inclusive) and max (inclusive)\n      function getRandomNumber(min, max) {\n        return Math.floor(Math.random() * (max - min + 1) + min);\n      }\n"
    variables['addFuncIfWeUseIt_SubStr'] = "\n      function SubStr(str, startPos, length) {\n        // If str is null or undefined, return an empty string\n        if (str === null || str === undefined) {\n          return " + Chr(34) + "" + Chr(34) + ";\n        }\n\n        // If length is not provided or is blank, default to " + Chr(34) + "all characters" + Chr(34) + "\n        if (length === undefined || length === " + Chr(34) + "" + Chr(34) + ") {\n          length = str.length - startPos + 1;\n        }\n\n        // If startPos is less than 1, adjust it to start from the end of the string\n        if (startPos < 1) {\n          startPos = str.length + startPos;\n        }\n\n        // Extract the substring based on startPos and length\n        return str.substr(startPos - 1, length);\n      }\n"
    variables['addFuncIfWeUseIt_Trim'] = "\n      function Trim(inputString) {\n        // Check if inputString is null or undefined\n        if (inputString == null) {\n          return " + Chr(34) + "" + Chr(34) + "; // Return an empty string if inputString is null or undefined\n        }\n        return inputString.replace(/^" + Chr(92) + "s+|" + Chr(92) + "s+$/g, " + Chr(34) + "" + Chr(34) + "); // Removes leading and trailing whitespace\n      }\n"
    variables['addFuncIfWeUseIt_ParseInt'] = "\n      async function ParseInt(num) {\n        if (num === null) {\n          return null;\n        }\n\n        num = num.trim();\n        num++;\n        num--;\n\n        return num;\n      }"
    variables['addFuncIfWeUseIt_StrReplace'] = "\n      function StrReplace(originalString, find, replaceWith) {\n        // Check if originalString is a string\n        if (typeof originalString !== " + Chr(34) + "string" + Chr(34) + ") {\n          return originalString; // Return originalString as is\n        }\n\n        // Escape special characters in the 'find' string to be used literally\n        const escapedFind = find.replace(/[.*+?^${}()|[" + Chr(92) + "]" + Chr(92) + "" + Chr(92) + "]/g, " + Chr(34) + "" + Chr(92) + "" + Chr(92) + "$&" + Chr(34) + ");\n\n        // Use replace method to replace all occurrences of 'find' with 'replaceWith'\n        return originalString.replace(new RegExp(escapedFind, " + Chr(34) + "g" + Chr(34) + "), replaceWith);\n      }\n"
    variables['addFuncIfWeUseIt_Mod'] = "\n      // Custom Mod function\n      function Mod(dividend, divisor) {\n        return dividend " + Chr(37) + " divisor;\n      }\n"
    variables['addFuncIfWeUseIt_Asc'] = "\n      function Asc(char) {\n        return char.charCodeAt(0);\n      }\n"
    variables['addFuncIfWeUseIt_StringTrimLeft'] = "\n// Function to trim specified number of characters from the left side of a string\nfunction StringTrimLeft(input, numChars) {\n  if (typeof input === 'string' && typeof numChars === 'number' && numChars >= 0) {\n    return input.length > numChars ? input.substring(numChars) : '';\n  } else {\n    console.error(" + Chr(34) + "Invalid input provided." + Chr(34) + ");\n    return input; // Return original input if trimming is not possible\n  }\n}\n"
    variables['addFuncIfWeUseIt_StringTrimRight'] = "\n// Function to trim specified number of characters from the right side of a string\nfunction StringTrimRight(input, numChars) {\n  if (typeof input === 'string' && typeof numChars === 'number' && numChars >= 0) {\n    return input.length > numChars ? input.substring(0, input.length - numChars) : '';\n  } else {\n    console.error(" + Chr(34) + "Invalid input provided." + Chr(34) + ");\n    return input; // Return original input if trimming is not possible\n  }\n}\n"
    variables['addFuncIfWeUseIt_isMobileDevice'] = "\n      function isMobileDevice() {\n        return /Mobi|Android/i.test(navigator.userAgent);\n      }\n"
    variables['addFuncIfWeUseIt_SetTimer'] = "\n      // Object to store timer intervals for different functions\n      const timerIntervals = {};\n\n      async function SetTimer(func, timeOrOnOff) {\n        if (typeof func !== " + Chr(34) + "function" + Chr(34) + " || typeof timeOrOnOff === " + Chr(34) + "undefined" + Chr(34) + ") {\n          console.error(" + Chr(34) + "Invalid arguments. Please provide a valid function and time/On/Off state." + Chr(34) + ");\n          return;\n        }\n\n        if (typeof timeOrOnOff === " + Chr(34) + "number" + Chr(34) + ") {\n          // If a number is provided, set the timer to that time in milliseconds and start it.\n          func.interval = timeOrOnOff; // Store the interval within the function\n          func(); // Call the function initially\n          func.intervalId = setInterval(func, timeOrOnOff);\n          timerIntervals[func] = func.intervalId; // Store the interval ID\n        } else if (timeOrOnOff === " + Chr(34) + "On" + Chr(34) + ") {\n          // If 'On' is provided, start the timer if it's not already running.\n          if (!func.intervalId && func.interval) {\n            func(); // Call the function initially\n            func.intervalId = setInterval(func, func.interval); // Start with the stored interval\n            timerIntervals[func] = func.intervalId; // Store the interval ID\n          } else {\n            console.error(" + Chr(34) + "Timer is not set. Please provide a valid interval." + Chr(34) + ");\n          }\n        } else if (timeOrOnOff === " + Chr(34) + "Off" + Chr(34) + ") {\n          // If 'Off' is provided, clear the timer if it's running.\n          clearInterval(func.intervalId);\n          func.intervalId = null;\n          delete timerIntervals[func]; // Remove the interval ID from storage\n        } else {\n          console.error(" + Chr(34) + "Invalid time/On/Off state. Please provide a valid time in milliseconds or 'On'/'Off'." + Chr(34) + ");\n        }\n      }\n"
    variables['addFuncIfWeUseIt_GuiControl'] = "\n      function GuiControl(action, id, param1, param2, param3, param4) {\n        const element = document.getElementById(id);\n        if (element) {\n          // Handle DOM elements\n          if (action === " + Chr(34) + "move" + Chr(34) + ") {\n            // Set position and size\n            element.style.left = param1 + " + Chr(34) + "px" + Chr(34) + ";\n            element.style.top = param2 + " + Chr(34) + "px" + Chr(34) + ";\n            element.style.width = param3 + " + Chr(34) + "px" + Chr(34) + ";\n            element.style.height = param4 + " + Chr(34) + "px" + Chr(34) + ";\n          } else if (action === " + Chr(34) + "focus" + Chr(34) + " && (element instanceof HTMLInputElement || element instanceof HTMLElement)) {\n            // Focus on the element\n            element.focus();\n          } else if (action === " + Chr(34) + "text" + Chr(34) + ") {\n            // Set new text content\n            element.textContent = param1;\n          } else if (action === " + Chr(34) + "hide" + Chr(34) + ") {\n            // Hide the element\n            element.style.display = " + Chr(34) + "none" + Chr(34) + ";\n          } else if (action === " + Chr(34) + "show" + Chr(34) + ") {\n            // Show the element\n            element.style.display = " + Chr(34) + "" + Chr(34) + ";\n          } else if (action === " + Chr(34) + "enable" + Chr(34) + ") {\n            // Enable the element\n            element.disabled = false;\n          } else if (action === " + Chr(34) + "disable" + Chr(34) + ") {\n            // Disable the element\n            element.disabled = true;\n          } else if (action === " + Chr(34) + "font" + Chr(34) + ") {\n            // Set font size\n            element.style.fontSize = param1 + " + Chr(34) + "px" + Chr(34) + ";\n          } else if (action === " + Chr(34) + "destroy" + Chr(34) + ") {\n      	    // Remove the element from the DOM\n    	    element.parentNode.removeChild(element);\n    	  } else if (action === " + Chr(34) + "color" + Chr(34) + ") {\n            // Set color\n            element.style.color = param1;\n          } else if (action === " + Chr(34) + "picture" + Chr(34) + ") {\n            // Change the image source\n            if (element instanceof HTMLImageElement) {\n              element.src = param1;\n            } else {\n              console.error(" + Chr(34) + "Element is not an <img> tag, cannot change picture." + Chr(34) + ");\n            }\n          } else if (action === " + Chr(34) + "textide" + Chr(34) + ") {\n            // Set value for Ace editor\n            var editor = ace.edit(id); // Access the Ace editor instance using its ID\n            if (editor && param1) {\n              editor.session.setValue(param1);\n            } else {\n              console.error(" + Chr(34) + "Element is not an Ace editor or parameter is missing." + Chr(34) + ");\n            }\n          }\n        } else {\n          // Handle canvas or non-existing element\n          if (action === " + Chr(34) + "move" + Chr(34) + ") {\n            // Update position and size of the rectangle\n            updateRectangle(id, param1, param2, param3, param4);\n            redrawCanvas(); // Redraw the canvas with updated rectangles\n          } else if (action === " + Chr(34) + "color" + Chr(34) + ") {\n            // Update color of the rectangle\n            updateRectangleColor(id, param1);\n            redrawCanvas(); // Redraw the canvas with updated rectangles\n          }\n        }\n      }\n"
    variables['addFuncIfWeUseIt_getDataFromEndpoint'] = "\n      async function getDataFromEndpoint(data, endpoint) {\n        // Convert data to JSON string\n        const requestData = JSON.stringify(data);\n\n        // Set up fetch request options\n        const requestOptions = {\n          method: " + Chr(34) + "POST" + Chr(34) + ", // or 'GET' depending on your server's requirements\n          headers: {\n            " + Chr(34) + "Content-Type" + Chr(34) + ": " + Chr(34) + "application/json" + Chr(34) + ",\n          },\n          body: requestData,\n        };\n\n        // Fetch data from the specified endpoint\n        const response = await fetch(endpoint, requestOptions);\n\n        // Check if response is successful\n        if (!response.ok) {\n          throw new Error(" + Chr(96) + "Failed to fetch data from ${endpoint}. Status: ${response.status}" + Chr(96) + ");\n        }\n\n        // Parse response data based on Content-Type header\n        const contentType = response.headers.get(" + Chr(34) + "content-type" + Chr(34) + ");\n        if (contentType && contentType.includes(" + Chr(34) + "application/json" + Chr(34) + ")) {\n          return response.json(); // Parse JSON response\n        } else {\n          return response.text(); // Parse plain text response\n        }\n      }\n"
    variables['addFuncIfWeUseIt_FileAppend'] = "\n      function FileAppend(data, filename) {\n        // Create a blob with the provided data\n        const blob = new Blob([data], { type: " + Chr(34) + "text/plain" + Chr(34) + " });\n\n        // Create a temporary anchor element\n        const anchor = document.createElement(" + Chr(34) + "a" + Chr(34) + ");\n        anchor.style.display = " + Chr(34) + "none" + Chr(34) + ";\n\n        // Set the download attribute and filename\n        anchor.setAttribute(" + Chr(34) + "href" + Chr(34) + ", window.URL.createObjectURL(blob));\n        anchor.setAttribute(" + Chr(34) + "download" + Chr(34) + ", filename);\n\n        // Append the anchor element to the body\n        document.body.appendChild(anchor);\n\n        // Trigger a click event on the anchor element\n        anchor.click();\n\n        // Remove the anchor element\n        document.body.removeChild(anchor);\n      }\n"
    variables['addFuncIfWeUseIt_isConnectedToBackend'] = "\nfunction isConnectedToBackend() {\n    return window.location.protocol !== " + Chr(34) + "file:" + Chr(34) + ";\n}\n"
    variables['addFuncIfWeUseIt_MouseGetPos'] = "\n      var mouseX = 0;\n      var mouseY = 0;\n\n      document.addEventListener(" + Chr(34) + "mousemove" + Chr(34) + ", function (event) {\n        mouseX = event.clientX;\n        mouseY = event.clientY;\n      });\n\n      function MouseGetPos(coord) {\n        if (coord === " + Chr(34) + "x" + Chr(34) + ") {\n          return mouseX;\n        } else if (coord === " + Chr(34) + "y" + Chr(34) + ") {\n          return mouseY;\n        } else {\n          return null; // Invalid parameter\n        }\n      }\n"
    variables['addFuncIfWeUseIt_SoundPlay'] = "\n           let audio = new Audio();\n            let currentAudioUrl = null;\n\n            function isBase64(str) {\n                try {\n                    return btoa(atob(str)) === str;\n                } catch (err) {\n                    return false;\n                }\n            }\n\n            function SoundPlay(command, parameter) {\n                switch (command) {\n                    case " + Chr(34) + "play" + Chr(34) + ":\n                        if (typeof parameter === " + Chr(34) + "string" + Chr(34) + ") {\n                            if (isBase64(parameter)) {\n                                // Parameter is a Base64-encoded string\n                                let binaryString = atob(parameter);\n                                let bytes = new Uint8Array(binaryString.length);\n\n                                for (let i = 0; i < binaryString.length; i++) {\n                                    bytes[i] = binaryString.charCodeAt(i);\n                                }\n\n                                let mimeType = " + Chr(34) + "audio/mpeg" + Chr(34) + "; // Default MIME type\n                                // Determine MIME type based on audio data\n                                // (You may need more sophisticated detection logic here)\n                                if (parameter.includes(" + Chr(34) + "audio/wav" + Chr(34) + ")) {\n                                    mimeType = " + Chr(34) + "audio/wav" + Chr(34) + ";\n                                } else if (parameter.includes(" + Chr(34) + "audio/mp3" + Chr(34) + ")) {\n                                    mimeType = " + Chr(34) + "audio/mpeg" + Chr(34) + ";\n                                } else if (parameter.includes(" + Chr(34) + "audio/ogg" + Chr(34) + ")) {\n                                    mimeType = " + Chr(34) + "audio/ogg" + Chr(34) + ";\n                                } else if (parameter.includes(" + Chr(34) + "audio/aac" + Chr(34) + ")) {\n                                    mimeType = " + Chr(34) + "audio/aac" + Chr(34) + ";\n                                } else if (parameter.includes(" + Chr(34) + "audio/m4a" + Chr(34) + ")) {\n                                    mimeType = " + Chr(34) + "audio/mp4" + Chr(34) + ";\n                                } else if (parameter.includes(" + Chr(34) + "audio/flac" + Chr(34) + ")) {\n                                    mimeType = " + Chr(34) + "audio/flac" + Chr(34) + ";\n                                } else if (parameter.includes(" + Chr(34) + "audio/x-aiff" + Chr(34) + ")) {\n                                    mimeType = " + Chr(34) + "audio/x-aiff" + Chr(34) + ";\n                                }\n                                // Add more conditions for other audio formats...\n\n                                let blob = new Blob([bytes.buffer], {\n                                    type: mimeType,\n                                });\n                                let audioSrc = URL.createObjectURL(blob);\n\n                                audio.src = audioSrc;\n                                audio.play();\n                                currentAudioUrl = audioSrc;\n                            } else {\n                                // Parameter is assumed to be a URL\n                                audio.src = parameter;\n                                audio.play();\n                                currentAudioUrl = parameter;\n                            }\n                        } else {\n                            console.error(" + Chr(34) + "Invalid parameter for play command" + Chr(34) + ");\n                        }\n                        break;\n                    case " + Chr(34) + "stop" + Chr(34) + ":\n                        audio.pause();\n                        audio.currentTime = 0;\n                        break;\n                    case " + Chr(34) + "pause" + Chr(34) + ":\n                        audio.pause();\n                        break;\n                    case " + Chr(34) + "resume" + Chr(34) + ":\n                        audio.play();\n                        break;\n                    case " + Chr(34) + "mute" + Chr(34) + ":\n                        audio.volume = 0;\n                        break;\n                    case " + Chr(34) + "unmute" + Chr(34) + ":\n                        audio.volume = 1;\n                        break;\n                    case " + Chr(34) + "setVolume" + Chr(34) + ":\n                        if (\n                            typeof parameter === " + Chr(34) + "number" + Chr(34) + " &&\n                            parameter >= 0 &&\n                            parameter <= 100\n                        ) {\n                            audio.volume = parameter / 100;\n                        } else {\n                            console.error(\n                                " + Chr(34) + "Invalid volume value. Volume must be a number between 0 and 100" + Chr(34) + ",\n                            );\n                        }\n                        break;\n                    default:\n                        console.error(" + Chr(34) + "Invalid command specified" + Chr(34) + ");\n                        break;\n                }\n            }\n"
    variables['addFuncIfWeUseIt_StoreLocally'] = "\n// Define the StoreLocally function with embedded getLocalStorageUsagePercentage logic\nfunction StoreLocally(operation, saveLocation, data) {\n    if (operation === " + Chr(34) + "s" + Chr(34) + ") {\n        // Save data to local storage under specified saveLocation\n        localStorage.setItem(saveLocation, String(data));\n        return true; // Indicate success\n    } else if (operation === " + Chr(34) + "d" + Chr(34) + ") {\n        // Delete data from local storage under specified saveLocation\n        localStorage.removeItem(saveLocation);\n        return true; // Indicate success\n    } else if (operation === " + Chr(34) + "r" + Chr(34) + ") {\n        // Retrieve data from local storage under specified saveLocation\n        return localStorage.getItem(saveLocation) || null; // Return stored data or null if not found\n    } else if (operation === " + Chr(34) + "dALL" + Chr(34) + ") {\n        // Delete all data from local storage (clear all keys)\n        localStorage.clear();\n        return true; // Indicate success\n    } else if (operation === " + Chr(34) + "e" + Chr(34) + ") {\n        // Check if local storage is empty (no keys present)\n        return localStorage.length === 0; // Return true if empty, false if not empty\n    } else if (operation === " + Chr(34) + "u" + Chr(34) + ") {\n        // Embed the logic of getLocalStorageUsagePercentage function\n\n        var store = localStorage;\n        var testKey = " + Chr(34) + "$_test" + Chr(34) + ";\n\n        // Function to test storage capacity\n        function testCapacity(size) {\n            try {\n                store.setItem(testKey, new Array(size + 1).join('0'));\n                store.removeItem(testKey);\n                return true;\n            } catch (ex) {\n                return false;\n            }\n        }\n\n        // Binary search to find maximum size\n        var low = 0,\n            high = 1,\n            upperLimit = (1024 * 1024 * 1024) / 2; // Default upper limit (1 GB)\n\n        while (testCapacity(high) && high < upperLimit) {\n            low = high;\n            high *= 2;\n        }\n\n        // Refine the estimate using binary search\n        var precision = 8; // Number of iterations for precision\n        while (precision--) {\n            var mid = (low + high) / 2;\n            if (testCapacity(mid)) {\n                low = mid;\n            } else {\n                high = mid;\n            }\n        }\n\n        var totalBytes = Math.ceil(high) * 2; // Total storage limit in bytes\n\n        // Calculate used storage size directly\n        var usedBytes = Object.keys(store).reduce(function(total, key) {\n            return total + key.length + store[key].length * 2;\n        }, 0);\n\n        // Calculate percentage used\n        var usedPercentage = (usedBytes / totalBytes) * 100;\n        usedPercentage = usedPercentage.toFixed(2); // Round to 2 decimal places\n\n        return usedPercentage;\n    } else {\n        console.error(" + Chr(34) + "Invalid operation specified." + Chr(34) + ");\n        return false; // Indicate failure\n    }\n}\n"
    variables['addFuncIfWeUseIt_createToggleSwitch'] = "\n      // Function to create a toggle switch with width and height\n      function createToggleSwitch(parent, id, label, color, leftPos, topPos, width, height, switchFunction) {\n        let toggleSwitch = document.createElement(" + Chr(34) + "div" + Chr(34) + ");\n        toggleSwitch.className = " + Chr(34) + "toggle-switch" + Chr(34) + ";\n        toggleSwitch.id = id;\n        toggleSwitch.dataset.id = id;\n        toggleSwitch.dataset.isOn = " + Chr(34) + "false" + Chr(34) + ";\n        toggleSwitch.dataset.color = color; // Save color in dataset for use when toggled\n        toggleSwitch.style.width = width + " + Chr(34) + "px" + Chr(34) + "; // Set width\n        toggleSwitch.style.height = height + " + Chr(34) + "px" + Chr(34) + "; // Set height\n        toggleSwitch.style.backgroundColor = " + Chr(34) + "#ccc" + Chr(34) + ";\n        toggleSwitch.style.borderRadius = height / 2 + " + Chr(34) + "px" + Chr(34) + "; // Make border radius proportional to height\n        toggleSwitch.style.position = " + Chr(34) + "absolute" + Chr(34) + ";\n        toggleSwitch.style.left = leftPos + " + Chr(34) + "px" + Chr(34) + ";\n        toggleSwitch.style.top = topPos + " + Chr(34) + "px" + Chr(34) + ";\n        toggleSwitch.style.cursor = " + Chr(34) + "pointer" + Chr(34) + ";\n        toggleSwitch.style.transition = " + Chr(34) + "background-color 0.3s ease" + Chr(34) + ";\n\n        // Create knob for the toggle switch\n        let knob = document.createElement(" + Chr(34) + "div" + Chr(34) + ");\n        knob.className = " + Chr(34) + "knob" + Chr(34) + ";\n        knob.style.width = height - 4 + " + Chr(34) + "px" + Chr(34) + "; // Set knob width (slightly less than height)\n        knob.style.height = height - 4 + " + Chr(34) + "px" + Chr(34) + "; // Set knob height (slightly less than height)\n        knob.style.backgroundColor = " + Chr(34) + "#fff" + Chr(34) + ";\n        knob.style.borderRadius = " + Chr(34) + "50" + Chr(37) + "" + Chr(34) + ";\n        knob.style.position = " + Chr(34) + "absolute" + Chr(34) + ";\n        knob.style.top = " + Chr(34) + "2px" + Chr(34) + ";\n        knob.style.left = " + Chr(34) + "2px" + Chr(34) + ";\n        knob.style.transition = " + Chr(34) + "transform 0.3s ease" + Chr(34) + ";\n\n        toggleSwitch.appendChild(knob);\n        parent.appendChild(toggleSwitch);\n\n        // Create label for the toggle switch\n        let toggleLabel = document.createElement(" + Chr(34) + "div" + Chr(34) + ");\n        toggleLabel.textContent = label;\n        toggleLabel.style.position = " + Chr(34) + "absolute" + Chr(34) + ";\n        toggleLabel.style.left = leftPos + width + 10 + " + Chr(34) + "px" + Chr(34) + "; // Position label relative to switch\n        toggleLabel.style.top = topPos + 5 + " + Chr(34) + "px" + Chr(34) + ";\n        parent.appendChild(toggleLabel);\n\n        // Toggle switch click event\n        toggleSwitch.addEventListener(" + Chr(34) + "click" + Chr(34) + ", function () {\n          let isOn = toggleSwitch.dataset.isOn === " + Chr(34) + "true" + Chr(34) + ";\n          toggleSwitch.dataset.isOn = String(!isOn); // Toggle the state\n\n          const knob = toggleSwitch.querySelector(" + Chr(34) + ".knob" + Chr(34) + ");\n          knob.style.transform = isOn ? " + Chr(34) + "translateX(0)" + Chr(34) + " : " + Chr(34) + "translateX(" + Chr(34) + " + (width - height + 4) + " + Chr(34) + "px)" + Chr(34) + "; // Move knob based on state\n\n          const backgroundColor = isOn ? " + Chr(34) + "#ccc" + Chr(34) + " : toggleSwitch.dataset.color;\n          toggleSwitch.style.backgroundColor = backgroundColor; // Update background color\n\n          if (isOn == true) {\n            isOn = " + Chr(34) + "0" + Chr(34) + ";\n          } else {\n            isOn = " + Chr(34) + "1" + Chr(34) + ";\n          }\n\n          // Call the switch function with toggle switch ID and state\n          switchFunction(isOn);\n        });\n      }\n"
    variables['addFuncIfWeUseIt_getUrlParams'] = "\n      function getUrlParams() {\n        const queryString = window.location.search.substring(1); // Get the query string without the leading '?'\n        const paramPairs = queryString.split(" + Chr(34) + "&" + Chr(34) + "); // Split the query string into parameter key-value pairs\n\n        // Array to store parameter values starting from the first key's value\n        const paramValues = [];\n\n        // Iterate over each parameter pair\n        paramPairs.forEach((pair, index) => {\n          const pairParts = pair.split(" + Chr(34) + "=" + Chr(34) + ");\n\n          if (index === 0 && pairParts.length === 2) {\n            // For the first parameter pair (index === 0), add the value directly\n            const firstValue = decodeURIComponent(pairParts[1]);\n            paramValues.push(firstValue);\n          } else if (pairParts.length === 1) {\n            // For subsequent parameter pairs (values without keys), add the value directly\n            const value = decodeURIComponent(pairParts[0]);\n            paramValues.push(value);\n          }\n        });\n\n        // Join the parameter values into a single string separated by '&'\n        const resultString = paramValues.join(" + Chr(34) + "&" + Chr(34) + ");\n\n        return resultString;\n      }\n"
    variables['addFuncIfWeUseIt_reloadWithParams'] = "\n      function reloadWithParams(paramString) {\n        // Parse the parameter string to extract individual parameter values\n        const paramsArray = paramString.substring(1).split(" + Chr(34) + "&" + Chr(34) + "); // Remove leading '?' and split by '&'\n\n        // Construct an array to store valid parameter pairs\n        const paramPairs = [];\n\n        // Iterate over each parameter value\n        paramsArray.forEach((value) => {\n          // Check if the value is non-empty (to filter out any empty values)\n          if (value.trim() !== " + Chr(34) + "" + Chr(34) + ") {\n            // Push the parameter value to paramPairs\n            paramPairs.push(value); // No need to encode values here\n          }\n        });\n\n        // Join the parameter pairs into a query string format\n        const queryParams = paramPairs.join(" + Chr(34) + "&" + Chr(34) + ");\n\n        // Construct the new URL with the parameters and reload the page\n        const newUrl = " + Chr(96) + "${window.location.origin}${window.location.pathname}?${queryParams}" + Chr(96) + ";\n        window.location.href = newUrl;\n      }\n"
    variables['addFuncIfWeUseIt_PlayVideoFromBase64'] = "\n      function PlayVideoFromBase64(parentElement, base64Data, id, x, y, width, height, autoplay) {\n        // Create a container div for the video player\n        const playerContainer = document.createElement(" + Chr(34) + "div" + Chr(34) + ");\n        playerContainer.id = id; // Set the id attribute\n        playerContainer.style.position = " + Chr(34) + "absolute" + Chr(34) + ";\n        playerContainer.style.left = " + Chr(96) + "${x}px" + Chr(96) + ";\n        playerContainer.style.top = " + Chr(96) + "${y}px" + Chr(96) + ";\n        playerContainer.style.width = " + Chr(96) + "${width}px" + Chr(96) + ";\n        playerContainer.style.height = " + Chr(96) + "${height}px" + Chr(96) + ";\n\n        // Create a " + Chr(60) + Chr(118) + Chr(105) + Chr(100) + Chr(101) + Chr(111) + Chr(62) + " element for the video player\n        const videoElement = document.createElement(" + Chr(34) + "video" + Chr(34) + ");\n        videoElement.style.width = " + Chr(34) + "100" + Chr(37) + "" + Chr(34) + ";\n        videoElement.style.height = " + Chr(34) + "100" + Chr(37) + "" + Chr(34) + ";\n        videoElement.controls = true; // Show player controls\n\n        // Convert Base64 string to Blob\n        const blob = base64ToBlob(base64Data);\n\n        // Create a Blob URL from the Blob object\n        const blobUrl = URL.createObjectURL(blob);\n\n        // Set the video source to the Blob URL\n        videoElement.src = blobUrl;\n\n        // Set autoplay attribute based on the autoplay parameter\n        if (autoplay) {\n          videoElement.autoplay = true;\n        }\n\n        // Append the video element to the player container\n        playerContainer.appendChild(videoElement);\n\n        // Append the player container to the specified parent element\n        parentElement.appendChild(playerContainer);\n      }\n\n      // Function to convert Base64 string to Blob\n      function base64ToBlob(base64Data) {\n        const byteCharacters = atob(base64Data);\n        const byteNumbers = new Array(byteCharacters.length);\n        for (let i = 0; i < byteCharacters.length; i++) {\n          byteNumbers[i] = byteCharacters.charCodeAt(i);\n        }\n        const byteArray = new Uint8Array(byteNumbers);\n        return new Blob([byteArray]);\n      }\n"
    variables['addFuncIfWeUseIt_PlayVideoFromUrl'] = "\n      // Define the PlayVideoFromUrl function\n      function PlayVideoFromUrl(parentElement, videoUrl, id, x, y, width, height, autoplay) {\n        // Create a container div for the video player\n        const playerContainer = document.createElement(" + Chr(34) + "div" + Chr(34) + ");\n        playerContainer.id = id; // Set the id attribute\n        playerContainer.style.position = " + Chr(34) + "absolute" + Chr(34) + ";\n        playerContainer.style.left = " + Chr(96) + "${x}px" + Chr(96) + ";\n        playerContainer.style.top = " + Chr(96) + "${y}px" + Chr(96) + ";\n        playerContainer.style.width = " + Chr(96) + "${width}px" + Chr(96) + ";\n        playerContainer.style.height = " + Chr(96) + "${height}px" + Chr(96) + ";\n\n        // Create a <video> element for the video player\n        const videoElement = document.createElement(" + Chr(34) + "video" + Chr(34) + ");\n        videoElement.style.width = " + Chr(34) + "100" + Chr(37) + "" + Chr(34) + ";\n        videoElement.style.height = " + Chr(34) + "100" + Chr(37) + "" + Chr(34) + ";\n        videoElement.controls = true; // Show player controls\n\n        // Set the video source to the specified URL\n        videoElement.src = videoUrl;\n\n        // Set autoplay attribute based on the autoplay parameter\n        if (autoplay) {\n          videoElement.autoplay = true;\n        }\n\n        // Append the video element to the player container\n        playerContainer.appendChild(videoElement);\n\n        // Append the player container to the specified parent element\n        parentElement.appendChild(playerContainer);\n      }\n"
    variables['addFuncIfWeUseIt_PlayYoutubeVid'] = "\n      function PlayYoutubeVid(parentElement, videoUrl, id, x, y, width, height, autoplay) {\n        // Create a container div for the YouTube player\n        const playerContainer = document.createElement(" + Chr(34) + "div" + Chr(34) + ");\n        playerContainer.id = id; // Set the id attribute\n        playerContainer.style.position = " + Chr(34) + "absolute" + Chr(34) + ";\n        playerContainer.style.left = " + Chr(96) + "${x}px" + Chr(96) + ";\n        playerContainer.style.top = " + Chr(96) + "${y}px" + Chr(96) + ";\n        playerContainer.style.width = " + Chr(96) + "${width}px" + Chr(96) + ";\n        playerContainer.style.height = " + Chr(96) + "${height}px" + Chr(96) + ";\n\n        // Extract video ID from the YouTube URL\n        const videoId = extractVideoId(videoUrl);\n\n        // Create an iframe element for the YouTube player\n        const iframe = document.createElement(" + Chr(34) + "iframe" + Chr(34) + ");\n        iframe.width = " + Chr(34) + "100" + Chr(37) + "" + Chr(34) + ";\n        iframe.height = " + Chr(34) + "100" + Chr(37) + "" + Chr(34) + ";\n\n        // Construct the YouTube video URL with autoplay and mute parameters\n        let autoplayParams = autoplay ? " + Chr(34) + "autoplay=1" + Chr(34) + " : " + Chr(34) + "autoplay=0" + Chr(34) + ";\n        let muteParams = autoplay ? " + Chr(34) + "mute=1" + Chr(34) + " : " + Chr(34) + "mute=0" + Chr(34) + ";\n        iframe.src = " + Chr(96) + "https://www.youtube.com/embed/${videoId}?${autoplayParams}&${muteParams}" + Chr(96) + ";\n        iframe.frameBorder = " + Chr(34) + "0" + Chr(34) + ";\n        iframe.allowFullscreen = true; // Allow fullscreen mode\n\n        // Append the iframe to the player container\n        playerContainer.appendChild(iframe);\n\n        // Append the player container to the specified parent element\n        parentElement.appendChild(playerContainer);\n      }\n\n      // Function to extract video ID from YouTube URL\n      function extractVideoId(url) {\n        const videoIdRegex = /[?&]v=([^&]+)/;\n        const match = url.match(videoIdRegex);\n        return match && match[1] ? match[1] : " + Chr(34) + "" + Chr(34) + ";\n      }\n"
    variables['addFuncIfWeUseIt_changeFavicon'] = "\n      async function changeFavicon(iconSource) {\n        const head = document.head || document.getElementsByTagName(" + Chr(34) + "head" + Chr(34) + ")[0];\n\n        // Remove existing favicon link element if it exists\n        const existingFavicon = document.getElementById(" + Chr(34) + "dynamic-favicon" + Chr(34) + ");\n        if (existingFavicon) {\n          head.removeChild(existingFavicon);\n        }\n\n        // Create a new favicon link element\n        const favicon = document.createElement(" + Chr(34) + "link" + Chr(34) + ");\n        favicon.id = " + Chr(34) + "dynamic-favicon" + Chr(34) + ";\n        favicon.rel = " + Chr(34) + "shortcut icon" + Chr(34) + ";\n\n        try {\n          let mimeType;\n\n          // Determine if iconSource is a URL or a Base64 string\n          if (isUrl(iconSource)) {\n            // If iconSource is a URL, fetch the resource to get the MIME type\n            const response = await fetch(iconSource);\n            const buffer = await response.arrayBuffer();\n            mimeType = getMimeTypeFromArrayBuffer(buffer);\n            favicon.type = mimeType || " + Chr(34) + "image/x-icon" + Chr(34) + "; // Default to 'image/x-icon' if MIME type is not found\n            favicon.href = iconSource;\n          } else {\n            // If iconSource is a Base64 string, convert it to a Blob\n            const blob = b64toBlob(iconSource);\n            mimeType = getMimeTypeFromBlob(blob);\n            favicon.type = mimeType || " + Chr(34) + "image/png" + Chr(34) + "; // Default to 'image/png' if MIME type is not found\n            favicon.href = URL.createObjectURL(blob);\n          }\n\n        // Get the current favicon element (if exists)\n        const existingFavicon = document.querySelector('link[rel=" + Chr(34) + "icon" + Chr(34) + "]');\n\n        // Replace the current favicon with the new one\n        if (existingFavicon) {\n          // If a favicon exists, replace it\n          document.head.removeChild(existingFavicon); // Remove the existing favicon\n        }\n\n          // Append the new favicon link element to the head\n          document.head.appendChild(favicon);\n        } catch (error) {\n          console.error(" + Chr(34) + "Error changing favicon:" + Chr(34) + ", error);\n        }\n      }\n\n      // Function to check if a string is a URL\n      function isUrl(str) {\n        try {\n          new URL(str);\n          return true;\n        } catch (error) {\n          return false;\n        }\n      }\n\n      // Function to get MIME type from an ArrayBuffer\n      function getMimeTypeFromArrayBuffer(buffer) {\n        const view = new DataView(buffer);\n        if (view.getUint16(0, false) == 0xffd8) {\n          return " + Chr(34) + "image/jpeg" + Chr(34) + "; // JPEG format\n        } else if (view.getUint32(0, false) == 0x89504e47) {\n          return " + Chr(34) + "image/png" + Chr(34) + "; // PNG format\n        } else if (view.getUint16(0, false) == 0x4949 || view.getUint16(0, false) == 0x4d4d) {\n          return " + Chr(34) + "image/tiff" + Chr(34) + "; // TIFF format\n        } else if (view.getUint16(0, false) == 0x424d) {\n          return " + Chr(34) + "image/bmp" + Chr(34) + "; // BMP format\n        }\n        return null; // Unknown format\n      }\n\n      // Function to get MIME type from a Blob\n      function getMimeTypeFromBlob(blob) {\n        const url = URL.createObjectURL(blob);\n        const img = new Image();\n\n        img.onload = function () {\n          URL.revokeObjectURL(url);\n          // Clean up the Blob URL\n        };\n\n        img.src = url;\n\n        // Return the MIME type detected by the browser\n        return img.type || " + Chr(34) + "image/png" + Chr(34) + ";\n        // Default to 'image/png' if MIME type is not available\n      }\n\n      // Function to convert a Base64 string to a Blob\n      function b64toBlob(b64Data) {\n        const byteCharacters = atob(b64Data);\n        const byteArrays = [];\n\n        for (let i = 0; i < byteCharacters.length; i++) {\n          byteArrays.push(byteCharacters.charCodeAt(i));\n        }\n\n        return new Blob([new Uint8Array(byteArrays)]);\n      }\n"
    variables['addFuncIfWeUseIt_OnKeyPress'] = "\n      var lastKeyPressed = " + Chr(34) + "" + Chr(34) + ";\n\n      function trackLastKeyPressed() {\n        document.addEventListener(" + Chr(34) + "keydown" + Chr(34) + ", function (event) {\n          lastKeyPressed = event.key;\n          // console.log(lastKeyPressed);\n        });\n      }\n\n      function getLastKeyPressed() {\n        return lastKeyPressed;\n      }\n\n      // Call the trackLastKeyPressed function to start tracking key presses\n      trackLastKeyPressed();\n"
    variables['addFuncIfWeUseIt_GetKeyState'] = "\n      let keyState = {}; // Object to track key states\n\n      // Function to handle keydown events\n      function handleKeyDown(event) {\n        keyState[event.key] = true; // Set key state to true when pressed\n      }\n\n      // Function to handle keyup events\n      function handleKeyUp(event) {\n        keyState[event.key] = false; // Set key state to false when released\n      }\n\n      // Add event listeners for keydown and keyup events\n      document.addEventListener(" + Chr(34) + "keydown" + Chr(34) + ", handleKeyDown);\n      document.addEventListener(" + Chr(34) + "keyup" + Chr(34) + ", handleKeyUp);\n\n      // Function to get the state of a key dynamically\n      function GetKeyState(key, DownOrUp) {\n        return DownOrUp === " + Chr(34) + "D" + Chr(34) + " ? keyState[key] : !keyState[key];\n      }\n"
    variables['addFuncIfWeUseIt_createCustomDropdown'] = "\n      // Function to create and populate the dropdown dynamically within a specified parent div\n      function createCustomDropdown(parent, id, data, color, leftPos, topPos, width, height, onChangeFunction) {\n        // Split the data string into an array of options\n        const options = data.split(" + Chr(34) + "|" + Chr(34) + ").map((option) => option.trim());\n\n        // Create a select element (dropdown)\n        const selectElement = document.createElement(" + Chr(34) + "select" + Chr(34) + ");\n\n        // Set attributes and styles for the select element\n        selectElement.id = id;\n        selectElement.style.width = width + " + Chr(34) + "px" + Chr(34) + ";\n        selectElement.style.height = height + " + Chr(34) + "px" + Chr(34) + ";\n        selectElement.style.left = leftPos + " + Chr(34) + "px" + Chr(34) + ";\n        selectElement.style.top = topPos + " + Chr(34) + "px" + Chr(34) + ";\n        selectElement.style.position = " + Chr(34) + "absolute" + Chr(34) + ";\n        selectElement.style.backgroundColor = color;\n        selectElement.style.color = " + Chr(34) + "white" + Chr(34) + "; // Set text color to white\n        selectElement.style.border = " + Chr(34) + "none" + Chr(34) + "; // Remove default border\n        selectElement.style.borderRadius = " + Chr(34) + "5px" + Chr(34) + "; // Add border radius\n        selectElement.style.padding = " + Chr(34) + "5px" + Chr(34) + "; // Add padding\n        selectElement.style.cursor = " + Chr(34) + "pointer" + Chr(34) + "; // Change cursor on hover\n\n        // Populate the dropdown with options\n        options.forEach((optionText) => {\n          const optionElement = document.createElement(" + Chr(34) + "option" + Chr(34) + ");\n          optionElement.textContent = optionText;\n          selectElement.appendChild(optionElement);\n        });\n\n        // Add event listener to handle option selection\n        selectElement.addEventListener(" + Chr(34) + "change" + Chr(34) + ", function () {\n          const selectedText = this.options[this.selectedIndex].textContent;\n          onChangeFunction(selectedText);\n        });\n\n        // Append the dropdown to the specified parent element (Gui1 div)\n        const parentElement = parent instanceof HTMLElement ? parent : document.getElementById(parent);\n        if (parentElement) {\n          parentElement.appendChild(selectElement);\n        } else {\n          console.error(" + Chr(96) + "Parent element " + Chr(34) + "${parent}" + Chr(34) + " not found." + Chr(96) + ");\n        }\n      }\n"
    variables['addFuncIfWeUseIt_StrLower'] = "\n      function StrLower(string) {\n        return string.toLowerCase();\n      }\n"
    variables['addFuncIfWeUseIt_getDataFromAPI'] = "\n      async function getDataFromAPI(url) {\n        try {\n          const response = await fetch(url);\n          if (!response.ok) {\n            throw new Error(" + Chr(34) + "Network response was not ok" + Chr(34) + ");\n          }\n          const data = await response.json();\n          return data;\n        } catch (error) {\n          console.error(" + Chr(34) + "Error fetching data:" + Chr(34) + ", error);\n          return null;\n        }\n      }\n"
    variables['addFuncIfWeUseIt_getDataFromJSON'] = "\n      function getDataFromJSON(jsonData, jsonPath) {\n        const pathSegments = jsonPath.split(" + Chr(34) + "." + Chr(34) + "); // Split the path into segments\n        let currentData = jsonData; // Use jsonData directly (already an object)\n\n        try {\n          for (const segment of pathSegments) {\n            if (currentData && typeof currentData === " + Chr(34) + "object" + Chr(34) + ") {\n              if (segment.includes(" + Chr(34) + "[" + Chr(34) + ") && segment.includes(" + Chr(34) + "]" + Chr(34) + ")) {\n                // Handle array index notation e.g., " + Chr(34) + "data[21].employee_name" + Chr(34) + "\n                const arrayIndex = segment.match(/" + Chr(92) + "[(" + Chr(92) + "d+)" + Chr(92) + "]/); // Extract the array index\n                if (arrayIndex) {\n                  const arrayName = segment.substring(0, segment.indexOf(" + Chr(34) + "[" + Chr(34) + "));\n                  const index = parseInt(arrayIndex[1]);\n                  currentData = currentData[arrayName][index];\n                } else {\n                  return undefined; // Invalid array index notation\n                }\n              } else {\n                // Handle regular object property notation e.g., " + Chr(34) + "employee_name" + Chr(34) + "\n                currentData = currentData[segment];\n              }\n            } else {\n              console.log(" + Chr(34) + "Invalid path segment or data type encountered." + Chr(34) + ");\n              return undefined;\n            }\n          }\n        } catch (error) {\n          console.error(" + Chr(34) + "Error accessing data:" + Chr(34) + ", error);\n          return undefined;\n        }\n\n        return currentData;\n      }\n"
    variables['addFuncIfWeUseIt_createCheckbox'] = "\n      function createCheckbox(parent, id, label, isChecked, leftPos, topPos, checkboxFunction) {\n        // Create checkbox container\n        let checkboxContainer = document.createElement(" + Chr(34) + "div" + Chr(34) + ");\n        checkboxContainer.style.position = " + Chr(34) + "absolute" + Chr(34) + ";\n        checkboxContainer.id = id;\n        checkboxContainer.style.left = leftPos + " + Chr(34) + "px" + Chr(34) + ";\n        checkboxContainer.style.top = topPos + " + Chr(34) + "px" + Chr(34) + ";\n        parent.appendChild(checkboxContainer);\n\n        // Create checkbox input element\n        let checkboxInput = document.createElement(" + Chr(34) + "input" + Chr(34) + ");\n        checkboxInput.type = " + Chr(34) + "checkbox" + Chr(34) + ";\n\n        checkboxInput.checked = isChecked;\n        checkboxInput.style.marginRight = " + Chr(34) + "8px" + Chr(34) + "; // Spacing between checkbox and label\n        checkboxInput.style.verticalAlign = " + Chr(34) + "-2px" + Chr(34) + "; // Align label vertically with checkbox\n        checkboxContainer.appendChild(checkboxInput);\n\n        // Create label for the checkbox\n        let checkboxLabel = document.createElement(" + Chr(34) + "label" + Chr(34) + ");\n        checkboxLabel.textContent = label;\n        checkboxLabel.setAttribute(" + Chr(34) + "for" + Chr(34) + ", id); // Associate label with checkbox input\n        checkboxContainer.appendChild(checkboxLabel);\n\n        // Checkbox change event\n        checkboxInput.addEventListener(" + Chr(34) + "change" + Chr(34) + ", function () {\n          // Call the checkbox function with checkbox state\n          checkboxFunction(checkboxInput.checked ? " + Chr(34) + "1" + Chr(34) + " : " + Chr(34) + "0" + Chr(34) + "); // Return " + Chr(34) + "1" + Chr(34) + " or " + Chr(34) + "0" + Chr(34) + " based on checkbox state\n        });\n      }\n"
    variables['addFuncIfWeUseIt_createCustomIframe'] = "\n      function createCustomIframe(parentDiv, id, url, color, leftPos, topPos, width, height, round, onChangeFunction) {\n        // Create a new iframe element\n        const iframe = document.createElement(" + Chr(34) + "iframe" + Chr(34) + ");\n\n        // Set iframe attributes\n        iframe.id = id;\n        iframe.src = url; // Set iframe source URL\n        iframe.width = width;\n        iframe.height = height;\n        iframe.style.backgroundColor = color;\n        iframe.style.border = " + Chr(34) + "none" + Chr(34) + ";\n        iframe.style.position = " + Chr(34) + "absolute" + Chr(34) + ";\n        iframe.style.left = leftPos + " + Chr(34) + "px" + Chr(34) + ";\n        iframe.style.top = topPos + " + Chr(34) + "px" + Chr(34) + ";\n\n        // Set border radius\n        iframe.style.borderRadius = round + " + Chr(34) + "px" + Chr(34) + ";\n\n        // Set onChange event listener if provided\n        if (typeof onChangeFunction === " + Chr(34) + "function" + Chr(34) + ") {\n          iframe.onload = function () {\n            // Attach an event listener to the iframe's contentWindow for change events\n            iframe.contentWindow.addEventListener(" + Chr(34) + "change" + Chr(34) + ", onChangeFunction);\n          };\n        }\n\n        // Append the iframe to the specified parent div element\n        parentDiv.appendChild(iframe);\n      }\n"
    variables['addFuncIfWeUseIt_AddIDE1'] = "\n      function AddIDE(parent, xPos, yPos, w, h, id, font = 18, langName = " + Chr(34) + "autohotkey" + Chr(34) + ", onChangeFunc, initialText = " + Chr(34) + "" + Chr(34) + ") {\n        var langTools = ace.require(" + Chr(34) + "ace/ext/language_tools" + Chr(34) + ");\n\n        let Completer = {\n          getCompletions: function (editor, session, pos, prefix, callback) {\n\n            if (prefix.startsWith(" + Chr(34) + "p" + Chr(34) + ")) {\n                // Continue executing if the prefix starts with " + Chr(34) + "p" + Chr(34) + "\n            } else {\n                // Return early if the prefix does not start with " + Chr(34) + "p" + Chr(34) + " and its length is not greater than 1\n                if (prefix.length <= 1) {\n                    callback(null, []); // Return an empty array of completions\n                    return;\n                }\n            }\n\n            let prefixLower = prefix.toLowerCase();\n            let filteredTables = hth.filter(function (table) {\n              return table.name.toLowerCase().startsWith(prefixLower);\n            });\n            // filteredTables.sort(function(a, b) {\n            //     return a.name.length - b.name.length;\n            // });\n            let limitedTables = filteredTables; //.slice(-10);\n\n            callback(\n              null,\n              limitedTables.map(function (table) {\n                return {\n                  caption: table.name,\n                  value: table.name,\n                };\n              }),\n            );\n          },\n        };\n        let hth = [{ name: " + Chr(34) + "#AllowSameLineComments" + Chr(34) + " }, { name: " + Chr(34) + "#ClipboardTimeout" + Chr(34) + " }, { name: " + Chr(34) + "#CommentFlag" + Chr(34) + " }, { name: " + Chr(34) + "#Delimiter" + Chr(34) + " }, { name: " + Chr(34) + "#DerefChar" + Chr(34) + " }, { name: " + Chr(34) + "#ErrorStdOut" + Chr(34) + " }, { name: " + Chr(34) + "#EscapeChar" + Chr(34) + " }, { name: " + Chr(34) + "#HotkeyInterval" + Chr(34) + " }, { name: " + Chr(34) + "#HotkeyModifierTimeout" + Chr(34) + " }, { name: " + Chr(34) + "#Hotstring" + Chr(34) + " }, { name: " + Chr(34) + "#If" + Chr(34) + " }, { name: " + Chr(34) + "#IfTimeout" + Chr(34) + " }, { name: " + Chr(34) + "#IfWinActive" + Chr(34) + " }, { name: " + Chr(34) + "#IfWinExist" + Chr(34) + " }, { name: " + Chr(34) + "#IfWinNotActive" + Chr(34) + " }, { name: " + Chr(34) + "#IfWinNotExist" + Chr(34) + " }, { name: " + Chr(34) + "#Include" + Chr(34) + " }, { name: " + Chr(34) + "#IncludeAgain" + Chr(34) + " }, { name: " + Chr(34) + "#InputLevel" + Chr(34) + " }, { name: " + Chr(34) + "#InstallKeybdHook" + Chr(34) + " }, { name: " + Chr(34) + "#InstallMouseHook" + Chr(34) + " }, { name: " + Chr(34) + "#KeyHistory" + Chr(34) + " }, { name: " + Chr(34) + "#LTrim" + Chr(34) + " }, { name: " + Chr(34) + "#MaxHotkeysPerInterval" + Chr(34) + " }, { name: " + Chr(34) + "#MaxMem" + Chr(34) + " }, { name: " + Chr(34) + "#MaxThreads" + Chr(34) + " }, { name: " + Chr(34) + "#MaxThreadsBuffer" + Chr(34) + " }, { name: " + Chr(34) + "#MaxThreadsPerHotkey" + Chr(34) + " }, { name: " + Chr(34) + "#MenuMaskKey" + Chr(34) + " }, { name: " + Chr(34) + "#NoEnv" + Chr(34) + " }, { name: " + Chr(34) + "#NoTrayIcon" + Chr(34) + " }, { name: " + Chr(34) + "#Persistent" + Chr(34) + " }, { name: " + Chr(34) + "#Requires" + Chr(34) + " }, { name: " + Chr(34) + "#SingleInstance" + Chr(34) + " }, { name: " + Chr(34) + "#UseHook" + Chr(34) + " }, { name: " + Chr(34) + "#Warn" + Chr(34) + " }, { name: " + Chr(34) + "#WinActivateForce" + Chr(34) + " }, { name: " + Chr(34) + "break" + Chr(34) + " }, { name: " + Chr(34) + "case" + Chr(34) + " }, { name: " + Chr(34) + "catch" + Chr(34) + " }, { name: " + Chr(34) + "continue" + Chr(34) + " }, { name: " + Chr(34) + "else" + Chr(34) + " }, { name: " + Chr(34) + "finally" + Chr(34) + " }, { name: " + Chr(34) + "for" + Chr(34) + " }, { name: " + Chr(34) + "gosub" + Chr(34) + " }, { name: " + Chr(34) + "goto" + Chr(34) + " }, { name: " + Chr(34) + "if" + Chr(34) + " }, { name: " + Chr(34) + "IfEqual" + Chr(34) + " }, { name: " + Chr(34) + "IfExist" + Chr(34) + " }, { name: " + Chr(34) + "IfGreater" + Chr(34) + " }, { name: " + Chr(34) + "IfGreaterOrEqual" + Chr(34) + " }, { name: " + Chr(34) + "IfInString" + Chr(34) + " }, { name: " + Chr(34) + "IfLess" + Chr(34) + " }, { name: " + Chr(34) + "IfLessOrEqual" + Chr(34) + " }, { name: " + Chr(34) + "IfMsgBox" + Chr(34) + " }, { name: " + Chr(34) + "IfNotEqual" + Chr(34) + " }, { name: " + Chr(34) + "IfNotExist" + Chr(34) + " }, { name: " + Chr(34) + "IfNotInString" + Chr(34) + " }, { name: " + Chr(34) + "IfWinActive" + Chr(34) + " }, { name: " + Chr(34) + "IfWinExist" + Chr(34) + " }, { name: " + Chr(34) + "IfWinNotActive" + Chr(34) + " }, { name: " + Chr(34) + "IfWinNotExist" + Chr(34) + " }, { name: " + Chr(34) + "Loop" + Chr(34) + " }, { name: " + Chr(34) + "return" + Chr(34) + " }, { name: " + Chr(34) + "switch" + Chr(34) + " }, { name: " + Chr(34) + "throw" + Chr(34) + " }, { name: " + Chr(34) + "try" + Chr(34) + " }, { name: " + Chr(34) + "until" + Chr(34) + " }, { name: " + Chr(34) + "while" + Chr(34) + " }, { name: " + Chr(34) + "__Call" + Chr(34) + " }, { name: " + Chr(34) + "__Delete" + Chr(34) + " }, { name: " + Chr(34) + "__Get" + Chr(34) + " }, { name: " + Chr(34) + "__New" + Chr(34) + " }, { name: " + Chr(34) + "__Set" + Chr(34) + " }, { name: " + Chr(34) + "ahk_class" + Chr(34) + " }, { name: " + Chr(34) + "ahk_exe" + Chr(34) + " }, { name: " + Chr(34) + "ahk_group" + Chr(34) + " }, { name: " + Chr(34) + "ahk_id" + Chr(34) + " }, { name: " + Chr(34) + "ahk_pid" + Chr(34) + " }, { name: " + Chr(34) + "and" + Chr(34) + " }, { name: " + Chr(34) + "base" + Chr(34) + " }, { name: " + Chr(34) + "ByRef" + Chr(34) + " }, { name: " + Chr(34) + "class" + Chr(34) + " }, { name: " + Chr(34) + "extends" + Chr(34) + " }, { name: " + Chr(34) + "false" + Chr(34) + " }, { name: " + Chr(34) + "Files" + Chr(34) + " }, { name: " + Chr(34) + "global" + Chr(34) + " }, { name: " + Chr(34) + "local" + Chr(34) + " }, { name: " + Chr(34) + "new" + Chr(34) + " }, { name: " + Chr(34) + "not" + Chr(34) + " }, { name: " + Chr(34) + "or" + Chr(34) + " }, { name: " + Chr(34) + "Parse" + Chr(34) + " }, { name: " + Chr(34) + "ParseInt" + Chr(34) + " }, { name: " + Chr(34) + "Read" + Chr(34) + " }, { name: " + Chr(34) + "Reg" + Chr(34) + " }, { name: " + Chr(34) + "static" + Chr(34) + " }, { name: " + Chr(34) + "true" + Chr(34) + " }, { name: " + Chr(34) + "A_AhkPath" + Chr(34) + " }, { name: " + Chr(34) + "A_AhkVersion" + Chr(34) + " }, { name: " + Chr(34) + "A_AppData" + Chr(34) + " }, { name: " + Chr(34) + "A_AppDataCommon" + Chr(34) + " }, { name: " + Chr(34) + "A_Args" + Chr(34) + " }, { name: " + Chr(34) + "A_AutoTrim" + Chr(34) + " }, { name: " + Chr(34) + "A_BatchLines" + Chr(34) + " }, { name: " + Chr(34) + "A_CaretX" + Chr(34) + " }, { name: " + Chr(34) + "A_CaretY" + Chr(34) + " }, { name: " + Chr(34) + "A_ComputerName" + Chr(34) + " }, { name: " + Chr(34) + "A_ComSpec" + Chr(34) + " }, { name: " + Chr(34) + "A_ControlDelay" + Chr(34) + " }, { name: " + Chr(34) + "A_CoordModeCaret" + Chr(34) + " }, { name: " + Chr(34) + "A_CoordModeMenu" + Chr(34) + " }, { name: " + Chr(34) + "A_CoordModeMouse" + Chr(34) + " }, { name: " + Chr(34) + "A_CoordModePixel" + Chr(34) + " }, { name: " + Chr(34) + "A_CoordModeToolTip" + Chr(34) + " }, { name: " + Chr(34) + "A_Cursor" + Chr(34) + " }, { name: " + Chr(34) + "A_DD" + Chr(34) + " }, { name: " + Chr(34) + "A_DDD" + Chr(34) + " }, { name: " + Chr(34) + "A_DDDD" + Chr(34) + " }, { name: " + Chr(34) + "A_DefaultGui" + Chr(34) + " }, { name: " + Chr(34) + "A_DefaultListView" + Chr(34) + " }, { name: " + Chr(34) + "A_DefaultMouseSpeed" + Chr(34) + " }, { name: " + Chr(34) + "A_DefaultTreeView" + Chr(34) + " }, { name: " + Chr(34) + "A_Desktop" + Chr(34) + " }, { name: " + Chr(34) + "A_DesktopCommon" + Chr(34) + " }, { name: " + Chr(34) + "A_DetectHiddenText" + Chr(34) + " }, { name: " + Chr(34) + "A_DetectHiddenWindows" + Chr(34) + " }, { name: " + Chr(34) + "A_EndChar" + Chr(34) + " }, { name: " + Chr(34) + "A_EventInfo" + Chr(34) + " }, { name: " + Chr(34) + "A_ExitReason" + Chr(34) + " }, { name: " + Chr(34) + "A_FileEncoding" + Chr(34) + " }, { name: " + Chr(34) + "A_FormatFloat" + Chr(34) + " }, { name: " + Chr(34) + "A_FormatInteger" + Chr(34) + " }, { name: " + Chr(34) + "A_Gui" + Chr(34) + " }, { name: " + Chr(34) + "A_GuiControl" + Chr(34) + " }, { name: " + Chr(34) + "A_GuiControlEvent" + Chr(34) + " }, { name: " + Chr(34) + "A_GuiEvent" + Chr(34) + " }, { name: " + Chr(34) + "A_GuiHeight" + Chr(34) + " }, { name: " + Chr(34) + "A_GuiWidth" + Chr(34) + " }, { name: " + Chr(34) + "A_GuiX" + Chr(34) + " }, { name: " + Chr(34) + "A_GuiY" + Chr(34) + " }, { name: " + Chr(34) + "A_Hour" + Chr(34) + " }, { name: " + Chr(34) + "A_IconFile" + Chr(34) + " }, { name: " + Chr(34) + "A_IconHidden" + Chr(34) + " }, { name: " + Chr(34) + "A_IconNumber" + Chr(34) + " }, { name: " + Chr(34) + "A_IconTip" + Chr(34) + " }, { name: " + Chr(34) + "A_Index" + Chr(34) + " }, { name: " + Chr(34) + "A_IPAddress1" + Chr(34) + " }, { name: " + Chr(34) + "A_IPAddress2" + Chr(34) + " }, { name: " + Chr(34) + "A_IPAddress3" + Chr(34) + " }, { name: " + Chr(34) + "A_IPAddress4" + Chr(34) + " }, { name: " + Chr(34) + "A_Is64bitOS" + Chr(34) + " }, { name: " + Chr(34) + "A_IsAdmin" + Chr(34) + " }, { name: " + Chr(34) + "A_IsCompiled" + Chr(34) + " }, { name: " + Chr(34) + "A_IsCritical" + Chr(34) + " }, { name: " + Chr(34) + "A_IsPaused" + Chr(34) + " }, { name: " + Chr(34) + "A_IsSuspended" + Chr(34) + " }, { name: " + Chr(34) + "A_IsUnicode" + Chr(34) + " }, { name: " + Chr(34) + "A_KeyDelay" + Chr(34) + " }, { name: " + Chr(34) + "A_KeyDelayPlay" + Chr(34) + " }, { name: " + Chr(34) + "A_KeyDuration" + Chr(34) + " }, { name: " + Chr(34) + "A_KeyDurationPlay" + Chr(34) + " }, { name: " + Chr(34) + "A_Language" + Chr(34) + " }, { name: " + Chr(34) + "A_LastKey" + Chr(34) + " }, { name: " + Chr(34) + "A_LastError" + Chr(34) + " }, { name: " + Chr(34) + "A_LineFile" + Chr(34) + " }, { name: " + Chr(34) + "A_LineNumber" + Chr(34) + " }, { name: " + Chr(34) + "A_ListLines" + Chr(34) + " }, { name: " + Chr(34) + "A_LoopField" + Chr(34) + " }, { name: " + Chr(34) + "A_LoopFileAttrib" + Chr(34) + " }, { name: " + Chr(34) + "A_LoopFileDir" + Chr(34) + " }, { name: " + Chr(34) + "A_LoopFileExt" + Chr(34) + " }, { name: " + Chr(34) + "A_LoopFileFullPath" + Chr(34) + " }, { name: " + Chr(34) + "A_LoopFileLongPath" + Chr(34) + " }, { name: " + Chr(34) + "A_LoopFileName" + Chr(34) + " }, { name: " + Chr(34) + "A_LoopFilePath" + Chr(34) + " }, { name: " + Chr(34) + "A_LoopFileShortName" + Chr(34) + " }, { name: " + Chr(34) + "A_LoopFileShortPath" + Chr(34) + " }, { name: " + Chr(34) + "A_LoopFileSize" + Chr(34) + " }, { name: " + Chr(34) + "A_LoopFileSizeKB" + Chr(34) + " }, { name: " + Chr(34) + "A_LoopFileSizeMB" + Chr(34) + " }, { name: " + Chr(34) + "A_LoopFileTimeAccessed" + Chr(34) + " }, { name: " + Chr(34) + "A_LoopFileTimeCreated" + Chr(34) + " }, { name: " + Chr(34) + "A_LoopFileTimeModified" + Chr(34) + " }, { name: " + Chr(34) + "A_LoopReadLine" + Chr(34) + " }, { name: " + Chr(34) + "A_LoopRegKey" + Chr(34) + " }, { name: " + Chr(34) + "A_LoopRegName" + Chr(34) + " }, { name: " + Chr(34) + "A_LoopRegSubKey" + Chr(34) + " }, { name: " + Chr(34) + "A_LoopRegTimeModified" + Chr(34) + " }, { name: " + Chr(34) + "A_LoopRegType" + Chr(34) + " }, { name: " + Chr(34) + "A_MDay" + Chr(34) + " }, { name: " + Chr(34) + "A_Min" + Chr(34) + " }, { name: " + Chr(34) + "A_MM" + Chr(34) + " }, { name: " + Chr(34) + "A_MMM" + Chr(34) + " }, { name: " + Chr(34) + "A_MMMM" + Chr(34) + " }, { name: " + Chr(34) + "A_Mon" + Chr(34) + " }, { name: " + Chr(34) + "A_MouseDelay" + Chr(34) + " }, { name: " + Chr(34) + "A_MouseDelayPlay" + Chr(34) + " }, { name: " + Chr(34) + "A_MSec" + Chr(34) + " }, { name: " + Chr(34) + "A_MyDocuments" + Chr(34) + " }, { name: " + Chr(34) + "A_Now" + Chr(34) + " }, { name: " + Chr(34) + "A_NowUTC" + Chr(34) + " }, { name: " + Chr(34) + "A_NumBatchLines" + Chr(34) + " }, { name: " + Chr(34) + "A_OSType" + Chr(34) + " }, { name: " + Chr(34) + "A_OSVersion" + Chr(34) + " }, { name: " + Chr(34) + "A_PriorHotkey" + Chr(34) + " }, { name: " + Chr(34) + "A_PriorKey" + Chr(34) + " }, { name: " + Chr(34) + "A_ProgramFiles" + Chr(34) + " }, { name: " + Chr(34) + "A_Programs" + Chr(34) + " }, { name: " + Chr(34) + "A_ProgramsCommon" + Chr(34) + " }, { name: " + Chr(34) + "A_PtrSize" + Chr(34) + " }, { name: " + Chr(34) + "A_RegView" + Chr(34) + " }, { name: " + Chr(34) + "A_ScreenDPI" + Chr(34) + " }, { name: " + Chr(34) + "A_ScreenHeight" + Chr(34) + " }, { name: " + Chr(34) + "A_ScreenWidth" + Chr(34) + " }, { name: " + Chr(34) + "A_ScriptDir" + Chr(34) + " }, { name: " + Chr(34) + "A_ScriptFullPath" + Chr(34) + " }, { name: " + Chr(34) + "A_ScriptHwnd" + Chr(34) + " }, { name: " + Chr(34) + "A_ScriptName" + Chr(34) + " }, { name: " + Chr(34) + "A_Sec" + Chr(34) + " }, { name: " + Chr(34) + "A_SendLevel" + Chr(34) + " }, { name: " + Chr(34) + "A_SendMode" + Chr(34) + " }, { name: " + Chr(34) + "A_Space" + Chr(34) + " }, { name: " + Chr(34) + "A_StartMenu" + Chr(34) + " }, { name: " + Chr(34) + "A_StartMenuCommon" + Chr(34) + " }, { name: " + Chr(34) + "A_Startup" + Chr(34) + " }, { name: " + Chr(34) + "A_StartupCommon" + Chr(34) + " }, { name: " + Chr(34) + "A_StoreCapsLockMode" + Chr(34) + " }, { name: " + Chr(34) + "A_StringCaseSense" + Chr(34) + " }, { name: " + Chr(34) + "A_Tab" + Chr(34) + " }, { name: " + Chr(34) + "A_Temp" + Chr(34) + " }, { name: " + Chr(34) + "A_ThisFunc" + Chr(34) + " }, { name: " + Chr(34) + "A_ThisHotkey" + Chr(34) + " }, { name: " + Chr(34) + "A_ThisLabel" + Chr(34) + " }, { name: " + Chr(34) + "A_ThisMenu" + Chr(34) + " }, { name: " + Chr(34) + "A_ThisMenuItem" + Chr(34) + " }, { name: " + Chr(34) + "A_ThisMenuItemPos" + Chr(34) + " }, { name: " + Chr(34) + "A_TickCount" + Chr(34) + " }, { name: " + Chr(34) + "A_TimeIdle" + Chr(34) + " }, { name: " + Chr(34) + "A_TimeIdleKeyboard" + Chr(34) + " }, { name: " + Chr(34) + "A_TimeIdleMouse" + Chr(34) + " }, { name: " + Chr(34) + "A_TimeIdlePhysical" + Chr(34) + " }, { name: " + Chr(34) + "A_TimeSincePriorHotkey" + Chr(34) + " }, { name: " + Chr(34) + "A_TimeSinceThisHotkey" + Chr(34) + " }, { name: " + Chr(34) + "A_TitleMatchMode" + Chr(34) + " }, { name: " + Chr(34) + "A_TitleMatchModeSpeed" + Chr(34) + " }, { name: " + Chr(34) + "A_UserName" + Chr(34) + " }, { name: " + Chr(34) + "A_WDay" + Chr(34) + " }, { name: " + Chr(34) + "A_WinDelay" + Chr(34) + " }, { name: " + Chr(34) + "A_WinDir" + Chr(34) + " }, { name: " + Chr(34) + "A_WorkingDir" + Chr(34) + " }, { name: " + Chr(34) + "A_YDay" + Chr(34) + " }, { name: " + Chr(34) + "A_Year" + Chr(34) + " }, { name: " + Chr(34) + "A_YWeek" + Chr(34) + " }, { name: " + Chr(34) + "A_YYYY" + Chr(34) + " }, { name: " + Chr(34) + "Clipboard" + Chr(34) + " }, { name: " + Chr(34) + "ClipboardAll" + Chr(34) + " }, { name: " + Chr(34) + "ComSpec" + Chr(34) + " }, { name: " + Chr(34) + "ErrorLevel" + Chr(34) + " }, { name: " + Chr(34) + "ProgramFiles" + Chr(34) + " }, { name: " + Chr(34) + "this" + Chr(34) + " }, { name: " + Chr(34) + "Abs" + Chr(34) + " }, { name: " + Chr(34) + "ACos" + Chr(34) + " }, { name: " + Chr(34) + "Array" + Chr(34) + " }, { name: " + Chr(34) + "Asc" + Chr(34) + " }, { name: " + Chr(34) + "ASin" + Chr(34) + " }, { name: " + Chr(34) + "ATan" + Chr(34) + " }, { name: " + Chr(34) + "Ceil" + Chr(34) + " }, { name: " + Chr(34) + "Chr" + Chr(34) + " }, { name: " + Chr(34) + "ComObjActive" + Chr(34) + " }, { name: " + Chr(34) + "ComObjArray" + Chr(34) + " }, { name: " + Chr(34) + "ComObjConnect" + Chr(34) + " }, { name: " + Chr(34) + "ComObjCreate" + Chr(34) + " }, { name: " + Chr(34) + "ComObject" + Chr(34) + " }, { name: " + Chr(34) + "ComObjError" + Chr(34) + " }, { name: " + Chr(34) + "ComObjFlags" + Chr(34) + " }, { name: " + Chr(34) + "ComObjGet" + Chr(34) + " }, { name: " + Chr(34) + "ComObjQuery" + Chr(34) + " }, { name: " + Chr(34) + "ComObjType" + Chr(34) + " }, { name: " + Chr(34) + "ComObjValue" + Chr(34) + " }, { name: " + Chr(34) + "Cos" + Chr(34) + " }, { name: " + Chr(34) + "DllCall" + Chr(34) + " }, { name: " + Chr(34) + "Exception" + Chr(34) + " }, { name: " + Chr(34) + "Exp" + Chr(34) + " }, { name: " + Chr(34) + "FileExist" + Chr(34) + " }, { name: " + Chr(34) + "FileOpen" + Chr(34) + " }, { name: " + Chr(34) + "Floor" + Chr(34) + " }, { name: " + Chr(34) + "Format" + Chr(34) + " }, { name: " + Chr(34) + "Func" + Chr(34) + " }, { name: " + Chr(34) + "getDataFromEndpoint" + Chr(34) + " }, { name: " + Chr(34) + "GetKeyName" + Chr(34) + " }, { name: " + Chr(34) + "GetKeySC" + Chr(34) + " }, { name: " + Chr(34) + "GetKeyState" + Chr(34) + " }, { name: " + Chr(34) + "GetKeyVK" + Chr(34) + " }, { name: " + Chr(34) + "Hotstring" + Chr(34) + " }, { name: " + Chr(34) + "Icon" + Chr(34) + " }, { name: " + Chr(34) + "IL_Add" + Chr(34) + " }, { name: " + Chr(34) + "IL_Create" + Chr(34) + " }, { name: " + Chr(34) + "IL_Destroy" + Chr(34) + " }, { name: " + Chr(34) + "InputHook" + Chr(34) + " }, { name: " + Chr(34) + "InStr" + Chr(34) + " }, { name: " + Chr(34) + "IsByRef" + Chr(34) + " }, { name: " + Chr(34) + "isConnectedToBackend" + Chr(34) + " }, { name: " + Chr(34) + "IsFunc" + Chr(34) + " }, { name: " + Chr(34) + "IsLabel" + Chr(34) + " }, { name: " + Chr(34) + "isMobileDevice" + Chr(34) + " }, { name: " + Chr(34) + "IsObject" + Chr(34) + " }, { name: " + Chr(34) + "Ln" + Chr(34) + " }, { name: " + Chr(34) + "LoadPicture" + Chr(34) + " }, { name: " + Chr(34) + "Log" + Chr(34) + " }, { name: " + Chr(34) + "LTrim" + Chr(34) + " }, { name: " + Chr(34) + "LV_Add" + Chr(34) + " }, { name: " + Chr(34) + "LV_Delete" + Chr(34) + " }, { name: " + Chr(34) + "LV_DeleteCol" + Chr(34) + " }, { name: " + Chr(34) + "LV_GetCount" + Chr(34) + " }, { name: " + Chr(34) + "LV_GetNext" + Chr(34) + " }, { name: " + Chr(34) + "LV_GetText" + Chr(34) + " }, { name: " + Chr(34) + "LV_Insert" + Chr(34) + " }, { name: " + Chr(34) + "LV_InsertCol" + Chr(34) + " }, { name: " + Chr(34) + "LV_Modify" + Chr(34) + " }, { name: " + Chr(34) + "LV_ModifyCol" + Chr(34) + " }, { name: " + Chr(34) + "LV_SetImageList" + Chr(34) + " }, { name: " + Chr(34) + "Max" + Chr(34) + " }, { name: " + Chr(34) + "MenuGetHandle" + Chr(34) + " }, { name: " + Chr(34) + "MenuGetName" + Chr(34) + " }, { name: " + Chr(34) + "Min" + Chr(34) + " }, { name: " + Chr(34) + "Mod" + Chr(34) + " }, { name: " + Chr(34) + "NumGet" + Chr(34) + " }, { name: " + Chr(34) + "NumPut" + Chr(34) + " }, { name: " + Chr(34) + "ObjAddRef" + Chr(34) + " }, { name: " + Chr(34) + "ObjBindMethod" + Chr(34) + " }, { name: " + Chr(34) + "ObjClone" + Chr(34) + " }, { name: " + Chr(34) + "ObjCount" + Chr(34) + " }, { name: " + Chr(34) + "ObjDelete" + Chr(34) + " }, { name: " + Chr(34) + "Object" + Chr(34) + " }, { name: " + Chr(34) + "ObjGetAddress" + Chr(34) + " }, { name: " + Chr(34) + "ObjGetBase" + Chr(34) + " }, { name: " + Chr(34) + "ObjGetCapacity" + Chr(34) + " }, { name: " + Chr(34) + "ObjHasKey" + Chr(34) + " }, { name: " + Chr(34) + "ObjInsert" + Chr(34) + " }, { name: " + Chr(34) + "ObjInsertAt" + Chr(34) + " }, { name: " + Chr(34) + "ObjLength" + Chr(34) + " }, { name: " + Chr(34) + "ObjMaxIndex" + Chr(34) + " }, { name: " + Chr(34) + "ObjMinIndex" + Chr(34) + " }, { name: " + Chr(34) + "ObjNewEnum" + Chr(34) + " }, { name: " + Chr(34) + "ObjPop" + Chr(34) + " }, { name: " + Chr(34) + "ObjPush" + Chr(34) + " }, { name: " + Chr(34) + "ObjRawGet" + Chr(34) + " }, { name: " + Chr(34) + "ObjRawSet" + Chr(34) + " }, { name: " + Chr(34) + "ObjRelease" + Chr(34) + " }, { name: " + Chr(34) + "ObjRemove" + Chr(34) + " }, { name: " + Chr(34) + "ObjRemoveAt" + Chr(34) + " }, { name: " + Chr(34) + "ObjSetBase" + Chr(34) + " }, { name: " + Chr(34) + "ObjSetCapacity" + Chr(34) + " }, { name: " + Chr(34) + "OnClipboardChange" + Chr(34) + " }, { name: " + Chr(34) + "OnError" + Chr(34) + " }, { name: " + Chr(34) + "OnExit" + Chr(34) + " }, { name: " + Chr(34) + "OnMessage" + Chr(34) + " }, { name: " + Chr(34) + "Ord" + Chr(34) + " }, { name: " + Chr(34) + "RegExMatch" + Chr(34) + " }, { name: " + Chr(34) + "RegExReplace" + Chr(34) + " }, { name: " + Chr(34) + "RegisterCallback" + Chr(34) + " }, { name: " + Chr(34) + "Round" + Chr(34) + " }, { name: " + Chr(34) + "RTrim" + Chr(34) + " }, { name: " + Chr(34) + "StoreLocally" + Chr(34) + " }, { name: " + Chr(34) + "SB_SetIcon" + Chr(34) + " }, { name: " + Chr(34) + "SB_SetParts" + Chr(34) + " }, { name: " + Chr(34) + "SB_SetText" + Chr(34) + " }, { name: " + Chr(34) + "Sin" + Chr(34) + " }, { name: " + Chr(34) + "Sqrt" + Chr(34) + " }, { name: " + Chr(34) + "StrGet" + Chr(34) + " }, { name: " + Chr(34) + "StrLen" + Chr(34) + " }, { name: " + Chr(34) + "StrLower" + Chr(34) + " }, { name: " + Chr(34) + "StrPut" + Chr(34) + " }, { name: " + Chr(34) + "StrReplace" + Chr(34) + " }, { name: " + Chr(34) + "StrSplit" + Chr(34) + " }, { name: " + Chr(34) + "SubStr" + Chr(34) + " }, { name: " + Chr(34) + "Tan" + Chr(34) + " }, { name: " + Chr(34) + "Title" + Chr(34) + " }, { name: " + Chr(34) + "Trim" + Chr(34) + " }, { name: " + Chr(34) + "TV_Add" + Chr(34) + " }, { name: " + Chr(34) + "TV_Delete" + Chr(34) + " }, { name: " + Chr(34) + "TV_Get" + Chr(34) + " }, { name: " + Chr(34) + "TV_GetChild" + Chr(34) + " }, { name: " + Chr(34) + "TV_GetCount" + Chr(34) + " }, { name: " + Chr(34) + "TV_GetNext" + Chr(34) + " }, { name: " + Chr(34) + "TV_GetParent" + Chr(34) + " }, { name: " + Chr(34) + "TV_GetPrev" + Chr(34) + " }, { name: " + Chr(34) + "TV_GetSelection" + Chr(34) + " }, { name: " + Chr(34) + "TV_GetText" + Chr(34) + " }, { name: " + Chr(34) + "TV_Modify" + Chr(34) + " }, { name: " + Chr(34) + "TV_SetImageList" + Chr(34) + " }, { name: " + Chr(34) + "VarSetCapacity" + Chr(34) + " }, { name: " + Chr(34) + "WinActive" + Chr(34) + " }, { name: " + Chr(34) + "WinExist" + Chr(34) + " }, { name: " + Chr(34) + "AutoTrim" + Chr(34) + " }, { name: " + Chr(34) + "BlockInput" + Chr(34) + " }, { name: " + Chr(34) + "Click" + Chr(34) + " }, { name: " + Chr(34) + "ClipWait" + Chr(34) + " }, { name: " + Chr(34) + "Control" + Chr(34) + " }, { name: " + Chr(34) + "ControlClick" + Chr(34) + " }, { name: " + Chr(34) + "ControlFocus" + Chr(34) + " }, { name: " + Chr(34) + "ControlGet" + Chr(34) + " }, { name: " + Chr(34) + "ControlGetFocus" + Chr(34) + " }, { name: " + Chr(34) + "ControlGetPos" + Chr(34) + " }, { name: " + Chr(34) + "ControlGetText" + Chr(34) + " }, { name: " + Chr(34) + "ControlMove" + Chr(34) + " }, { name: " + Chr(34) + "ControlSend" + Chr(34) + " }, { name: " + Chr(34) + "ControlSendRaw" + Chr(34) + " }, { name: " + Chr(34) + "ControlSetText" + Chr(34) + " }, { name: " + Chr(34) + "CoordMode" + Chr(34) + " }, { name: " + Chr(34) + "Critical" + Chr(34) + " }, { name: " + Chr(34) + "DetectHiddenText" + Chr(34) + " }, { name: " + Chr(34) + "DetectHiddenWindows" + Chr(34) + " }, { name: " + Chr(34) + "Drive" + Chr(34) + " }, { name: " + Chr(34) + "DriveGet" + Chr(34) + " }, { name: " + Chr(34) + "DriveSpaceFree" + Chr(34) + " }, { name: " + Chr(34) + "Edit" + Chr(34) + " }, { name: " + Chr(34) + "Endpoint" + Chr(34) + " }, { name: " + Chr(34) + "EnvAdd" + Chr(34) + " }, { name: " + Chr(34) + "EnvDiv" + Chr(34) + " }, { name: " + Chr(34) + "EnvGet" + Chr(34) + " }, { name: " + Chr(34) + "EnvMult" + Chr(34) + " }, { name: " + Chr(34) + "EnvSet" + Chr(34) + " }, { name: " + Chr(34) + "EnvSub" + Chr(34) + " }, { name: " + Chr(34) + "EnvUpdate" + Chr(34) + " }, { name: " + Chr(34) + "Exit" + Chr(34) + " }, { name: " + Chr(34) + "ExitApp" + Chr(34) + " }, { name: " + Chr(34) + "FileAppend" + Chr(34) + " }, { name: " + Chr(34) + "FileCopy" + Chr(34) + " }, { name: " + Chr(34) + "FileCopyDir" + Chr(34) + " }, { name: " + Chr(34) + "FileCreateDir" + Chr(34) + " }, { name: " + Chr(34) + "FileCreateShortcut" + Chr(34) + " }, { name: " + Chr(34) + "FileDelete" + Chr(34) + " }, { name: " + Chr(34) + "FileEncoding" + Chr(34) + " }, { name: " + Chr(34) + "FileGetAttrib" + Chr(34) + " }, { name: " + Chr(34) + "FileGetShortcut" + Chr(34) + " }, { name: " + Chr(34) + "FileGetSize" + Chr(34) + " }, { name: " + Chr(34) + "FileGetTime" + Chr(34) + " }, { name: " + Chr(34) + "FileGetVersion" + Chr(34) + " }, { name: " + Chr(34) + "FileInstall" + Chr(34) + " }, { name: " + Chr(34) + "FileMove" + Chr(34) + " }, { name: " + Chr(34) + "FileMoveDir" + Chr(34) + " }, { name: " + Chr(34) + "FileRead" + Chr(34) + " }, { name: " + Chr(34) + "FileReadLine" + Chr(34) + " }, { name: " + Chr(34) + "FileRecycle" + Chr(34) + " }, { name: " + Chr(34) + "FileRecycleEmpty" + Chr(34) + " }, { name: " + Chr(34) + "FileRemoveDir" + Chr(34) + " }, { name: " + Chr(34) + "FileSelectFile" + Chr(34) + " }, { name: " + Chr(34) + "FileSelectFolder" + Chr(34) + " }, { name: " + Chr(34) + "FileSetAttrib" + Chr(34) + " }, { name: " + Chr(34) + "FileSetTime" + Chr(34) + " }, { name: " + Chr(34) + "FormatTime" + Chr(34) + " }, { name: " + Chr(34) + "getDataFromAPI" + Chr(34) + " }, { name: " + Chr(34) + "getDataFromJSON" + Chr(34) + " }, { name: " + Chr(34) + "GetKeyState" + Chr(34) + " }, { name: " + Chr(34) + "getUrlParams" + Chr(34) + " }, { name: " + Chr(34) + "GroupActivate" + Chr(34) + " }, { name: " + Chr(34) + "GroupAdd" + Chr(34) + " }, { name: " + Chr(34) + "GroupClose" + Chr(34) + " }, { name: " + Chr(34) + "GroupDeactivate" + Chr(34) + " }, { name: " + Chr(34) + "Gui" + Chr(34) + " }, { name: " + Chr(34) + "GuiControl" + Chr(34) + " }, { name: " + Chr(34) + "GuiControlGet" + Chr(34) + " }, { name: " + Chr(34) + "Hotkey" + Chr(34) + " }, { name: " + Chr(34) + "ImageSearch" + Chr(34) + " }, { name: " + Chr(34) + "IniDelete" + Chr(34) + " }, { name: " + Chr(34) + "IniRead" + Chr(34) + " }, { name: " + Chr(34) + "IniWrite" + Chr(34) + " }, { name: " + Chr(34) + "Input" + Chr(34) + " }, { name: " + Chr(34) + "InputBox" + Chr(34) + " }, { name: " + Chr(34) + "KeyHistory" + Chr(34) + " }, { name: " + Chr(34) + "KeyWait" + Chr(34) + " }, { name: " + Chr(34) + "ListHotkeys" + Chr(34) + " }, { name: " + Chr(34) + "ListLines" + Chr(34) + " }, { name: " + Chr(34) + "ListVars" + Chr(34) + " }, { name: " + Chr(34) + "Menu" + Chr(34) + " }, { name: " + Chr(34) + "MouseClick" + Chr(34) + " }, { name: " + Chr(34) + "MouseClickDrag" + Chr(34) + " }, { name: " + Chr(34) + "MouseGetPos" + Chr(34) + " }, { name: " + Chr(34) + "MouseMove" + Chr(34) + " }, { name: " + Chr(34) + "MsgBox" + Chr(34) + " }, { name: " + Chr(34) + "OnExit" + Chr(34) + " }, { name: " + Chr(34) + "OutputDebug" + Chr(34) + " }, { name: " + Chr(34) + "Pause" + Chr(34) + " }, { name: " + Chr(34) + "PixelGetColor" + Chr(34) + " }, { name: " + Chr(34) + "PixelSearch" + Chr(34) + " }, { name: " + Chr(34) + "PostMessage" + Chr(34) + " }, { name: " + Chr(34) + "Process" + Chr(34) + " }, { name: " + Chr(34) + "Progress" + Chr(34) + " }, { name: " + Chr(34) + "Random" + Chr(34) + " }, { name: " + Chr(34) + "RegDelete" + Chr(34) + " }, { name: " + Chr(34) + "RegRead" + Chr(34) + " }, { name: " + Chr(34) + "RegWrite" + Chr(34) + " }, { name: " + Chr(34) + "Reload" + Chr(34) + " }, { name: " + Chr(34) + "reloadWithParams" + Chr(34) + " }, { name: " + Chr(34) + "Run" + Chr(34) + " }, { name: " + Chr(34) + "RunAs" + Chr(34) + " }, { name: " + Chr(34) + "RunWait" + Chr(34) + " }, { name: " + Chr(34) + "Send" + Chr(34) + " }, { name: " + Chr(34) + "SendEvent" + Chr(34) + " }, { name: " + Chr(34) + "SendInput" + Chr(34) + " }, { name: " + Chr(34) + "SendLevel" + Chr(34) + " }, { name: " + Chr(34) + "SendMessage" + Chr(34) + " }, { name: " + Chr(34) + "SendMode" + Chr(34) + " }, { name: " + Chr(34) + "SendPlay" + Chr(34) + " }, { name: " + Chr(34) + "SendRaw" + Chr(34) + " }, { name: " + Chr(34) + "SetBatchLines" + Chr(34) + " }, { name: " + Chr(34) + "SetCapsLockState" + Chr(34) + " }, { name: " + Chr(34) + "SetControlDelay" + Chr(34) + " }, { name: " + Chr(34) + "SetDefaultMouseSpeed" + Chr(34) + " }, { name: " + Chr(34) + "SetEnv" + Chr(34) + " }, { name: " + Chr(34) + "SetFormat" + Chr(34) + " }, { name: " + Chr(34) + "SetKeyDelay" + Chr(34) + " }, { name: " + Chr(34) + "SetMouseDelay" + Chr(34) + " }, { name: " + Chr(34) + "SetNumLockState" + Chr(34) + " }, { name: " + Chr(34) + "SetRegView" + Chr(34) + " }, { name: " + Chr(34) + "SetScrollLockState" + Chr(34) + " }, { name: " + Chr(34) + "SetStoreCapsLockMode" + Chr(34) + " }, { name: " + Chr(34) + "SetTimer" + Chr(34) + " }, { name: " + Chr(34) + "SetTitleMatchMode" + Chr(34) + " }, { name: " + Chr(34) + "SetWinDelay" + Chr(34) + " }, { name: " + Chr(34) + "SetWorkingDir" + Chr(34) + " }, { name: " + Chr(34) + "Shutdown" + Chr(34) + " }, { name: " + Chr(34) + "Sleep" + Chr(34) + " }, { name: " + Chr(34) + "Sort" + Chr(34) + " }, { name: " + Chr(34) + "SoundBeep" + Chr(34) + " }, { name: " + Chr(34) + "SoundGet" + Chr(34) + " }, { name: " + Chr(34) + "SoundGetWaveVolume" + Chr(34) + " }, { name: " + Chr(34) + "SoundPlay" + Chr(34) + " }, { name: " + Chr(34) + "SoundSet" + Chr(34) + " }, { name: " + Chr(34) + "SoundSetWaveVolume" + Chr(34) + " }, { name: " + Chr(34) + "SplashImage" + Chr(34) + " }, { name: " + Chr(34) + "SplashTextOff" + Chr(34) + " }, { name: " + Chr(34) + "SplashTextOn" + Chr(34) + " }, { name: " + Chr(34) + "SplitPath" + Chr(34) + " }, { name: " + Chr(34) + "StatusBarGetText" + Chr(34) + " }, { name: " + Chr(34) + "StatusBarWait" + Chr(34) + " }, { name: " + Chr(34) + "StringCaseSense" + Chr(34) + " }, { name: " + Chr(34) + "StringGetPos" + Chr(34) + " }, { name: " + Chr(34) + "StringLeft" + Chr(34) + " }, { name: " + Chr(34) + "StringLen" + Chr(34) + " }, { name: " + Chr(34) + "StringLower" + Chr(34) + " }, { name: " + Chr(34) + "StringMid" + Chr(34) + " }, { name: " + Chr(34) + "StringReplace" + Chr(34) + " }, { name: " + Chr(34) + "StringRight" + Chr(34) + " }, { name: " + Chr(34) + "StringSplit" + Chr(34) + " }, { name: " + Chr(34) + "StringTrimLeft" + Chr(34) + " }, { name: " + Chr(34) + "StringTrimRight" + Chr(34) + " }, { name: " + Chr(34) + "StringUpper" + Chr(34) + " }, { name: " + Chr(34) + "Suspend" + Chr(34) + " }, { name: " + Chr(34) + "SysGet" + Chr(34) + " }, { name: " + Chr(34) + "Thread" + Chr(34) + " }, { name: " + Chr(34) + "ToolTip" + Chr(34) + " }, { name: " + Chr(34) + "Transform" + Chr(34) + " }, { name: " + Chr(34) + "TrayTip" + Chr(34) + " }, { name: " + Chr(34) + "URLDownloadToFile" + Chr(34) + " }, { name: " + Chr(34) + "WinActivate" + Chr(34) + " }, { name: " + Chr(34) + "WinActivateBottom" + Chr(34) + " }, { name: " + Chr(34) + "WinClose" + Chr(34) + " }, { name: " + Chr(34) + "WinGet" + Chr(34) + " }, { name: " + Chr(34) + "WinGetActiveStats" + Chr(34) + " }, { name: " + Chr(34) + "WinGetActiveTitle" + Chr(34) + " }, { name: " + Chr(34) + "WinGetClass" + Chr(34) + " }, { name: " + Chr(34) + "WinGetPos" + Chr(34) + " }, { name: " + Chr(34) + "WinGetText" + Chr(34) + " }, { name: " + Chr(34) + "WinGetTitle" + Chr(34) + " }, { name: " + Chr(34) + "WinHide" + Chr(34) + " }, { name: " + Chr(34) + "WinKill" + Chr(34) + " }, { name: " + Chr(34) + "WinMaximize" + Chr(34) + " }, { name: " + Chr(34) + "WinMenuSelectItem" + Chr(34) + " }, { name: " + Chr(34) + "WinMinimize" + Chr(34) + " }, { name: " + Chr(34) + "WinMinimizeAll" + Chr(34) + " }, { name: " + Chr(34) + "WinMinimizeAllUndo" + Chr(34) + " }, { name: " + Chr(34) + "WinMove" + Chr(34) + " }, { name: " + Chr(34) + "WinRestore" + Chr(34) + " }, { name: " + Chr(34) + "WinSet" + Chr(34) + " }, { name: " + Chr(34) + "WinSetTitle" + Chr(34) + " }, { name: " + Chr(34) + "WinShow" + Chr(34) + " }, { name: " + Chr(34) + "WinWait" + Chr(34) + " }, { name: " + Chr(34) + "WinWaitActive" + Chr(34) + " }, { name: " + Chr(34) + "WinWaitClose" + Chr(34) + " }, { name: " + Chr(34) + "WinWaitNotActive" + Chr(34) + " }];\n\n"
    variables['addFuncIfWeUseIt_AddIDE2'] = "\n        // Create a new div element for the editor\n        var editorDiv = document.createElement(" + Chr(34) + "div" + Chr(34) + ");\n        editorDiv.id = id;\n        editorDiv.style.position = " + Chr(34) + "absolute" + Chr(34) + ";\n        editorDiv.style.left = xPos + " + Chr(34) + "px" + Chr(34) + ";\n        editorDiv.style.top = yPos + " + Chr(34) + "px" + Chr(34) + ";\n        editorDiv.style.width = w + " + Chr(34) + "px" + Chr(34) + ";\n        editorDiv.style.height = h + " + Chr(34) + "px" + Chr(34) + ";\n        editorDiv.style.fontSize = font + " + Chr(34) + "px" + Chr(34) + ";\n\n        // Append the editor div to the parent\n        parent.appendChild(editorDiv);\n\n        // Create a new editor instance inside the div\n        var editor = ace.edit(id);\n        editor.setTheme(" + Chr(34) + "ace/theme/monokai" + Chr(34) + ");\n        editor.session.setMode(" + Chr(34) + "ace/mode/" + Chr(34) + " + langName);\n        // editor.setOptions({\n        //   enableBasicAutocompletion: true,\n        //   enableLiveAutocompletion: true,\n        //   behavioursEnabled: false, // Disable auto-pairing of characters\n        // });\n\n        editor.setOptions({\n          enableBasicAutocompletion: false,\n          enableSnippets: false,\n          enableLiveAutocompletion: true,\n          behavioursEnabled: false,\n          showPrintMargin: false,\n        });\n\n        langTools.setCompleters([]);\n        langTools.addCompleter(Completer);\n\n        // Set initial text if provided\n        if (initialText) {\n          editor.setValue(initialText, -1); // -1 to move cursor to the beginning\n        }\n\n        // Apply CSS styles for the editor\n        var css = " + Chr(96) + "\n          body {\n            font-family: " + Chr(34) + "Segoe UI" + Chr(34) + ", Tahoma, Geneva, Verdana, sans-serif;\n            background-color: #1a1818;\n            color: #ffffff;\n            display: flex;\n            flex-direction: column;\n            align-items: center;\n            height: 100vh;\n            margin: 0;\n          }\n\n          .controls {\n            display: flex;\n            justify-content: center;\n            gap: 1rem;\n            margin: 1rem;\n            padding: 1rem;\n          }\n\n          button {\n            padding: 0.7rem;\n            font-size: 1.2em;\n            cursor: pointer;\n            background-color: #bababa;\n            color: #000000;\n            border: none;\n            border-radius: 0.2rem;\n            transition: background-color 0.3s;\n          }\n\n          button:hover {\n            background-color: #27ae60;\n          }\n\n          #${id} {\n            width: ${w}px;\n            height: ${h}px;\n            font-size: 1em;\n            border-radius: 0.3rem;\n          }\n\n          #result {\n            margin-top: 1rem;\n            font-size: 1.2em;\n            color: #999c9a;\n            font-weight: bold;\n            text-align: center;\n          }\n\n          .ace-monokai .ace_marker-layer .ace_active-line {\n            background-color: #103010 !important;\n          }\n\n          .ace-monokai {\n            background-color: #121212 !important;\n            color: #f8f8f2;\n          }\n\n          .ace-monokai .ace_gutter {\n            background: #204020 !important;\n            color: #cbcdc3 !important;\n          }\n\n          .ace-monokai .ace_gutter-active-line {\n            background-color: transparent !important;\n          }\n\n          .ace-monokai .ace_entity.ace_name.ace_tag,\n          .ace-monokai .ace_keyword,\n          .ace-monokai .ace_meta.ace_tag,\n          .ace-monokai .ace_storage {\n            color: #40a0e0 !important;\n          }\n\n          .ace-monokai .ace_entity.ace_name.ace_function,\n          .ace-monokai .ace_entity.ace_other,\n          .ace-monokai .ace_entity.ace_other.ace_attribute-name,\n          .ace-monokai .ace_variable {\n            color: #ff80df !important;\n          }\n\n          .ace-monokai .ace_comment {\n            color: #40d080 !important;\n          }\n\n          .ace-monokai .ace_string {\n            color: #ffa0a0 !important;\n          }\n\n          .ace-monokai .ace_punctuation,\n          .ace-monokai .ace_punctuation.ace _tag {\n            color: #ffa0a0 !important;\n          }\n\n          *::-webkit-scrollbar {\n            width: 1em;\n          }\n\n          *::-webkit-scrollbar-track {\n            box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);\n          }\n\n          *::-webkit-scrollbar-thumb {\n            background-color: darkgrey;\n            outline: 1px solid slategrey;\n          }\n        " + Chr(96) + ";\n\n        var style = document.createElement(" + Chr(34) + "style" + Chr(34) + ");\n        style.type = " + Chr(34) + "text/css" + Chr(34) + ";\n        if (style.styleSheet) {\n          style.styleSheet.cssText = css;\n        } else {\n          style.appendChild(document.createTextNode(css));\n        }\n        document.head.appendChild(style);\n\n        // Bind change event listener to the editor\n        editor.getSession().on(" + Chr(34) + "change" + Chr(34) + ", function () {\n          var code = editor.getValue();\n          if (typeof onChangeFunc === " + Chr(34) + "function" + Chr(34) + ") {\n            onChangeFunc(code);\n          }\n        });\n      }\n"
    variables['addFuncIfWeUseIt_StrSplit'] = "\nfunction StrSplit(inputStr, delimiter, num) {\n    // Check if inputStr is a valid string\n    if (typeof inputStr !== 'string') {\n        return ''; // Return empty string for invalid input\n    }\n\n    // Split the input string based on the delimiter\n    const parts = inputStr.split(delimiter);\n\n    // Return the part specified by the num parameter (1-based index)\n    if (num > 0 && num <= parts.length) {\n        return parts[num - 1]; // Return the specified part (0-based index)\n    } else {\n        return ''; // Return an empty string if num is out of range\n    }\n}\n"
    variables['addFuncIfWeUseIt_RegExReplace'] = "\n      // Function to simulate AutoHotkey's RegExReplace in JavaScript\n      function RegExReplace(inputStr, regexPattern, replacement) {\n          // Create a regular expression object using the provided pattern\n          const regex = new RegExp(regexPattern, 'g'); // 'g' flag for global match\n\n          // Use the replace() method to perform the regex replacement\n          const resultStr = inputStr.replace(regex, replacement);\n\n          // Return the modified string\n          return resultStr;\n      }\n"
    variables['addFuncIfWeUseIt_runPyCode'] = "\n        async function runPyCode(code) {\n            return new Promise((resolve, reject) => {\n                const checkReady = () => {\n                    if (window.runPythonCode) {\n                        resolve(window.runPythonCode(code));\n                    } else {\n                        setTimeout(checkReady, 100);\n                    }\n                };\n                checkReady();\n            });\n        }\n"
    variables['addFuncIfWeUseIt_LoopParseFunc'] = "\nfunction LoopParseFunc(varString, delimiter1=" + Chr(34) + "" + Chr(34) + ", delimiter2=" + Chr(34) + "" + Chr(34) + ") {\n    let items;\n    if (!delimiter1 && !delimiter2) {\n        // If no delimiters are provided, return an array of characters\n        items = [...varString];\n    } else {\n        // Construct the regular expression pattern for splitting the string\n        let pattern = new RegExp('[' + delimiter1.replace(/[.*+?^${}()|[" + Chr(92) + "]" + Chr(92) + "" + Chr(92) + "]/g, '" + Chr(92) + "" + Chr(92) + "$&') + delimiter2.replace(/[.*+?^${}()|[" + Chr(92) + "]" + Chr(92) + "" + Chr(92) + "]/g, '" + Chr(92) + "" + Chr(92) + "$&') + ']+');\n        // Split the string using the constructed pattern\n        items = varString.split(pattern);\n    }\n    return items;\n}\n"
    variables['addFuncIfWeUseIt_runHTML'] = "\nfunction runHTML(parent, id, scale, leftPos, topPos, width, height, HTMLcode) {\n\n  // Concatenate parent.id with id\n  id = parent.id + id;\n\n  // Check if an iframe with the same id already exists and remove it\n  const existingIframe = document.getElementById(id);\n  if (existingIframe) {\n    existingIframe.remove();\n  }\n\n  // Calculate the scale based on the actual width and height of the iframe\n  const scaleX = (width / (window.innerWidth / scale));\n  const scaleY = (height / (window.innerHeight / scale));\n  const scaleFactor = Math.min(scaleX, scaleY);\n\n        // Calculate the scaled width and height to maintain aspect ratio\n        const scaledWidth = Math.floor((window.innerWidth / scale) * scaleFactor);\n        const scaledHeight = Math.floor((window.innerHeight / scale) * scaleFactor);\n\n        // Calculate offsets to center the content\n        const offsetX = Math.floor((width - scaledWidth) / 2);\n        const offsetY = Math.floor((height - scaledHeight) / 2);\n\n        // Create iframe element\n        let iframeElement = document.createElement(" + Chr(34) + "iframe" + Chr(34) + ");\n\n        // Set attributes\n        iframeElement.id = id;\n        iframeElement.style.position = " + Chr(34) + "absolute" + Chr(34) + ";\n        iframeElement.style.left = leftPos + offsetX + " + Chr(34) + "px" + Chr(34) + ";\n        iframeElement.style.top = topPos + offsetY + " + Chr(34) + "px" + Chr(34) + ";\n        iframeElement.style.width = (window.innerWidth / scale) + " + Chr(34) + "px" + Chr(34) + "; // Set the iframe's viewport width\n        iframeElement.style.height = (window.innerHeight / scale) + " + Chr(34) + "px" + Chr(34) + "; // Set the iframe's viewport height\n        iframeElement.style.transformOrigin = " + Chr(34) + "top left" + Chr(34) + ";\n        iframeElement.style.transform = " + Chr(96) + "scale(${scaleFactor})" + Chr(96) + ";\n\n        // Set srcdoc attribute to load content\n        iframeElement.srcdoc = HTMLcode;\n\n        // Append iframe to parent element\n        parent.appendChild(iframeElement);\n      }\n"
    variables['addFuncIfWeUseIt_SortLikeAHK'] = "\nfunction SortLikeAHK(varName, options = " + Chr(34) + "" + Chr(34) + ") {\n    let delimiter = '" + Chr(92) + "n'; // Default delimiter\n    let delimiterIndex = options.indexOf('D');\n\n    if (delimiterIndex !== -1) {\n        let delimiterChar = options[delimiterIndex + 1];\n        delimiter = delimiterChar === '' ? ',' : delimiterChar;\n    }\n\n    let items = varName.split(new RegExp(delimiter === ',' ? ',' : '" + Chr(92) + "" + Chr(92) + "' + delimiter));\n\n    // Remove empty items and trim whitespace\n    items = items.filter(item => item.trim() !== '');\n\n    // Apply sorting based on options\n    if (options.includes('N')) {\n        // Numeric sort\n        items.sort((a, b) => parseInt(a, 10) - parseInt(b, 10));\n    } else if (options.includes('Random')) {\n        // Random sort\n        for (let i = items.length - 1; i > 0; i--) {\n            const j = Math.floor(Math.random() * (i + 1));\n            [items[i], items[j]] = [items[j], items[i]];\n        }\n    } else {\n        // Default alphabetical sort\n        items.sort((a, b) => {\n            const keyA = options.includes('C') ? a : a.toLowerCase();\n            const keyB = options.includes('C') ? b : b.toLowerCase();\n            if (keyA < keyB) return -1;\n            if (keyA > keyB) return 1;\n            return 0;\n        });\n    }\n\n    // Reverse if 'R' option is present\n    if (options.includes('R')) {\n        items.reverse();\n    }\n\n    // Remove duplicates if 'U' option is present\n    if (options.includes('U')) {\n        const seen = new Map();\n        items = items.filter(item => {\n            const key = options.includes('C') ? item : item.toLowerCase();\n            if (!seen.has(key)) {\n                seen.set(key, item);\n                return true;\n            }\n            return false;\n        });\n    }\n\n    // Join the sorted items back into a string\n    const sortedVar = items.join(delimiter === ',' ? ',' : '" + Chr(92) + "n');\n\n    return sortedVar;\n}\n"
    variables['allFuncThatWeNeedToUse'] = ""
    variables['ifWeUseAddIDEWeWillAddTheLinkInTheHTMLfile'] = ""
    variables['ifWeUseMsgboxWeWillAddTheLinkInTheHTMLfile'] = ""
    if (InStr(variables['jsCode'] , "showCustomMessageBox("))or(InStr(variables['jsCode'] , "showCustomMessageBox (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_showCustomMessageBox'] + "\n"
        variables['ifWeUseMsgboxWeWillAddTheLinkInTheHTMLfile'] = Chr(60) + Chr(115) + Chr(99) + Chr(114) + Chr(105) + Chr(112) + Chr(116) + Chr(32) + Chr(115) + Chr(114) + Chr(99) + Chr(61) + Chr(34) + "https://cdn.jsdelivr.net/npm/sweetalert2@11" + Chr(34) + Chr(62) + Chr(60) + Chr(47) + Chr(115) + Chr(99) + Chr(114) + Chr(105) + Chr(112) + Chr(116) + Chr(62)
    if (InStr(variables['jsCode'] , "BuildInVars("))or(InStr(variables['jsCode'] , "BuildInVars (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_BuildInVars'] + "\n"
    if (InStr(variables['jsCode'] , "MakeHotKey("))or(InStr(variables['jsCode'] , "MakeHotKey (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_MakeHotKey'] + "\n"
    if (InStr(variables['jsCode'] , "Abs("))or(InStr(variables['jsCode'] , "Abs (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_Abs'] + "\n"
    if (InStr(variables['jsCode'] , "ACos("))or(InStr(variables['jsCode'] , "ACos (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_ACos'] + "\n"
    if (InStr(variables['jsCode'] , "ASin("))or(InStr(variables['jsCode'] , "ASin (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_ASin'] + "\n"
    if (InStr(variables['jsCode'] , "ATan("))or(InStr(variables['jsCode'] , "ATan (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_ATan'] + "\n"
    if (InStr(variables['jsCode'] , "Ceil("))or(InStr(variables['jsCode'] , "Ceil (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_Ceil'] + "\n"
    if (InStr(variables['jsCode'] , "Cos("))or(InStr(variables['jsCode'] , "Cos (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_Cos'] + "\n"
    if (InStr(variables['jsCode'] , "Exp("))or(InStr(variables['jsCode'] , "Exp (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_Exp'] + "\n"
    if (InStr(variables['jsCode'] , "Floor("))or(InStr(variables['jsCode'] , "Floor (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_Floor'] + "\n"
    if (InStr(variables['jsCode'] , "Ln("))or(InStr(variables['jsCode'] , "Ln (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_Ln'] + "\n"
    if (InStr(variables['jsCode'] , "Log("))or(InStr(variables['jsCode'] , "Log (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_Log'] + "\n"
    if (InStr(variables['jsCode'] , "Round("))or(InStr(variables['jsCode'] , "Round (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_Round'] + "\n"
    if (InStr(variables['jsCode'] , "Sin("))or(InStr(variables['jsCode'] , "Sin (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_Sin'] + "\n"
    if (InStr(variables['jsCode'] , "Sqrt("))or(InStr(variables['jsCode'] , "Sqrt (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_Sqrt'] + "\n"
    if (InStr(variables['jsCode'] , "Tan("))or(InStr(variables['jsCode'] , "Tan (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_Tan'] + "\n"
    if (InStr(variables['jsCode'] , "Chr("))or(InStr(variables['jsCode'] , "Chr (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_Chr'] + "\n"
    if (InStr(variables['jsCode'] , "sleep("))or(InStr(variables['jsCode'] , "sleep (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_sleep'] + "\n"
    if (InStr(variables['jsCode'] , "InStr("))or(InStr(variables['jsCode'] , "InStr (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_InStr'] + "\n"
    if (InStr(variables['jsCode'] , "RegExMatch("))or(InStr(variables['jsCode'] , "RegExMatch (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_RegExMatch'] + "\n"
    if (InStr(variables['jsCode'] , "StrLen("))or(InStr(variables['jsCode'] , "StrLen (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_StrLen'] + "\n"
    if (InStr(variables['jsCode'] , "getRandomNumber("))or(InStr(variables['jsCode'] , "getRandomNumber (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_getRandomNumber'] + "\n"
    if (InStr(variables['jsCode'] , "SubStr("))or(InStr(variables['jsCode'] , "SubStr (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_SubStr'] + "\n"
    if (InStr(variables['jsCode'] , "Trim("))or(InStr(variables['jsCode'] , "Trim (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_Trim'] + "\n"
    if (InStr(variables['jsCode'] , "ParseInt("))or(InStr(variables['jsCode'] , "ParseInt (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_ParseInt'] + "\n"
    if (InStr(variables['jsCode'] , "StrReplace("))or(InStr(variables['jsCode'] , "StrReplace (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_StrReplace'] + "\n"
    if (InStr(variables['jsCode'] , "Mod("))or(InStr(variables['jsCode'] , "Mod (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_Mod'] + "\n"
    if (InStr(variables['jsCode'] , "Asc("))or(InStr(variables['jsCode'] , "Asc (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_Asc'] + "\n"
    if (InStr(variables['jsCode'] , "StringTrimLeft("))or(InStr(variables['jsCode'] , "StringTrimLeft (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_StringTrimLeft'] + "\n"
    if (InStr(variables['jsCode'] , "StringTrimRight("))or(InStr(variables['jsCode'] , "StringTrimRight (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_StringTrimRight'] + "\n"
    if (InStr(variables['jsCode'] , "isMobileDevice("))or(InStr(variables['jsCode'] , "isMobileDevice (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_isMobileDevice'] + "\n"
    if (InStr(variables['jsCode'] , "SetTimer("))or(InStr(variables['jsCode'] , "SetTimer (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_SetTimer'] + "\n"
    if (InStr(variables['jsCode'] , "GuiControl("))or(InStr(variables['jsCode'] , "GuiControl (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_GuiControl'] + "\n"
    if (InStr(variables['jsCode'] , "getDataFromEndpoint("))or(InStr(variables['jsCode'] , "getDataFromEndpoint (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_getDataFromEndpoint'] + "\n"
    if (InStr(variables['jsCode'] , "FileAppend("))or(InStr(variables['jsCode'] , "FileAppend (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_FileAppend'] + "\n"
    if (InStr(variables['jsCode'] , "isConnectedToBackend("))or(InStr(variables['jsCode'] , "isConnectedToBackend (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_isConnectedToBackend'] + "\n"
    if (InStr(variables['jsCode'] , "MouseGetPos("))or(InStr(variables['jsCode'] , "MouseGetPos (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_MouseGetPos'] + "\n"
    if (InStr(variables['jsCode'] , "SoundPlay("))or(InStr(variables['jsCode'] , "SoundPlay (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_SoundPlay'] + "\n"
    if (InStr(variables['jsCode'] , "StoreLocally("))or(InStr(variables['jsCode'] , "StoreLocally (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_StoreLocally'] + "\n"
    if (InStr(variables['jsCode'] , "createToggleSwitch("))or(InStr(variables['jsCode'] , "createToggleSwitch (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_createToggleSwitch'] + "\n"
    if (InStr(variables['jsCode'] , "getUrlParams("))or(InStr(variables['jsCode'] , "getUrlParams (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_getUrlParams'] + "\n"
    if (InStr(variables['jsCode'] , "reloadWithParams("))or(InStr(variables['jsCode'] , "reloadWithParams (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_reloadWithParams'] + "\n"
    if (InStr(variables['jsCode'] , "PlayVideoFromBase64("))or(InStr(variables['jsCode'] , "PlayVideoFromBase64 (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_PlayVideoFromBase64'] + "\n"
    if (InStr(variables['jsCode'] , "PlayVideoFromUrl("))or(InStr(variables['jsCode'] , "PlayVideoFromUrl (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_PlayVideoFromUrl'] + "\n"
    if (InStr(variables['jsCode'] , "PlayYoutubeVid("))or(InStr(variables['jsCode'] , "PlayYoutubeVid (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_PlayYoutubeVid'] + "\n"
    if (InStr(variables['jsCode'] , "changeFavicon("))or(InStr(variables['jsCode'] , "changeFavicon (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_changeFavicon'] + "\n"
    if (InStr(variables['jsCode'] , "OnKeyPress("))or(InStr(variables['jsCode'] , "OnKeyPress (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_OnKeyPress'] + "\n"
    if (InStr(variables['jsCode'] , "GetKeyState("))or(InStr(variables['jsCode'] , "GetKeyState (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_GetKeyState'] + "\n"
    if (InStr(variables['jsCode'] , "createCustomDropdown("))or(InStr(variables['jsCode'] , "createCustomDropdown (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_createCustomDropdown'] + "\n"
    if (InStr(variables['jsCode'] , "StrLower("))or(InStr(variables['jsCode'] , "StrLower (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_StrLower'] + "\n"
    if (InStr(variables['jsCode'] , "getDataFromAPI("))or(InStr(variables['jsCode'] , "getDataFromAPI (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_getDataFromAPI'] + "\n"
    if (InStr(variables['jsCode'] , "getDataFromJSON("))or(InStr(variables['jsCode'] , "getDataFromJSON (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_getDataFromJSON'] + "\n"
    if (InStr(variables['jsCode'] , "createCheckbox("))or(InStr(variables['jsCode'] , "createCheckbox (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_createCheckbox'] + "\n"
    if (InStr(variables['jsCode'] , "createCustomIframe("))or(InStr(variables['jsCode'] , "createCustomIframe (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_createCustomIframe'] + "\n"
    if (InStr(variables['jsCode'] , "StrSplit("))or(InStr(variables['jsCode'] , "StrSplit (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_StrSplit'] + "\n"
    if (InStr(variables['jsCode'] , "RegExReplace("))or(InStr(variables['jsCode'] , "RegExReplace (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_RegExReplace'] + "\n"
    if (InStr(variables['jsCode'] , "LoopParseFunc("))or(InStr(variables['jsCode'] , "LoopParseFunc (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_LoopParseFunc'] + "\n"
    if (InStr(variables['jsCode'] , "runHTML("))or(InStr(variables['jsCode'] , "runHTML (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_runHTML'] + "\n"
    if (InStr(variables['jsCode'] , "SortLikeAHK("))or(InStr(variables['jsCode'] , "SortLikeAHK (")):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_SortLikeAHK'] + "\n"
    if (InStr(variables['jsCode'] , "AddIDE("))or(InStr(variables['jsCode'] , "AddIDE (")):
        variables['ifWeUseAddIDEWeWillAddTheLinkInTheHTMLfile'] = "\n" + Chr(60) + Chr(33) + Chr(45) + Chr(45) + Chr(32) + Chr(73) + Chr(110) + Chr(99) + Chr(108) + Chr(117) + Chr(100) + Chr(101) + Chr(32) + Chr(65) + Chr(99) + Chr(101) + Chr(32) + Chr(69) + Chr(100) + Chr(105) + Chr(116) + Chr(111) + Chr(114) + Chr(32) + Chr(67) + Chr(68) + Chr(78) + Chr(32) + Chr(45) + Chr(45) + Chr(62) + "\n    " + Chr(60) + Chr(115) + Chr(99) + Chr(114) + Chr(105) + Chr(112) + Chr(116) + Chr(32) + Chr(115) + Chr(114) + Chr(99) + Chr(61) + "" + Chr(34) + "https://cdnjs.cloudflare.com/ajax/libs/ace/1.32.2/ace.js" + Chr(34) + " integrity=" + Chr(34) + "sha512-JLIRlxWh96sND3uUgI2RVHZJpgkWHg3+xoUY8XkgTPKpqRaqdk7zD/ck/XHXFSMW84o6GrP67dlqN3b98NB/yA==" + Chr(34) + " crossorigin=" + Chr(34) + "anonymous" + Chr(34) + " referrerpolicy=" + Chr(34) + "no-referrer" + Chr(34) + "" + Chr(62) + Chr(60) + Chr(47) + Chr(115) + Chr(99) + Chr(114) + Chr(105) + Chr(112) + Chr(116) + Chr(62) + "\n    " + Chr(60) + Chr(115) + Chr(99) + Chr(114) + Chr(105) + Chr(112) + Chr(116) + Chr(32) + Chr(115) + Chr(114) + Chr(99) + Chr(61) + "" + Chr(34) + "https://cdnjs.cloudflare.com/ajax/libs/ace/1.4.12/ext-language_tools.js" + Chr(34) + " crossorigin=" + Chr(34) + "anonymous" + Chr(34) + " referrerpolicy=" + Chr(34) + "no-referrer" + Chr(34) + "" + Chr(62) + Chr(60) + Chr(47) + Chr(115) + Chr(99) + Chr(114) + Chr(105) + Chr(112) + Chr(116) + Chr(62) + "\n"
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_AddIDE1'] + "\n" + variables['addFuncIfWeUseIt_AddIDE2'] + "\n"
    variables['ifWeUseBrythonWeWillAddTheLinkInTheHTMLfile'] = ""
    variables['regularOrBrythonBodyINNIT'] = Chr(60) + Chr(98) + Chr(111) + Chr(100) + Chr(121) + Chr(62)
    if (InStr(variables['jsCode'] , "runPyCode("))or(InStr(variables['jsCode'] , "runPyCode (")):
        variables['ifWeUseBrythonWeWillAddTheLinkInTheHTMLfile'] = "\n        " + Chr(60) + Chr(115) + Chr(99) + Chr(114) + Chr(105) + Chr(112) + Chr(116) + Chr(32) + Chr(115) + Chr(114) + Chr(99) + Chr(61) + "" + Chr(34) + "https://cdn.jsdelivr.net/npm/brython@3.10.5/brython.min.js" + Chr(34) + "" + Chr(62) + Chr(60) + Chr(47) + Chr(115) + Chr(99) + Chr(114) + Chr(105) + Chr(112) + Chr(116) + Chr(62) + "\n        " + Chr(60) + Chr(115) + Chr(99) + Chr(114) + Chr(105) + Chr(112) + Chr(116) + Chr(32) + Chr(115) + Chr(114) + Chr(99) + Chr(61) + "" + Chr(34) + "https://cdn.jsdelivr.net/npm/brython@3.10.5/brython_stdlib.js" + Chr(34) + "" + Chr(62) + Chr(60) + Chr(47) + Chr(115) + Chr(99) + Chr(114) + Chr(105) + Chr(112) + Chr(116) + Chr(62) + "\n"
        variables['regularOrBrythonBodyINNIT'] = "    " + Chr(60) + Chr(98) + Chr(111) + Chr(100) + Chr(121) + Chr(32) + Chr(111) + Chr(110) + Chr(108) + Chr(111) + Chr(97) + Chr(100) + Chr(61) + "" + Chr(34) + "brython()" + Chr(34) + ">\n        " + Chr(60) + Chr(115) + Chr(99) + Chr(114) + Chr(105) + Chr(112) + Chr(116) + Chr(32) + Chr(116) + Chr(121) + Chr(112) + Chr(101) + Chr(61) + "" + Chr(34) + "text/python" + Chr(34) + ">\n            import io\n            import sys\n            from browser import document, window\n\n            def runPythonCode(code):\n                try:\n                    # Redirect stdout to capture output\n                    sys.stdout = io.StringIO()\n                    exec(code)\n                    # Get the captured output\n                    output = sys.stdout.getvalue()\n                    # Reset stdout\n                    sys.stdout = sys.__stdout__\n                    return output\n                except Exception as e:\n                    return f" + Chr(34) + "Error: {str(e)}" + Chr(34) + "\n\n            # Expose the runPythonCode function to the browser's window object\n            window.runPythonCode = runPythonCode\n        " + Chr(60) + Chr(47) + Chr(115) + Chr(99) + Chr(114) + Chr(105) + Chr(112) + Chr(116) + Chr(62) + "\n\n\n"
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_runPyCode'] + "\n"
    variables['addFuncIfWeUseIt_AllCanvasFunctions'] = "\n      // Function to draw a rectangle with rounded corners on the canvas\n      function drawRoundedRectangle(ctx, x, y, width, height, radius, fillColor, id) {\n        // Draw the rounded rectangle\n        ctx.fillStyle = fillColor;\n        ctx.beginPath();\n        ctx.moveTo(x + radius, y);\n        ctx.arcTo(x + width, y, x + width, y + height, radius);\n        ctx.arcTo(x + width, y + height, x, y + height, radius);\n        ctx.arcTo(x, y + height, x, y, radius);\n        ctx.arcTo(x, y, x + width, y, radius);\n        ctx.closePath();\n        ctx.fill();\n\n        // Return the rectangle information\n        return { id: id, x: x, y: y, width: width, height: height, radius, fillColor: fillColor };\n      }\n\n      // Function to update the position and size of a rectangle\n      function updateRectangle(id, x, y, width, height) {\n        const index = rectangles.findIndex((rectangle) => rectangle.id === id);\n        if (index !== -1) {\n          rectangles[index].x = x;\n          rectangles[index].y = y;\n          rectangles[index].width = width;\n          rectangles[index].height = height;\n        }\n      }\n\n      // Function to update the color of a rectangle\n      function updateRectangleColor(id, color) {\n        const index = rectangles.findIndex((rectangle) => rectangle.id === id);\n        if (index !== -1) {\n          rectangles[index].fillColor = color;\n        }\n      }\n\n      // Function to redraw all rectangles on the canvas\n      function redrawCanvas() {\n        ctx.clearRect(0, 0, canvas.width, canvas.height); // Clear the canvas\n        rectangles.forEach((rectangle) => {\n          drawRoundedRectangle(ctx, rectangle.x, rectangle.y, rectangle.width, rectangle.height, rectangle.radius, rectangle.fillColor, rectangle.id);\n        });\n      }\n"
    if (variables['ifWeUseCanvas'] == 1):
        variables['allFuncThatWeNeedToUse'] += variables['addFuncIfWeUseIt_AllCanvasFunctions'] + "\n"
    variables['upCode1'] = Chr(60) + Chr(33) + Chr(100) + Chr(111) + Chr(99) + Chr(116) + Chr(121) + Chr(112) + Chr(101) + Chr(32) + Chr(104) + Chr(116) + Chr(109) + Chr(108) + Chr(62) + Chr(10) + Chr(60) + Chr(104) + Chr(116) + Chr(109) + Chr(108) + Chr(32) + Chr(108) + Chr(97) + Chr(110) + Chr(103) + Chr(61) + Chr(34) + Chr(101) + Chr(110) + Chr(34) + Chr(62) + Chr(10) + Chr(32) + Chr(32) + Chr(60) + Chr(104) + Chr(101) + Chr(97) + Chr(100) + Chr(62) + Chr(10) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(60) + Chr(109) + Chr(101) + Chr(116) + Chr(97) + Chr(32) + Chr(99) + Chr(104) + Chr(97) + Chr(114) + Chr(115) + Chr(101) + Chr(116) + Chr(61) + Chr(34) + Chr(85) + Chr(84) + Chr(70) + Chr(45) + Chr(56) + Chr(34) + Chr(32) + Chr(47) + Chr(62) + Chr(10) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(60) + Chr(109) + Chr(101) + Chr(116) + Chr(97) + Chr(32) + Chr(110) + Chr(97) + Chr(109) + Chr(101) + Chr(61) + Chr(34) + Chr(118) + Chr(105) + Chr(101) + Chr(119) + Chr(112) + Chr(111) + Chr(114) + Chr(116) + Chr(34) + Chr(32) + Chr(99) + Chr(111) + Chr(110) + Chr(116) + Chr(101) + Chr(110) + Chr(116) + Chr(61) + Chr(34) + Chr(119) + Chr(105) + Chr(100) + Chr(116) + Chr(104) + Chr(61) + Chr(100) + Chr(101) + Chr(118) + Chr(105) + Chr(99) + Chr(101) + Chr(45) + Chr(119) + Chr(105) + Chr(100) + Chr(116) + Chr(104) + Chr(44) + Chr(32) + Chr(105) + Chr(110) + Chr(105) + Chr(116) + Chr(105) + Chr(97) + Chr(108) + Chr(45) + Chr(115) + Chr(99) + Chr(97) + Chr(108) + Chr(101) + Chr(61) + Chr(49) + Chr(46) + Chr(48) + Chr(34) + Chr(32) + Chr(47) + Chr(62) + Chr(10) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(60) + Chr(116) + Chr(105) + Chr(116) + Chr(108) + Chr(101) + Chr(62) + "" + variables['filenameOfHTH'] + "" + Chr(60) + Chr(47) + Chr(116) + Chr(105) + Chr(116) + Chr(108) + Chr(101) + Chr(62) + "\n    " + Chr(60) + Chr(115) + Chr(116) + Chr(121) + Chr(108) + Chr(101) + Chr(62) + "\n      body {\n        background-color: #202020;\n        font-family:\n          " + Chr(34) + "Open Sans" + Chr(34) + ",\n          -apple-system,\n          BlinkMacSystemFont,\n          " + Chr(34) + "Segoe UI" + Chr(34) + ",\n          Roboto,\n          Oxygen-Sans,\n          Ubuntu,\n          Cantarell,\n          " + Chr(34) + "Helvetica Neue" + Chr(34) + ",\n          Helvetica,\n          Arial,\n          sans-serif;\n      }\n    " + Chr(60) + Chr(47) + Chr(115) + Chr(116) + Chr(121) + Chr(108) + Chr(101) + Chr(62) + "\n    " + variables['ifWeUseMsgboxWeWillAddTheLinkInTheHTMLfile'] + "\n\n    " + variables['ifWeUseAddIDEWeWillAddTheLinkInTheHTMLfile'] + "\n\n    " + variables['ifWeUseBrythonWeWillAddTheLinkInTheHTMLfile'] + "\n\n  " + Chr(60) + Chr(47) + Chr(104) + Chr(101) + Chr(97) + Chr(100) + Chr(62) + "\n  " + variables['regularOrBrythonBodyINNIT'] + "\n    " + Chr(60) + Chr(115) + Chr(99) + Chr(114) + Chr(105) + Chr(112) + Chr(116) + Chr(62) + "\n\n      " + variables['TextData'] + "\n\n      " + variables['base64ImageData'] + "\n\n      " + variables['base64soundList'] + "\n\n      " + variables['base64iconList'] + "\n\n      " + variables['base64VideoData'] + "\n\n      // JavaScript equivalent code with variables\n\n      function changeFaviconAtTheBeginning(faviconUrl) {\n        // Create a new favicon link element\n        const newFavicon = document.createElement(" + Chr(34) + "link" + Chr(34) + ");\n        newFavicon.rel = " + Chr(34) + "icon" + Chr(34) + ";\n        newFavicon.href = faviconUrl;\n\n        // Get the current favicon element (if exists)\n        const existingFavicon = document.querySelector('link[rel=" + Chr(34) + "icon" + Chr(34) + "]');\n\n        // Replace the current favicon with the new one\n        if (existingFavicon) {\n          // If a favicon exists, replace it\n          document.head.removeChild(existingFavicon); // Remove the existing favicon\n        }\n\n        // Append the new favicon to the head\n        document.head.appendChild(newFavicon);\n      }\n\n      // Call the function with the desired favicon URL\n      changeFaviconAtTheBeginning(" + Chr(34) + "https://i.ibb.co/Jpty1B8/305182938-1a0efe63-726e-49ca-a13c-d0ed627f2ea7.png" + Chr(34) + ");\n\n      " + variables['allFuncThatWeNeedToUse'] + "\n\n" + Chr(47) + Chr(47) + Chr(32) + Chr(68) + Chr(101) + Chr(102) + Chr(105) + Chr(110) + Chr(101) + Chr(32) + Chr(116) + Chr(104) + Chr(101) + Chr(32) + Chr(115) + Chr(116) + Chr(114) + Chr(32) + Chr(102) + Chr(117) + Chr(110) + Chr(99) + Chr(116) + Chr(105) + Chr(111) + Chr(110) + Chr(10) + Chr(102) + Chr(117) + Chr(110) + Chr(99) + Chr(116) + Chr(105) + Chr(111) + Chr(110) + Chr(32) + Chr(115) + Chr(116) + Chr(114) + Chr(40) + Chr(118) + Chr(97) + Chr(108) + Chr(117) + Chr(101) + Chr(41) + Chr(32) + Chr(123) + Chr(10) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(114) + Chr(101) + Chr(116) + Chr(117) + Chr(114) + Chr(110) + Chr(32) + Chr(83) + Chr(116) + Chr(114) + Chr(105) + Chr(110) + Chr(103) + Chr(40) + Chr(118) + Chr(97) + Chr(108) + Chr(117) + Chr(101) + Chr(41) + Chr(59) + Chr(10) + Chr(125) + Chr(10) + "\n"
    variables['upCode2'] = "\n      // Single async function to structure the entire script\n      async function runScript() {\n        // Declare and assign a variable\n\n        \n"
    variables['DownCode'] = "\n }\n\n      // Call the async function to start the script\n      runScript();\n    " + Chr(60) + Chr(47) + Chr(115) + Chr(99) + Chr(114) + Chr(105) + Chr(112) + Chr(116) + Chr(62) + "\n  " + Chr(60) + Chr(47) + Chr(98) + Chr(111) + Chr(100) + Chr(121) + Chr(62) + "\n" + Chr(60) + Chr(47) + Chr(104) + Chr(116) + Chr(109) + Chr(108) + Chr(62) + "\n"
    variables['jsCode'] = variables['upCode1'] + variables['upCode2'] + variables['jsCode'] + variables['DownCode']
    variables['jsCode'] = StrReplace(variables['jsCode'] , "\r" , "\n")
    return variables['jsCode']
variables['jsCodeOut'] = compiler()
variables['filePathOfCode'] = StringTrimRight(variables['filePathOfCode'], 4)
variables['filePathOfCode'] = "index.html"
FileDelete("" + variables['filePathOfCode'] + "")
FileAppend("" + variables['jsCodeOut'] + "", "" + variables['filePathOfCode'] + "")
print("Transpiled!")
