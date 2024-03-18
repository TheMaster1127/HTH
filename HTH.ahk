;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Name:
; HTH
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; HTH, which stands for HeavenToHell, is a dynamically typed, transpiled high-level programming language designed for simplicity, ease of use, and versatility. Inspired by the syntax of AutoHotkey, HTH offers a user-friendly environment for beginners to learn programming and build web apps.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#singleinstance force
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;;;;;;;;;;;;;;;;;;;;;
;OPTIMIZATIONS START
#NoEnv
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
ListLines Off
Process, Priority, , A
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1
SendMode Input
;OPTIMIZATIONS END

buildInFunc =
(
Abs(
ACos(
Asc(
ASin(
ATan(
Ceil(
Chr(
Cos(
Exp(
StrReplace(
InStr(
Floor(
GetKeyState(
InStr(
Ln(
Log(
Mod(
RegExMatch(
RegExReplace(
Round(
Sin(
Sqrt(
StrLen(
SubStr(
Tan(
tehequakuazation
)


test := 1 ; test your code ignore this the transpiler is done i forgot this so no need to remove this
fileNameHTH2Num := 0
for n, param in A_Args  ; For each parameter:
{
if (n = 1)
{
fileNameHTH := param


;MsgBox, % A_InitialWorkingDir


}

if (n = 2)
{
fileNameHTH2 := param
fileNameHTH2Num := 1
}

}

; To fetch only its directory:
if (fileNameHTH != "")
{

  ; Example path
path := fileNameHTH
;MsgBox, % path

; Use regex to extract the directory path
regex := "(.*[/\\]).*" ; Match everything before the last slash in the string
if (RegExMatch(path, regex, match)) {
    dirpath := match1
    ;MsgBox, The directory path is: %dirpath%
} else {
    ;MsgBox, No directory path found in the path.
}




;MsgBox, %dir%
SetWorkingDir, %A_InitialWorkingDir%  ; Ensures a consistent starting directory.


; Use regex to extract the file name without extension
regex := "[\\/]?([^\/\\]+)\.[^\.]+$"

if (RegExMatch(path, regex, match)) {
    filenameOfHTH := match1
    ;MsgBox, The file name without extension is: %filenameOfHTH%
} else {
    ;MsgBox, No file name found in the path.
}

}
else
{
ExitApp
}
;MsgBox, % fileNameHTH


StartTime := A_TickCount



FileRead, AHKcode, %fileNameHTH%

if (test = 1)
{
;Clipboard := AHKcode
gosub Compile
ExitApp
}

Compile:

jsCode := ""
variables := ""
removeCurlyBracet := 0
variables .= "  " . "A_Index" . ": null," . "`n"
variables .= "  " . "A_LoopField" . ": null," . "`n"
variables .= "  " . "characters" . ": null," . "`n"

jsCodeGui := ""

out123456 := ""

textAfterSemicolonNum := 0

out123456ggFixTrim := ""

libNum := 0

Loop
{


if (InStr(StrLower(AHKcode), StrLower("#include")))
{

}
else
{
break
}

libNum := 0
endCodeLibFix := ""
Loop, Parse, AHKcode, `n, `r
{

if (InStr(StrLower(A_LoopField), StrLower("#include")))
{

str := A_LoopField

if RegExMatch(str, "i)(?:\s)(.*)", match)  ; Match the first space and capture the rest
{
libNum++
extractedLib%libNum% := match1
;MsgBox, The text after the first space is: %extractedLib1%
}
else
{
;MsgBox, No space found in the string.
}

}
else
{
endCodeLibFix .= A_LoopField . "`n"
}


}

AHKcode := endCodeLibFix

Loop, % libNum
{
filepath := dirpath . extractedLib%A_Index%
FileRead, Lib, %filepath%
;MsgBox, % Lib
AHKcode := Lib . "`n`n" . AHKcode

}



}


Loop, Parse, AHKcode, `n, `r
{

out := A_LoopField

out := Trim(out)
out := StrReplace(out, A_Tab, "")

out123456ggFixTrim .= out . "`n"
}
StringTrimRight, out123456ggFixTrim, out123456ggFixTrim, 1

AHKcode := out123456ggFixTrim





jsCodeVIYGUOGUYIVGOYIVGOUYVUIYVUOHU := ""
Loop, Parse, AHKcode, `n, `r
{
if (SubStr(Trim(A_LoopField), 1, 1) = "`;")
{
;MsgBox, % A_LoopField
var1 := "// " . A_LoopField

jsCodeVIYGUOGUYIVGOYIVGOUYVUIYVUOHU .= var1 . "`n"

}
else
{
jsCodeVIYGUOGUYIVGOYIVGOUYVUIYVUOHU .= A_LoopField . "`n"

}
}

StringTrimRight, jsCodeVIYGUOGUYIVGOYIVGOUYVUIYVUOHU, jsCodeVIYGUOGUYIVGOYIVGOUYVUIYVUOHU, 1

AHKcode := jsCodeVIYGUOGUYIVGOYIVGOUYVUIYVUOHU



; Initialize a counter for tracking the current line
counter := 1

; Initialize variables to store the last two lines seen
lastLine1 := ""
lastLine2 := ""
AHKcodeUot := ""
AindexcharLength := 0
funcNames := ""
jsCodeLoopFix := ""
AHKcode := AHKcode . "`n" . "`n" . "`n"

; Loop through the variable, parsing two lines at a time
Loop, Parse, AHKcode, `n, `r
{
;MsgBox, % A_LoopField
  alredyyy := 0
    ; Skip displaying last two lines seen for the first iteration
    if (counter > 1)
    {
        ; Display the last two lines seen
        ;MsgBox % "Last Line 1: " lastLine2 "`nLast Line 2: " lastLine1
;~ lastLine2
;~ lastLine1
    }

    ; Store the current line as the last line seen
    lastLine2 := StrLower(lastLine1)
    lastLine22 := lastLine11
    lastLine1 := StrLower(A_LoopField)
    lastLine11 := A_LoopField



if (SubStr(StrLower(lastLine2), 1, 4) = "if (") or (SubStr(StrLower(lastLine2), 1, 3) = "if(") or (SubStr(StrLower(lastLine2), 1, 4) = "if!(") or (SubStr(StrLower(lastLine2), 1, 5) = "if !(") or (SubStr(StrLower(lastLine2), 1, 4) = "loop") or (SubStr(StrLower(lastLine2), 1, 9) = "else if (") or (SubStr(StrLower(lastLine2), 1, 8) = "else if(")
{
;MsgBox % "Last Line 1: " lastLine2 "`nLast Line 2: " lastLine1
}
else
{

if !((InStr(lastLine2, " := ")) or (InStr(lastLine2, " .= ")) or (InStr(lastLine2, " += ")) or (InStr(lastLine2, " -= ")) or (InStr(lastLine2, " *= ")))
{

if (SubStr(Trim(lastLine1), 1, 1) = "{") && (InStr(lastLine2, "("))
{
  alredyyy := 1

lastLine22 := Trim(lastLine22)


str := lastLine22

s:=StrSplit(str,"(").1
out1 := s



funcNames .= out1 . "`n"
;MsgBox, funcNames |%funcNames%|

funcNamesLen123 := 0
Loop, Parse, out1
{
;MsgBox, funcNamesLen123 |%A_LoopField%|
funcNamesLen123 := A_Index + 0
}

funcNamesLen := funcNamesLen123 . "`n"
lastLine22 := Trim(lastLine22)

inputText := lastLine22
;MsgBox, % inputText

str := inputText

s:=StrSplit(str,"(").1
out1 := s

extractedText := FindAndExtractText(inputText)
;MsgBox % "Text inside parentheses: " . extractedText
out2 := varTraspiler(extractedText, 1)

out3 := lastLine22

lastLine22 := "async function " . out3 . "`n{`n" . out2 . "`n|nextbarcccketIwnatatataitgoneokdudeorelsleplsk|"
;MsgBox, % lastLine22
;MsgBox % "Last Line 1: " lastLine2 "`nLast Line 2: " lastLine1
AHKcodeUot .= lastLine22 . "`n"
}
}
}



    ; Increment the counter
    counter++

    ; Check if there are more lines to process
    if (A_Index < %var0%)
    {
        ; Move down one line (skip for the last iteration)
        Loop
        {
            counter++
            if (InStr(var, "`n", false, counter) = 0)
                break
        }
    }

if (alredyyy != 1)
{
lastLine22 := Trim(lastLine22)
    AHKcodeUot .= lastLine22 . "`n"
}

}


StringTrimRight, funcNames, funcNames, 1
StringTrimRight, funcNamesLen, funcNamesLen, 1
;MsgBox, % funcNamesLen
;MsgBox, % funcNames
;MsgBox, % AHKcodeUot

Loop, Parse, funcNamesLen, `n, `r
{
  funcNamesLen%A_Index% := A_LoopField
}

funcs := ""
funcs .= "let funcs = {`n"

Loop, Parse, funcNames, `n, `r
{
  funcNames%A_Index% := A_LoopField
  maxNumLenStrNum := A_Index + 1
funcs .= "  " . "" . A_LoopField . "" . ": " . A_LoopField . "," . "`n"

}
funcs .= "}"
;MsgBox, % funcs


AHKcodeUot123 := ""
numOfTextData := 0
TextData := ""
outuig7f867if := ""
numLenStrNum := 1
done := 0

;MsgBox, % maxNumLenStrNum
if (maxNumLenStrNum != "")
{
Loop, Parse, AHKcodeUot, `n, `r
{



lastLine2 := A_LoopField

lastLine2 := Trim(lastLine2)



numLenStr := funcNamesLen%numLenStrNum%
numLenStr2 := funcNames%numLenStrNum%


;MsgBox, |%numLenStr%|
;MsgBox, % lastLine2
if (SubStr(lastLine2, 1, numLenStr) = numLenStr2) && (done = 0)
{
;MsgBox, % "tru"
numLenStrNum++
;MsgBox, % maxNumLenStrNum
if (numLenStrNum = maxNumLenStrNum)
{
done := 1
}
;MsgBox, % A_LoopField



lastLine222 := Trim(A_LoopField)

inputText := lastLine222
;MsgBox, % inputText

str := inputText

s:=StrSplit(str,"(").1
out1 := s

extractedText := FindAndExtractText(inputText)
;MsgBox % "Text inside parentheses: " . extractedText
out2 := varTraspiler(extractedText, 0)

out3 := out1 . "(" . out2 . ")"

lastLine222 := out3
;MsgBox, % lastLine222

outuig7f867if := "await " . lastLine222 . "`n"

;MsgBox, % outuig7f867if
}
else
{
outuig7f867if := A_LoopField . "`n"
}



AHKcodeUot123 .= outuig7f867if . "`n"
}
AHKcode := AHKcodeUot123
}



base64ImageNum := 0
base64ImageData := ""






Loop, Parse, AHKcode, `n, `r
{
lineDone := 0
str := A_LoopField


if (InStr(str, """"))
{
Loop, % posStartQuotesNum + 1
{
posStartQuotes%A_Index% := ""
}

posStartQuotesNum := 0
backOut := ""
insideQqq := 0
out := ""
restartSomtingBugs := 0
Loop, Parse, str
{


if (A_LoopField = """") && (insideQqq = 0)
{
insideQqq++
posStartQuotesNum++
backOut := ""
restartSomtingBugs := 0
}
else
{
if (A_LoopField = """")
{
insideQqq := 0
}
}

if (insideQqq = 1)
{
restartSomtingBugs++
if (restartSomtingBugs = 1)
{

backOut := "posStartQuotes" . posStartQuotesNum

out .= backOut

}

posStartQuotes%posStartQuotesNum% .= A_LoopField

}
else
{
out .= A_LoopField
}


}

out2 := out

}
else
{
out2 := str
}

var := out2



var := Trim(var)


if (SubStr(var, 1, 1) = ";") {
    ;MsgBox, The first character of myVar is a semicolon.
    var := var . """thisissemicolonatthefirstplaceokmansurebruh49475472471"""
} else {
    ;MsgBox, The first character of myVar is not a semicolon.
if (InStr(var, ";"))
{
var := var . """thisissemicolonattheendplaceokmansurebruh49475472472"""


if (RegExMatch(var, "^(.*?);(.*)$", output)) {
    textAfterSemicolonNum++
    textAfterSemicolon%textAfterSemicolonNum% := output2

    ; Remove all text after the first semicolon in var
    var := output1
    var := var . """thisissemicolonattheendplaceokmansurebruh49475472472"""
 }




}
}


var := StrReplace(var, ";", "")






Loop, %posStartQuotesNum%
{
var := StrReplace(var, "posStartQuotes" . A_Index, posStartQuotes%A_Index%)


var := StrReplace(var, """""", "\""")
var := StrReplace(var, """""""", """\""")
var := StrReplace(var, "\\""", """\""")
var := StrReplace(var, """\"" ", "\"""" ")

var := StrReplace(var, """""", "\""")
var := StrReplace(var, """""""", """\""")
var := StrReplace(var, "\\""", """\""")
var := StrReplace(var, """\"" ", "\"""" ")
var := StrReplace(var, """\"";", "\"""" ")



}

out123456 .= var . "`n"

}


StringTrimRight, out123456, out123456, 1

HotKeyCalledHotKyes := ""
AHKcode := out123456
onKeyPress := ""

guiColorShow := "121212"
guiFontShow := "15"

AindexcharLength := 1

allEndponitsInPython := ""
endpoints := ""
DoWeHaveEndpoints := 0
;MsgBox, % AHKcode

AHKcode := StrReplace(AHKcode, "\"")", """"")")
AHKcode := StrReplace(AHKcode, "return \""", "return """"")

Loop, Parse, AHKcode, `n, `r
{
lineDone := 0
if (SubStr(Trim(StrLower(A_LoopField)), 1, 8) = StrLower("Random, "))
{

str := A_LoopField


s:=StrSplit(str,",").2
out0 := s
s:=StrSplit(str,",").3
out1 := s
s:=StrSplit(str,",").4
out2 := s


;MsgBox, % out2
out0 := Trim(out0)
out1 := Trim(out1)
out2 := Trim(out2)

;~ MsgBox, |%out0%|
;~ MsgBox, |%out1%|
;~ MsgBox, |%out2%|


line0 := varTraspiler(out0, 0)
line1 := varTraspiler(out1, 0)
line2 := varTraspiler(out2, 0)
;MsgBox, % line
var1 := line0 . " = getRandomNumber(" . line1 . ", " . line2 . ")"
;MsgBox, % var1
lineDone := 1
jsCode .= var1 . "`n"

} ; random
else if (SubStr(Trim(StrLower(A_LoopField)), 1, 7) = StrLower("Sleep, "))
{

str := A_LoopField

if (InStr(str, "Sleep, %"))
{
s := RegExMatch(str, "i)Sleep, %(.*)", match) ? match1 : ""
out2 := s
;MsgBox, % str
}
else
{
s := RegExMatch(str, "i)Sleep, (.*)", match) ? match1 : ""
out2 := s
}


;MsgBox, % out2
out2 := Trim(out2)

line := varTraspiler(out2, 0)
;MsgBox, % line
var1 := "await sleep(" . line . ")"
lineDone := 1
jsCode .= var1 . "`n"


}
else if (SubStr(Trim(StrLower(A_LoopField)), 1, 4) = "if (") or (SubStr(Trim(StrLower(A_LoopField)), 1, 3) = "if(") or (SubStr(Trim(StrLower(A_LoopField)), 1, 4) = "if!(") or (SubStr(Trim(StrLower(A_LoopField)), 1, 5) = "if !(") or (SubStr(Trim(StrLower(A_LoopField)), 1, 9) = "else if (") or (SubStr(Trim(StrLower(A_LoopField)), 1, 8) = "else if(")
{
lineDone := 1
atTheEndOfIfActualyAtTheBeggingAddExclamationMark := 0
isItElseIf := 0
if (SubStr(Trim(StrLower(A_LoopField)), 1, 8) = "else if (") or (SubStr(Trim(StrLower(A_LoopField)), 1, 7) = "else if (")
{
	isItElseIf := 1
if (SubStr(Trim(StrLower(A_LoopField)), 1, 10) = "else if !(") or (SubStr(Trim(StrLower(A_LoopField)), 1, 7) = "else if!(")
{
    atTheEndOfIfActualyAtTheBeggingAddExclamationMark := 1
}

}



;if
str := A_LoopField




curledLikeThere := 0
if (InStr(str, "}"))
{
jsCode .= "} " . "`n"
curledLikeThere := 1
;MsgBox, % str
}

Loop, % posStartQuotesNum + 1
{
posStartQuotes%A_Index% := ""
}

posStartQuotesNum := 0
backOut := ""
insideQqq := 0
out := ""
restartSomtingBugs := 0
Loop, Parse, str
{


if (A_LoopField = """") && (insideQqq = 0)
{
insideQqq++
posStartQuotesNum++
backOut := ""
restartSomtingBugs := 0
}
else
{
if (A_LoopField = """")
{
insideQqq := 0
}
}

if (insideQqq = 1)
{
restartSomtingBugs++
if (restartSomtingBugs = 1)
{

backOut := "posStartQuotes" . posStartQuotesNum

out .= backOut

}

posStartQuotes%posStartQuotesNum% .= A_LoopField

}
else
{
out .= A_LoopField
}


}

str := out







str := StrReplace(str, ") Or (", ") || (")
str := StrReplace(str, ") oR (", ") || (")
str := StrReplace(str, ") or (", ") || (")
str := StrReplace(str, ") OR (", ") || (")
str := StrReplace(str, " Or ", " || ")
str := StrReplace(str, " oR ", " || ")
str := StrReplace(str, " or ", " || ")
str := StrReplace(str, " OR ", " || ")

;MsgBox, % A_LoopField

str := Trim(str)

if (isItElseIf = 1)
{
	StringTrimLeft, str, str, 5
}




if (InStr(StrLower(A_LoopField), "if ("))
{
StringTrimLeft, str, str, 4
}

if (InStr(StrLower(A_LoopField), "if("))
{
StringTrimLeft, str, str, 3
}

if (InStr(StrLower(A_LoopField), "if!("))
{
StringTrimLeft, str, str, 4

atTheEndOfIfActualyAtTheBeggingAddExclamationMark := 1
}

if (InStr(StrLower(A_LoopField), "if !("))
{

atTheEndOfIfActualyAtTheBeggingAddExclamationMark := 1
StringTrimLeft, str, str, 5
}



str := Trim(str)



str := StrReplace(str, "=", "tehequakuazation")


A_LoopFieldd := "if := " . str
;MsgBox, % A_LoopFieldd

str := A_LoopFieldd



s:=StrSplit(str," ").1
out1 := s

s:=StrSplit(str," ").2
out2 := s

;MsgBox, % out1 . " " . out2
checkIfVar := out1 . " " . out2
if (InStr(checkIfVar, ":=")) && !(InStr(checkIfVar, ", "))
{

var := A_LoopFieldd

var := StrReplace(A_LoopFieldd, ":=", "=")




str := var
s:=StrSplit(str,"=").1
out1 := s
s:=StrSplit(str,"=").2
out2 := s


varsContents := ""

out2 := StrReplace(out2, """", "ABvarBLAA")

out2 := StrReplace(out2, "(", " ( ")
out2 := StrReplace(out2, ")", " ) ")
out2 := StrReplace(out2, "[", " [ ")
out2 := StrReplace(out2, "]", " ] ")

Loop, Parse, out2, " "
{


var1 := A_LoopField
;MsgBox, % var1
if !(InStr(var1, "%")) && !(InStr(var1, "ABvarBLAA"))
{

; Define the string to check
myString := var1

; Regular expression pattern to match any letter
pattern := ".*[A-Za-z].*"

; Check if the string contains a letter
if RegExMatch(myString, pattern)
{
    ;MsgBox, The string contains at least one letter.

buildInFuncNum := 0
Loop, Parse, buildInFunc, `n ,`r
{
if (InStr(var1, A_LoopField))
{
buildInFuncNum++
}

}

if (buildInFuncNum > 0)
{

}
else
{
var1 := Trim(var1)
var1 := "%" . var1 . "%"
}

}
else
{
    ;MsgBox, The string does not contain any letters.
}
;MsgBox, % buildInFuncNum

}

;MsgBox, % var1

mode1 := 0

; Alternatively, if you only want to check if the string contains %
if (InStr(var1, "%")) {
    ;MsgBox, The string contains `%`
mode1 := 2


;StringTrimRight, var1, var1, 1

str := var1


s:=StrSplit(str,"%").1
INout1 := s


s:=StrSplit(str,"%").2
INout2 := s

s:=StrSplit(str,"%").3
INout3 := s

INout2 := "variablesBLAcodevarBLA" . INout2

if (INout1 = "")
{
var1 := INout2
}
else
{
var1 := "variables[" . """" . INout1 . """" . " + " . INout2 . "]"
}

if !(INout3 = "")
{
var1 := "variables[" . """" . INout1 . """" . " + " . INout2 . " + " . """" .  INout3 . """" .  "]"

}


varsContents .= var1 . " "


}


if (SubStr(var1, 1, 1) = "%" && SubStr(var1, 0) = "%" && StrLen(var1) > 1) {
    ;MsgBox, The string starts and ends with `%`
mode1 := 1

varsContents .= "variablesBLAcodevarBLA" . A_LoopField . " "

} else {
    ;MsgBox, The string does not start and end with `%`

if (mode1 != 2)
{
mode1 := 3

varsContents .= A_LoopField . " "
}
}





}
;MsgBox, % varsContents

out1 := Trim(out1)




StringTrimRight, varsContents, varsContents, 1

out0 := out1
out2 := varsContents

out2 := RegExReplace(out2, "\.(?![0-9])", "+")


out2 := StrReplace(out2, "BLAcodevarBLA", ".")

out2 := StrReplace(out2, "tehequakuazation", "=")


out2 := StrReplace(out2, "ABvarBLAA", """")
out2 := StrReplace(out2, "%", "")


repaceGetFunctionInAhkToJs()


;MsgBox, % out2
if (InStr(out2, "{"))
{
;MsgBox, % out2
out2 := StrReplace(out2, "{", "")
;MsgBox, % out2

 removeCurlyBracet := 2
}

if (InStr(out0, "%"))
{
out0old := out0



StringTrimRight, var1, out0old, 1

str := var1

s:=StrSplit(str,"%").1
INout1 := s


s:=StrSplit(str,"%").2
INout2 := s

INout2 := "variables." . INout2

var1 := "[" . """" . INout1 . """" . " + " . INout2 . "]"


out0 := var1
var := "variables" . out0 . " = " . out2 . ";"

}
else
{
var := "variables." . out0 . " = " . out2 . ";"
}
line := var
StringTrimLeft, line, line, 15





if (isItElseIf = 1)
{

if (curledLikeThere = 1)
{

if (atTheEndOfIfActualyAtTheBeggingAddExclamationMark = 1)
{
line := "else if (!" . line . ")"
}
else
{
line := "else if " . line
}
}
else
{

if (atTheEndOfIfActualyAtTheBeggingAddExclamationMark = 1)
{
    line := "else if (!(" . line . ")"
}
else
{
line := "else if (" . line
}
}


}
else
{

    if (atTheEndOfIfActualyAtTheBeggingAddExclamationMark = 1)
{
 line := "if (!(" . line . ")"

}
else
{

 line := "if (" . line
}
}





Loop, %posStartQuotesNum%
{
line := StrReplace(line, "posStartQuotes" . A_Index, posStartQuotes%A_Index%)


line := StrReplace(line, """""", "\""")
line := StrReplace(line, """""""", """\""")
line := StrReplace(line, "\\""", """\""")
line := StrReplace(line, """""", "\""")
line := StrReplace(line, """""""", """\""")
line := StrReplace(line, "\\""", """\""")
line := StrReplace(line, """\"" ", "\"""" ")
line := StrReplace(line, """\"";", "\"""" ")
}
line := StrReplace(line, " ( variables.if ", " ")
line := StrReplace(line, " = ", " == ")

line := StrReplace(line, " != ", " !== ")
line := StrReplace(line, "= \""", "= """"")

line := StrReplace(line, "  ", " ")
line := StrReplace(line, "   ", " ")
line := StrReplace(line, "    ", " ")
line := StrReplace(line, ") && (", " && ")
line := StrReplace(line, ") || (", " || ")
line := StrReplace(line, ") `;", ")")
line := StrReplace(line, ");", ")")
;MsgBox, % line
jsCode .= line . "`n"

lineDone := 1


}

}
else if (StrLower(A_LoopField) = "loop") or (StrLower(A_LoopField) = "loop {")
{
; infinity loops

lineDone := 1
var1 =
(
for (/* Normal Loop */ variables.A_Index%AindexcharLength% = 1; `; variables.A_Index%AindexcharLength%++)
)
if (InStr(A_LoopField, "{"))
{

 removeCurlyBracet := 2
}

if (StrLower(A_LoopField) = StrLower("Loop {"))
{

var1 =
(
for (/* Normal Loop */ variables.A_Index%AindexcharLength% = 1; `; variables.A_Index%AindexcharLength%++)
)
}
lineDone := 1
jsCodeLoopFix .= "nl|itsfortheloopfixinghhhhhhhhcksdvbdshjvds|" . AindexcharLength . "`n"
jsCodeLoopFix1 := "nl|itsfortheloopfixinghhhhhhhhcksdvbdshjvds|" . AindexcharLength
AindexcharLength++
jsCode .= jsCodeLoopFix1 . "`n" . var1 . "`n"

}
else if (SubStr(Trim(StrLower(A_LoopField)), 1, 6) = "loop, ") && !(SubStr(Trim(StrLower(A_LoopField)), 1, 8) = "loop, % ") && !(SubStr(Trim(StrLower(A_LoopField)), 1, 7) = "loop % ") && !(SubStr(Trim(StrLower(A_LoopField)), 1, 11) = StrLower("Loop, Parse"))
{



str := A_LoopField
;MsgBox, % str



s := RegExMatch(str, "i)loop, (.*)", match) ? match1 : ""
out2 := s
;MsgBox % out2


if (InStr(out2, "{"))
{
    out2 := StrReplace(out2, "{", "")
 removeCurlyBracet := 2
}

;MsgBox, % out2
out2 := Trim(out2)


myVar := out2

if (RegExMatch(myVar, "^\d+$")) {
    ;MsgBox, % "The variable contains only numbers."
line := out2
} else {
    ;MsgBox, % "The variable does not contain only numbers."
line := varTraspiler(out2, 0)
}



;MsgBox, % line
var1 =
(
for (/* Normal Loop */ variables.A_Index%AindexcharLength% = 1; variables.A_Index%AindexcharLength% <= %line%`; variables.A_Index%AindexcharLength%++)
)
jsCodeLoopFix .= "nl|itsfortheloopfixinghhhhhhhhcksdvbdshjvds|" . AindexcharLength . "`n"
jsCodeLoopFix1 := "nl|itsfortheloopfixinghhhhhhhhcksdvbdshjvds|" . AindexcharLength
AindexcharLength++
jsCode .= jsCodeLoopFix1 . "`n" . var1 . "`n"
;MsgBox, % var1
lineDone := 1

}
else if (SubStr(Trim(StrLower(A_LoopField)), 1, 8) = "loop, % ") or (SubStr(Trim(StrLower(A_LoopField)), 1, 7) = "loop % ")
{
; infinity loops


str := A_LoopField

lineDone := 1
if (InStr(StrLower(A_LoopField), "loop, % "))
{
s := RegExMatch(str, "i)oop, % (.*)", match) ? match1 : ""
out2 := s
}


if (InStr(out2, "{"))
{
    out2 := StrReplace(out2, "{", "")
 removeCurlyBracet := 2
}

;MsgBox, % out2
out2 := Trim(out2)


line := varTraspiler(out2, 0)

;MsgBox, % line
var1 =
(
for (/* Normal Loop */ variables.A_Index%AindexcharLength% = 1; variables.A_Index%AindexcharLength% <= %line%`; variables.A_Index%AindexcharLength%++)
)


jsCodeLoopFix .= "nl|itsfortheloopfixinghhhhhhhhcksdvbdshjvds|" . AindexcharLength . "`n"
jsCodeLoopFix1 := "nl|itsfortheloopfixinghhhhhhhhcksdvbdshjvds|" . AindexcharLength
AindexcharLength++
jsCode .= jsCodeLoopFix1 . "`n" . var1 . "`n"
lineDone := 1

}
else if (SubStr(Trim(StrLower(A_LoopField)), 1, 11) = StrLower("Loop, Parse"))
{

var1 := A_LoopField
lineDone := 1
var1 := Trim(var1)

if (RegExMatch(StrLower(var1), "^loop, parse, \w+[^,]$"))
{
    ; Your code here
;MsgBox, 1





str := A_LoopField

s := RegExMatch(str, "i)Loop, Parse, (.*)", match) ? match1 : ""
out2 := s



;MsgBox, % out2
out2 := Trim(out2)



line := varTraspiler(out2, 0)
line := Trim(line)
;MsgBox, % line

var1 =
(
variables.characters%AindexcharLength% = %line%.split("");
variables.charLength%AindexcharLength% = variables.characters%AindexcharLength%.length

for (/* Loop parse */ variables.A_Index%AindexcharLength% = 1; variables.A_Index%AindexcharLength% <= variables.charLength%AindexcharLength%; variables.A_Index%AindexcharLength%++) {
  variables.A_LoopField = variables.characters%AindexcharLength%[variables.A_Index - 1]; // Using array notation to access characters
|nextbarcccketIwnatatataitgoneokdudeorelsleplsk|
)

removeCurlyBracet := 1


jsCodeLoopFix .= "lp|itsfortheloopfixinghhhhhhhhcksdvbdshjvds|" . AindexcharLength . "`n"
jsCodeLoopFix1 := "lp|itsfortheloopfixinghhhhhhhhcksdvbdshjvds|" . AindexcharLength
AindexcharLength++
jsCode .= jsCodeLoopFix1 . "`n" . var1







}
else
{
;MsgBox, 2

str := A_LoopField

s := RegExMatch(str, "i)Loop, Parse, (.*)", match) ? match1 : ""
out1 := s
out2 := s

str := out1

s:=StrSplit(str,", ").1
out1 := s

s:=StrSplit(str,", ").2
out3 := s
out3 := Trim(out3)
;MsgBox, |%out3%|
s:=StrSplit(str,", ").3
out4 := s
out4 := Trim(out4)
;MsgBox, |%out4%|



;MsgBox, % out2
out1 := Trim(out1)
out2 := Trim(out2)


line := varTraspiler(out1, 0)

line := Trim(line)
;MsgBox, % line


var1 =
(
variables.characters%AindexcharLength% = %line%.split(/[%out3%%out4%]/);
variables.charLength%AindexcharLength% = variables.characters%AindexcharLength%.length

for (/* Loop parse */ variables.A_Index%AindexcharLength% = 1; variables.A_Index%AindexcharLength% <= variables.charLength%AindexcharLength%; variables.A_Index%AindexcharLength%++) {
  variables.A_LoopField = variables.characters%AindexcharLength%[variables.A_Index - 1]; // Using array notation to access characters
|nextbarcccketIwnatatataitgoneokdudeorelsleplsk|
)


removeCurlyBracet := 1


jsCodeLoopFix .= "lp|itsfortheloopfixinghhhhhhhhcksdvbdshjvds|" . AindexcharLength . "`n"
jsCodeLoopFix1 := "lp|itsfortheloopfixinghhhhhhhhcksdvbdshjvds|" . AindexcharLength
AindexcharLength++
jsCode .= jsCodeLoopFix1 . "`n" . var1
}



}
else if (SubStr(Trim(StrLower(A_LoopField)), 1, 7) = StrLower("Msgbox,")) && !(SubStr(Trim(StrLower(A_LoopField)), 1, 10) = StrLower("Msgbox, % ")) && (InStr(A_LoopField, " % ")) && (CountCommasWithoutBacktick(A_LoopField))
{



str := A_LoopField

str := StrReplace(str, "``,", "|comasdhkbdsjvfesvyessfe6uw7igfweiugvseuvk|la|")


s:=StrSplit(str,",").2
Options := s
Options := Trim(Options)


s:=StrSplit(str,",").3
Title := s
Title := Trim(Title)


s:=StrSplit(str,",").4
out2 := s

out2 := StrReplace(out2, " % ", "")

s:=StrSplit(str,",").5
timeoutMsgbox := s
timeoutMsgbox := Trim(timeoutMsgbox)


s:=StrSplit(str,",").6
toggleAwait := s
toggleAwait := Trim(toggleAwait)

out2 := StrReplace(out2, "|comasdhkbdsjvfesvyessfe6uw7igfweiugvseuvk|la|", "\,")

;MsgBox, % out2
out2 := Trim(out2)

line := varTraspiler(out2, 0)
;MsgBox, % line

if (Title = "")
{
Title := " "
}
if (line = "")
{
line := " "
}
if (Options = "")
{
Options := 0
}
if (timeoutMsgbox = "")
{
timeoutMsgbox := 0
}


if (toggleAwait = 1) or (toggleAwait = "")
{
var1 := "await showCustomMessageBox({},""" . Title . """, " . line . ", " . Options . ", " . timeoutMsgbox . ")"
}
else
{
var1 := "showCustomMessageBox({},""" . Title . """, " . line . ", " . Options . ", " . timeoutMsgbox . ")"
}
;MsgBox, % var1
lineDone := 1
jsCode .= var1 . "`n"

}
else if (SubStr(Trim(StrLower(A_LoopField)), 1, 7) = StrLower("Msgbox,")) && !(SubStr(Trim(StrLower(A_LoopField)), 1, 10) = StrLower("Msgbox, % ")) && !(InStr(A_LoopField, " % ")) && (CountCommasWithoutBacktick(A_LoopField))
{



str := A_LoopField

str := StrReplace(str, "``,", "|comasdhkbdsjvfesvyessfe6uw7igfweiugvseuvk|la|")


s:=StrSplit(str,",").2
Options := s
Options := Trim(Options)


s:=StrSplit(str,",").3
Title := s
Title := Trim(Title)


s:=StrSplit(str,", ").4
var1 := s
numOfProcentSings := 0
;MsgBox, % var1
Loop, Parse, var1
{
if (A_LoopField = "%")
{
numOfProcentSings++
}
}
Loop, %numOfProcentSings%
{
; Find the position of the first occurrence of "%"
if (InStr(var1, "%"))
{
pos := InStr(var1, "%")

; Replace only the first occurrence of "%" with "|"
var1 := SubStr(var1, 1, pos-1) . """ + variables." . SubStr(var1, pos+1)
pos := InStr(var1, "%")
var1 := SubStr(var1, 1, pos-1) . " + """ . SubStr(var1, pos+1)
}
else
{
break
}
}

out2 := var1

out2 := """" . out2 . """"

s:=StrSplit(str,",").5
timeoutMsgbox := s
timeoutMsgbox := Trim(timeoutMsgbox)


s:=StrSplit(str,",").6
toggleAwait := s
toggleAwait := Trim(toggleAwait)

out2 := StrReplace(out2, "|comasdhkbdsjvfesvyessfe6uw7igfweiugvseuvk|la|", "\,")

;MsgBox, % out2
out2 := Trim(out2)

line := out2
;MsgBox, % line

if (Title = "")
{
Title := " "
}
if (line = "")
{
line := " "
}
if (Options = "")
{
Options := 0
}
if (timeoutMsgbox = "")
{
timeoutMsgbox := 0
}


if (toggleAwait = 1) or (toggleAwait = "")
{
var1 := "await showCustomMessageBox({},""" . Title . """, " . line . ", " . Options . ", " . timeoutMsgbox . ")"
}
else
{
var1 := "showCustomMessageBox({},""" . Title . """, " . line . ", " . Options . ", " . timeoutMsgbox . ")"
}
;MsgBox, % var1
lineDone := 1
jsCode .= var1 . "`n"

}
else if (SubStr(Trim(StrLower(A_LoopField)), 1, 7) = StrLower("Msgbox,")) && !(SubStr(Trim(StrLower(A_LoopField)), 1, 10) = StrLower("Msgbox, % ")) && (!(InStr(A_LoopField, " % "))) && (lineDone != 1) && !(CountCommasWithoutBacktick(A_LoopField))
{

;MsgBox, IT WORKS
str := A_LoopField


str := StrReplace(str, "``,", "|comasdhkbdsjvfesvyessfe6uw7igfweiugvseuvk|la|")


s := RegExMatch(str, "i)Msgbox,(.*)", match) ? match1 : ""
out2 := s


lineDone := 1


;MsgBox, % out2
out2 := Trim(out2)

var1 := out2

numOfProcentSings := 0
Loop, Parse, var1
{
if (A_LoopField = "%")
{
numOfProcentSings++
}
}
Loop, %numOfProcentSings%
{
; Find the position of the first occurrence of "%"
if (InStr(var1, "%"))
{
pos := InStr(var1, "%")

; Replace only the first occurrence of "%" with "|"
var1 := SubStr(var1, 1, pos-1) . """ + variables." . SubStr(var1, pos+1)
pos := InStr(var1, "%")
var1 := SubStr(var1, 1, pos-1) . " + """ . SubStr(var1, pos+1)
}
else
{
break
}
}
;MsgBox % var1

;MsgBox % var1

out2 := StrReplace(out2, "|comasdhkbdsjvfesvyessfe6uw7igfweiugvseuvk|la|", "\,")
out2 := Trim(out2)

Title := " "
Options := 0
timeoutMsgbox := 0


var1 := "await showCustomMessageBox({},""" . Title . """, """ . var1 . " "", " . Options . ", " . timeoutMsgbox . ")"
jsCode .= var1 . "`n"


}
else if (SubStr(Trim(StrLower(A_LoopField)), 1, 9) = StrLower("Msgbox, %"))
{
lineDone := 1

str := A_LoopField

s := RegExMatch(str, "i)MsgBox, %(.*)", match) ? match1 : ""
out2 := s



;MsgBox, % out2
out2 := Trim(out2)
;MsgBox, % out2
line := varTraspiler(out2, 0)
;MsgBox, % line
var1 := "await showCustomMessageBox({}," . """ """ .  ", " . line . ", " . 0 . ", " . 0. ")"
;MsgBox, % var1
jsCode .= var1 . "`n"

}
else if (SubStr(Trim(StrLower(A_LoopField)), 1, 11) = StrLower("OutputDebug"))
{
str := A_LoopField

isOutputDebugWhitWhatMode := 0
if (SubStr(Trim(StrLower(A_LoopField)), 1, 14) = StrLower("OutputDebug, %"))
{
s := RegExMatch(str, "i)OutputDebug, %(.*)", match) ? match1 : ""
out2 := s
isOutputDebugWhitWhatMode := 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 12) = StrLower("OutputDebug,")) && !(SubStr(Trim(StrLower(A_LoopField)), 1, 15) = StrLower("OutputDebug, % "))
{
s := RegExMatch(str, "i)OutputDebug,(.*)", match) ? match1 : ""
out2 := s
isOutputDebugWhitWhatMode := 2
}
lineDone := 1

if (isOutputDebugWhitWhatMode = 1)
{

;MsgBox, % out2
out2 := Trim(out2)

line := varTraspiler(out2, 0)
;MsgBox, % line
var1 := "console.log(""" . line . """)"
jsCode .= var1 . "`n"
}
if (isOutputDebugWhitWhatMode = 2)
{
;MsgBox, % out2
out2 := Trim(out2)


var1 := out2

numOfProcentSings := 0
Loop, Parse, var1
{
if (A_LoopField = "%")
{
numOfProcentSings++
}
}
Loop, %numOfProcentSings%
{
; Find the position of the first occurrence of "%"
if (InStr(var1, "%"))
{
pos := InStr(var1, "%")

; Replace only the first occurrence of "%" with "|"
var1 := SubStr(var1, 1, pos-1) . """ + variables." . SubStr(var1, pos+1)
pos := InStr(var1, "%")
var1 := SubStr(var1, 1, pos-1) . " + """ . SubStr(var1, pos+1)

}
else
{
break
}
}
;MsgBox % var1


;MsgBox, % line
var1 := "console.log(""" . var1 . " "")"

jsCode .= var1 . "`n"
}

}
else if (SubStr(Trim(StrLower(A_LoopField)), 1, 17) = StrLower("StringTrimRight, "))
{
lineDone := 1




str := A_LoopField

s := RegExMatch(str, "i)StringTrimRight, (.*)", match) ? match1 : ""
out2 := s

;MsgBox, |%out2%|


str := out2

s:=StrSplit(str,",").1
ou1 := s

s:=StrSplit(str,",").2
ou2 := s

s:=StrSplit(str,",").3
ou3 := s



;MsgBox, % out2
ou1 := Trim(ou1)
ou2 := Trim(ou2)
ou3 := Trim(ou3)

;MsgBox, |%ou1%|
;MsgBox, |%ou2%|
;MsgBox, |%ou3%|
;MsgBox, % line
variables .= "  " . ou2 . ": null," . "`n"

var1 =
(
variables.%ou1% = StringTrimRight(variables.%ou2%, %ou3%);
)

jsCode .= var1 . "`n"

}
else if (SubStr(Trim(StrLower(A_LoopField)), 1, 16) = StrLower("StringTrimLeft, "))
{
lineDone := 1


str := A_LoopField

s := RegExMatch(str, "i)StringTrimLeft, (.*)", match) ? match1 : ""
out2 := s

;MsgBox, |%out2%|


str := out2

s:=StrSplit(str,",").1
ou1 := s

s:=StrSplit(str,",").2
ou2 := s

s:=StrSplit(str,",").3
ou3 := s



;MsgBox, % out2
ou1 := Trim(ou1)
ou2 := Trim(ou2)
ou3 := Trim(ou3)

;MsgBox, |%ou1%|
;MsgBox, |%ou2%|
;MsgBox, |%ou3%|
;MsgBox, % line

variables .= "  " . ou2 . ": null," . "`n"
var1 =
(
variables.%ou1% = StringTrimLeft(variables.%ou2%, %ou3%);
)

jsCode .= var1 . "`n"

}
else if (SubStr(Trim(A_LoopField), 1, 7) == "return ")
{
lineDone := 1


str := A_LoopField

s := RegExMatch(str, "i)return (.*)", match) ? match1 : ""
out2 := s
;MsgBox, |%out2%|

;MsgBox, % out2
out2 := Trim(out2)
;MsgBox, % out2
if (SubStr(Trim(out2), 1, 1) = """")
{
line := Trim(out2)
var1 := "return " . line

}
else
{
line := varTraspiler(out2, 0)
line := Trim(line)
var1 := "return " . line
}
var1 := StrReplace(var1, "return \""", "return """"")

jsCode .= var1 . "`n"

}
else if (SubStr(Trim(StrLower(A_LoopField)), 1, 10) = "inputbox, ")
{


lineDone := 1
str := A_LoopField

s := RegExMatch(str, "i)InputBox, (.*)", match) ? match1 : ""
out2 := s

;MsgBox, |%out2%|


str := out2

s:=StrSplit(str,",").1
ou1 := s

s:=StrSplit(str,",").2
ou2 := s

s:=StrSplit(str,",").3
ou3 := s



;MsgBox, % out2
ou1 := Trim(ou1)
ou2 := Trim(ou2)
ou3 := Trim(ou3)

;MsgBox, |%ou1%|
;MsgBox, |%ou2%|
;MsgBox, |%ou3%|
;MsgBox, % line

variables .= "  " . ou1 . ": null," . "`n"

if (ou3 = "")
{
   ou3 := ou2
}

var1 =
(
variables.%ou1% = prompt('%ou3%');
)

jsCode .= var1 . "`n"

}
else if (SubStr(Trim(StrLower(A_LoopField)), 1, 7) = "gosub, ")
{

;MsgBox, % A_LoopField


str := A_LoopField

s:=StrSplit(str,",").2
out1 := s

out1 := Trim(out1)

out2 := "await " . out1 . "()"

;MsgBox, % out2
lineDone := 1
jsCode .= out2 . "`n"

}
else if (SubStr(Trim(StrLower(A_LoopField)), 1, 12) = "fileappend, ")
{

str := A_LoopField

s:=StrSplit(str,",").2
out1 := Trim(s)

s:=StrSplit(str,",").3
out2 := Trim(s)

if (InStr(out1, "%"))
{
out1 := varTraspiler(out1, 0)
}
;~ MsgBox, |%out1%|
;~ MsgBox, |%out2%|



out3 := "FileAppend(" . out1 . ", """ . out2 . """)"

;MsgBox, % out3

jsCode .= out3 . "`n"

lineDone := 1
}
else if (SubStr(Trim(StrLower(A_LoopField)), 1, 10) = "settimer, ")
{

IsNumber(var) {
    return RegExMatch(var, "^\d+(\.\d+)?$")
}

str := A_LoopField

s:=StrSplit(str,",").2
out1 := Trim(s)

s:=StrSplit(str,",").3
out2 := Trim(s)

;~ MsgBox, |%out1%|
;~ MsgBox, |%out2%|


myVar := out2

if (IsNumber(myVar)) {
    ;MsgBox, % "The variable is a number."

out3 := "SetTimer(" . out1 . ", " . out2 . ")"

}
else
{

if (StrLower(out2) = "off")
{
  out2 := "Off"
}
else
{
out2 := "On"
}

;MsgBox, % "The variable is not a number."
out3 := "SetTimer(" . out1 . ", """ . out2 . """)"
}
;MsgBox, % out3

jsCode .= out3 . "`n"


lineDone := 1
}
else if (SubStr(Trim(StrLower(A_LoopField)), 1, 5) = StrLower("Gui, ")) or (SubStr(Trim(StrLower(A_LoopField)), 1, 4) = StrLower("Gui "))
{




str := A_LoopField

str := StrReplace(str, ": ", ", ")

s:=StrSplit(str,",").1
out1 := Trim(s)
;MsgBox, % out1

GuiNumberOld := GuiNumber
GuiNumber := RegExReplace(out1, "\D", "")


if (GuiNumber = "")
{
GuiNumber := 1

}


if (GuiNumberOld != GuiNumber)
{
onceGuiAdd := 1
}


s:=StrSplit(str,", ").2
out2 := StrLower(Trim(s))

s:=StrSplit(str,", ").3
s := Trim(s)
if (out2 != "show")
{
out3 := StrLower(Trim(s))
}
else
{
out3 := Trim(s)
}

s:=StrSplit(str,", ").4
out4 := Trim(s)

s:=StrSplit(str,", ").5
out5 := Trim(s)


if (onceGuiAdd = 1)
{
jsCodeGui .= "`nlet Gui" . GuiNumber . " = {};`nGui" . GuiNumber . " = document.createElement(""div"")`;`n"
NumOfButtons := 0
}
onceGuiAdd++


;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;

if (out2 = "color")
{

out3 := Trim(out3)
guiColorShow := out3
;MsgBox, % guiColorShow
}



if (out2 = "font")
{

out3 := Trim(out3)
StringTrimLeft, out3, out3, 1
guiFontShow := out3
}



if (out2 = "add")
{

if (out3 = "text")
{
guiOutOfTextNum := 0
guiOutOfTextC := 0
guiOutOfTextX := 0
guiOutOfTextY := 0
guiOutOfTextW := 0
guiOutOfTextH := 0
guiOutOfTextV := 0
guiOutOfTextG := 0
Loop, 6
{
guiOutOfText%A_Index% := ""
}
guiOutOfText0 := "black"
dynamicGuiSet := 0
Loop, Parse, out4, " "
{
;MsgBox, |%A_LoopField%|

guiOutOfTextNum++
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("c"))
{
guiOutOfTextC := 1
guiOutOfText0 := StrLower(A_LoopField)
if (InStr(guiOutOfText0, "%"))
{
str := guiOutOfText0
s:=StrSplit(str,"%").2
var1 := s

guiOutOfText0 :=  " """" + variables." . var1 . " + """
}
StringTrimLeft, guiOutOfText0, guiOutOfText0, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("x"))
{
guiOutOfTextX := 1
guiOutOfText1 := A_LoopField
if (InStr(guiOutOfText1, "%"))
{
str := guiOutOfText1
s:=StrSplit(str,"%").2
var1 := s

guiOutOfText1 :=  " """" + variables." . var1 . " + """
}
StringTrimLeft, guiOutOfText1, guiOutOfText1, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("y"))
{
guiOutOfTextY := 1
guiOutOfText2 := A_LoopField
if (InStr(guiOutOfText2, "%"))
{
str := guiOutOfText2
s:=StrSplit(str,"%").2
var1 := s

guiOutOfText2 :=  " """" + variables." . var1 . " + """
}
StringTrimLeft, guiOutOfText2, guiOutOfText2, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("w"))
{
guiOutOfTextW := 1
guiOutOfText3 := A_LoopField
if (InStr(guiOutOfText3, "%"))
{
str := guiOutOfText3
s:=StrSplit(str,"%").2
var1 := s

guiOutOfText3 :=  " """" + variables." . var1 . " + """
}
StringTrimLeft, guiOutOfText3, guiOutOfText3, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("h"))
{
guiOutOfTextH := 1
guiOutOfText4 := A_LoopField
if (InStr(guiOutOfText4, "%"))
{
str := guiOutOfText4
s:=StrSplit(str,"%").2
var1 := s

guiOutOfText4 :=  " """" + variables." . var1 . " + """
}
StringTrimLeft, guiOutOfText4, guiOutOfText4, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("v"))
{
guiOutOfTextV := 1
guiOutOfText5 := A_LoopField
guiOutOfText52 := A_LoopField
dynamicGuiSet := 1
if (InStr(guiOutOfText5, "%"))
{
str := guiOutOfText5
s:=StrSplit(str,"%").2
var1 := s

guiOutOfText5 :=  " [variables." . var1 . "]"
guiOutOfText52 :=  " "" + [variables." . var1 . "]" . " + " . """"
}
StringTrimLeft, guiOutOfText5, guiOutOfText5, 1
StringTrimLeft, guiOutOfText52, guiOutOfText52, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("g"))
{
guiOutOfTextG := 1
guiOutOfText6 := A_LoopField
StringTrimLeft, guiOutOfText6, guiOutOfText6, 1
}
}

NumOfTexts++


if (InStr(out5, "%"))
{
str := out5
s:=StrSplit(str,"%").2
var1 := s

out5 :=  """"" + variables." . var1 . " + """""


}

if (dynamicGuiSet = 0)
{

if (guiOutOfTextV = 1)
{
if (guiOutOfTextG = 1)
{
jsCode0 =
(

Gui%GuiNumber%%guiOutOfText5% = document.createElement("div");
Gui%GuiNumber%%guiOutOfText5%.id = "Gui%GuiNumber%" + "%guiOutOfText52%"; // Set ID for referencing
Gui%GuiNumber%%guiOutOfText5%.textContent = "%out5%";
Gui%GuiNumber%%guiOutOfText5%.style.color = "#%guiOutOfText0%"
Gui%GuiNumber%%guiOutOfText5%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%%guiOutOfText5%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%%guiOutOfText5%.style.left = "%guiOutOfText1%px"; // Set initial x position
Gui%GuiNumber%%guiOutOfText5%.style.top = "%guiOutOfText2%px"; // Set initial y position
Gui%GuiNumber%%guiOutOfText5%.style.width = "%guiOutOfText3%px"; // Set width
Gui%GuiNumber%%guiOutOfText5%.style.height = "%guiOutOfText4%px"; // Set height
Gui%GuiNumber%%guiOutOfText5%.onclick = function (event) {
variables.A_GuiControl = event.target.id.replace(/^Gui\d*/, "");
  %guiOutOfText6%(variables.A_GuiControl);
};
Gui%GuiNumber%.appendChild(Gui%GuiNumber%%guiOutOfText5%);

)

jsCode .= "`n" . jsCode0 . "`n"

}
else
{
jsCode0 =
(

Gui%GuiNumber%%guiOutOfText5% = document.createElement("div");
Gui%GuiNumber%%guiOutOfText5%.id = "Gui%GuiNumber%" + "%guiOutOfText52%"; // Set ID for referencing
Gui%GuiNumber%%guiOutOfText5%.textContent = "%out5%";
Gui%GuiNumber%%guiOutOfText5%.style.color = "#%guiOutOfText0%"
Gui%GuiNumber%%guiOutOfText5%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%%guiOutOfText5%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%%guiOutOfText5%.style.left = "%guiOutOfText1%px"; // Set initial x position
Gui%GuiNumber%%guiOutOfText5%.style.top = "%guiOutOfText2%px"; // Set initial y position
Gui%GuiNumber%%guiOutOfText5%.style.width = "%guiOutOfText3%px"; // Set width
Gui%GuiNumber%%guiOutOfText5%.style.height = "%guiOutOfText4%px"; // Set height
Gui%GuiNumber%.appendChild(Gui%GuiNumber%%guiOutOfText5%);

)

jsCode .= "`n" . jsCode0 . "`n"

}
}
else
{
if (guiOutOfTextG = 1)
{
jsCode0 =
(

Gui%GuiNumber%Static%NumOfTexts% = document.createElement("div");
Gui%GuiNumber%Static%NumOfTexts%.id = "Gui%GuiNumber%" + "Static" + "%NumOfTexts%"; // Set ID for referencing
Gui%GuiNumber%Static%NumOfTexts%.textContent = "%out5%";
Gui%GuiNumber%Static%NumOfTexts%.style.color = "#%guiOutOfText0%"
Gui%GuiNumber%Static%NumOfTexts%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%Static%NumOfTexts%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%Static%NumOfTexts%.style.left = "%guiOutOfText1%px"; // Set initial x position
Gui%GuiNumber%Static%NumOfTexts%.style.top = "%guiOutOfText2%px"; // Set initial y position
Gui%GuiNumber%Static%NumOfTexts%.style.width = "%guiOutOfText3%px"; // Set width
Gui%GuiNumber%Static%NumOfTexts%.style.height = "%guiOutOfText4%px"; // Set height
Gui%GuiNumber%Static%NumOfTexts%.onclick = function (event) {
variables.A_GuiControl = event.target.textContent
  %guiOutOfText6%(variables.A_GuiControl);
};
Gui%GuiNumber%.appendChild(Gui%GuiNumber%Static%NumOfTexts%);

)

jsCode .= "`n" . jsCode0 . "`n"
}
else
{
jsCode0 =
(

Gui%GuiNumber%Static%NumOfTexts% = document.createElement("div");
Gui%GuiNumber%Static%NumOfTexts%.id = "Gui%GuiNumber%" + "Static" + "%NumOfTexts%"; // Set ID for referencing
Gui%GuiNumber%Static%NumOfTexts%.textContent = "%out5%";
Gui%GuiNumber%Static%NumOfTexts%.style.color = "#%guiOutOfText0%"
Gui%GuiNumber%Static%NumOfTexts%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%Static%NumOfTexts%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%Static%NumOfTexts%.style.left = "%guiOutOfText1%px"; // Set initial x position
Gui%GuiNumber%Static%NumOfTexts%.style.top = "%guiOutOfText2%px"; // Set initial y position
Gui%GuiNumber%Static%NumOfTexts%.style.width = "%guiOutOfText3%px"; // Set width
Gui%GuiNumber%Static%NumOfTexts%.style.height = "%guiOutOfText4%px"; // Set height
Gui%GuiNumber%.appendChild(Gui%GuiNumber%Static%NumOfTexts%);

)

jsCode .= "`n" . jsCode0 . "`n"
}
}

}
else ; else ; else ; else ; else ; else ; else ; else ; else
{
if (guiOutOfTextV = 1)
{
if (guiOutOfTextG = 1)
{
jsCode0 =
(



Gui%GuiNumber%%guiOutOfText5% = document.createElement("div");
Gui%GuiNumber%%guiOutOfText5%.id = "Gui%GuiNumber%" + "%guiOutOfText52%"; // Set ID for referencing
Gui%GuiNumber%%guiOutOfText5%.textContent = "%out5%";
Gui%GuiNumber%%guiOutOfText5%.style.color = "#%guiOutOfText0%"
Gui%GuiNumber%%guiOutOfText5%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%%guiOutOfText5%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%%guiOutOfText5%.style.left = "%guiOutOfText1%px"; // Set initial x position
Gui%GuiNumber%%guiOutOfText5%.style.top = "%guiOutOfText2%px"; // Set initial y position
Gui%GuiNumber%%guiOutOfText5%.style.width = "%guiOutOfText3%px"; // Set width
Gui%GuiNumber%%guiOutOfText5%.style.height = "%guiOutOfText4%px"; // Set height
Gui%GuiNumber%%guiOutOfText5%.onclick = function (event) {
variables.A_GuiControl = event.target.id.replace(/^Gui\d*/, "");
  %guiOutOfText6%(variables.A_GuiControl);
};
Gui%GuiNumber%.appendChild(Gui%GuiNumber%%guiOutOfText5%);

)

jsCode .= "`n" . jsCode0 . "`n"

}
else
{
jsCode0 =
(

Gui%GuiNumber%%guiOutOfText5% = document.createElement("div");
Gui%GuiNumber%%guiOutOfText5%.id = "Gui%GuiNumber%" + "%guiOutOfText52%"; // Set ID for referencing
Gui%GuiNumber%%guiOutOfText5%.textContent = "%out5%";
Gui%GuiNumber%%guiOutOfText5%.style.color = "#%guiOutOfText0%"
Gui%GuiNumber%%guiOutOfText5%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%%guiOutOfText5%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%%guiOutOfText5%.style.left = "%guiOutOfText1%px"; // Set initial x position
Gui%GuiNumber%%guiOutOfText5%.style.top = "%guiOutOfText2%px"; // Set initial y position
Gui%GuiNumber%%guiOutOfText5%.style.width = "%guiOutOfText3%px"; // Set width
Gui%GuiNumber%%guiOutOfText5%.style.height = "%guiOutOfText4%px"; // Set height
Gui%GuiNumber%.appendChild(Gui%GuiNumber%%guiOutOfText5%);

)

jsCode .= "`n" . jsCode0 . "`n"

}
}
else
{
if (guiOutOfTextG = 1)
{
jsCode0 =
(

Gui%GuiNumber%Static%NumOfTexts% = document.createElement("div");
Gui%GuiNumber%Static%NumOfTexts%.id = "Gui%GuiNumber%" + "Static" + "%NumOfTexts%"; // Set ID for referencing
Gui%GuiNumber%Static%NumOfTexts%.textContent = "%out5%";
Gui%GuiNumber%Static%NumOfTexts%.style.color = "#%guiOutOfText0%"
Gui%GuiNumber%Static%NumOfTexts%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%Static%NumOfTexts%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%Static%NumOfTexts%.style.left = "%guiOutOfText1%px"; // Set initial x position
Gui%GuiNumber%Static%NumOfTexts%.style.top = "%guiOutOfText2%px"; // Set initial y position
Gui%GuiNumber%Static%NumOfTexts%.style.width = "%guiOutOfText3%px"; // Set width
Gui%GuiNumber%Static%NumOfTexts%.style.height = "%guiOutOfText4%px"; // Set height
Gui%GuiNumber%Static%NumOfTexts%.onclick = function (event) {
variables.A_GuiControl = event.target.textContent
  %guiOutOfText6%(variables.A_GuiControl);
};
Gui%GuiNumber%.appendChild(Gui%GuiNumber%Static%NumOfTexts%);


)

jsCode .= "`n" . jsCode0 . "`n"
}
else
{
jsCode0 =
(

Gui%GuiNumber%Static%NumOfTexts% = document.createElement("div");
Gui%GuiNumber%Static%NumOfTexts%.id = "Gui%GuiNumber%" + "Static" + "%NumOfTexts%"; // Set ID for referencing
Gui%GuiNumber%Static%NumOfTexts%.textContent = "%out5%";
Gui%GuiNumber%Static%NumOfTexts%.style.color = "#%guiOutOfText0%"
Gui%GuiNumber%Static%NumOfTexts%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%Static%NumOfTexts%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%Static%NumOfTexts%.style.left = "%guiOutOfText1%px"; // Set initial x position
Gui%GuiNumber%Static%NumOfTexts%.style.top = "%guiOutOfText2%px"; // Set initial y position
Gui%GuiNumber%Static%NumOfTexts%.style.width = "%guiOutOfText3%px"; // Set width
Gui%GuiNumber%Static%NumOfTexts%.style.height = "%guiOutOfText4%px"; // Set height
Gui%GuiNumber%.appendChild(Gui%GuiNumber%Static%NumOfTexts%);

)

jsCode .= "`n" . jsCode0 . "`n"
}
}
}



}



if (out3 = "button")
{

guiOutOfButtonNum := 0
guiOutOfButtonX := 0
guiOutOfButtonY := 0
guiOutOfButtonW := 0
guiOutOfButtonH := 0
guiOutOfButtonV := 0
guiOutOfButtonG := 0
Loop, 6
{
guiOutOfButton%A_Index% := ""
}
dynamicGuiSet := 0
Loop, Parse, out4, " "
{
;MsgBox, |%A_LoopField%|

guiOutOfButtonNum++

if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("x"))
{
guiOutOfButtonX := 1
guiOutOfButton1 := A_LoopField
if (InStr(guiOutOfButton1, "%"))
{
str := guiOutOfButton1
s:=StrSplit(str,"%").2
var1 := s

guiOutOfButton1 :=  " """" + variables." . var1 . " + """
}
StringTrimLeft, guiOutOfButton1, guiOutOfButton1, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("y"))
{
guiOutOfButtonY := 1
guiOutOfButton2 := A_LoopField
if (InStr(guiOutOfButton2, "%"))
{
str := guiOutOfButton2
s:=StrSplit(str,"%").2
var1 := s

guiOutOfButton2 :=  " """" + variables." . var1 . " + """
}
StringTrimLeft, guiOutOfButton2, guiOutOfButton2, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("w"))
{
guiOutOfButtonW := 1
guiOutOfButton3 := A_LoopField
if (InStr(guiOutOfButton3, "%"))
{
str := guiOutOfButton3
s:=StrSplit(str,"%").2
var1 := s

guiOutOfButton3 :=  " """" + variables." . var1 . " + """
}
StringTrimLeft, guiOutOfButton3, guiOutOfButton3, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("h"))
{
guiOutOfButtonH := 1
guiOutOfButton4 := A_LoopField
if (InStr(guiOutOfButton4, "%"))
{
str := guiOutOfButton4
s:=StrSplit(str,"%").2
var1 := s

guiOutOfButton4 :=  " """" + variables." . var1 . " + """
}
StringTrimLeft, guiOutOfButton4, guiOutOfButton4, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("v"))
{
guiOutOfButtonV := 1
guiOutOfButton5 := A_LoopField
guiOutOfButton52 := A_LoopField
dynamicGuiSet := 1
if (InStr(guiOutOfButton5, "%"))
{
str := guiOutOfButton5
s:=StrSplit(str,"%").2
var1 := s

guiOutOfButton5 :=  " [variables." . var1 . "]"
guiOutOfButton52 :=  " "" + [variables." . var1 . "]" . " + " . """"
}
StringTrimLeft, guiOutOfButton5, guiOutOfButton5, 1
StringTrimLeft, guiOutOfButton52, guiOutOfButton52, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("g"))
{
guiOutOfButtonG := 1
guiOutOfButton6 := A_LoopField
StringTrimLeft, guiOutOfButton6, guiOutOfButton6, 1
}
}

NumOfButtons++


if (InStr(out5, "%"))
{
str := out5
s:=StrSplit(str,"%").2
var1 := s

out5 :=  """"" + variables." . var1 . " + """""


}

if (dynamicGuiSet = 0)
{

if (guiOutOfButtonV = 1)
{
if (guiOutOfButtonG = 1)
{
jsCode0 =
(

Gui%GuiNumber%%guiOutOfButton5% = document.createElement("button");
Gui%GuiNumber%%guiOutOfButton5%.id = "Gui%GuiNumber%" + "%guiOutOfButton52%"; // Set ID for referencing
Gui%GuiNumber%%guiOutOfButton5%.textContent = "%out5%";
Gui%GuiNumber%%guiOutOfButton5%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%%guiOutOfButton5%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%%guiOutOfButton5%.style.left = "%guiOutOfButton1%px"; // Set initial x position
Gui%GuiNumber%%guiOutOfButton5%.style.top = "%guiOutOfButton2%px"; // Set initial y position
Gui%GuiNumber%%guiOutOfButton5%.style.width = "%guiOutOfButton3%px"; // Set width
Gui%GuiNumber%%guiOutOfButton5%.style.height = "%guiOutOfButton4%px"; // Set height
Gui%GuiNumber%%guiOutOfButton5%.onclick = function (event) {
variables.A_GuiControl = event.target.id.replace(/^Gui\d*/, "");
  %guiOutOfButton6%(variables.A_GuiControl);
};
Gui%GuiNumber%.appendChild(Gui%GuiNumber%%guiOutOfButton5%);

)

jsCode .= "`n" . jsCode0 . "`n"

}
else
{
jsCode0 =
(

Gui%GuiNumber%%guiOutOfButton5% = document.createElement("button");
Gui%GuiNumber%%guiOutOfButton5%.id = "Gui%GuiNumber%" + "%guiOutOfButton52%"; // Set ID for referencing
Gui%GuiNumber%%guiOutOfButton5%.textContent = "%out5%";
Gui%GuiNumber%%guiOutOfButton5%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%%guiOutOfButton5%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%%guiOutOfButton5%.style.left = "%guiOutOfButton1%px"; // Set initial x position
Gui%GuiNumber%%guiOutOfButton5%.style.top = "%guiOutOfButton2%px"; // Set initial y position
Gui%GuiNumber%%guiOutOfButton5%.style.width = "%guiOutOfButton3%px"; // Set width
Gui%GuiNumber%%guiOutOfButton5%.style.height = "%guiOutOfButton4%px"; // Set height
Gui%GuiNumber%.appendChild(Gui%GuiNumber%%guiOutOfButton5%);

)

jsCode .= "`n" . jsCode0 . "`n"

}
}
else
{
if (guiOutOfButtonG = 1)
{
jsCode0 =
(

Gui%GuiNumber%Button%NumOfButtons% = document.createElement("button");
Gui%GuiNumber%Button%NumOfButtons%.id = "Gui%GuiNumber%" + "Button" + "%NumOfButtons%"; // Set ID for referencing
Gui%GuiNumber%Button%NumOfButtons%.textContent = "%out5%";
Gui%GuiNumber%Button%NumOfButtons%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%Button%NumOfButtons%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%Button%NumOfButtons%.style.left = "%guiOutOfButton1%px"; // Set initial x position
Gui%GuiNumber%Button%NumOfButtons%.style.top = "%guiOutOfButton2%px"; // Set initial y position
Gui%GuiNumber%Button%NumOfButtons%.style.width = "%guiOutOfButton3%px"; // Set width
Gui%GuiNumber%Button%NumOfButtons%.style.height = "%guiOutOfButton4%px"; // Set height
Gui%GuiNumber%Button%NumOfButtons%.onclick = function (event) {
variables.A_GuiControl = event.target.textContent
  %guiOutOfButton6%(variables.A_GuiControl);
};
Gui%GuiNumber%.appendChild(Gui%GuiNumber%Button%NumOfButtons%);

)

jsCode .= "`n" . jsCode0 . "`n"
}
else
{
jsCode0 =
(

Gui%GuiNumber%Button%NumOfButtons% = document.createElement("button");
Gui%GuiNumber%Button%NumOfButtons%.id = "Gui%GuiNumber%" + "Button" + "%NumOfButtons%"; // Set ID for referencing
Gui%GuiNumber%Button%NumOfButtons%.textContent = "%out5%";
Gui%GuiNumber%Button%NumOfButtons%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%Button%NumOfButtons%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%Button%NumOfButtons%.style.left = "%guiOutOfButton1%px"; // Set initial x position
Gui%GuiNumber%Button%NumOfButtons%.style.top = "%guiOutOfButton2%px"; // Set initial y position
Gui%GuiNumber%Button%NumOfButtons%.style.width = "%guiOutOfButton3%px"; // Set width
Gui%GuiNumber%Button%NumOfButtons%.style.height = "%guiOutOfButton4%px"; // Set height
Gui%GuiNumber%.appendChild(Gui%GuiNumber%Button%NumOfButtons%);

)

jsCode .= "`n" . jsCode0 . "`n"
}
}

}
else ; else ; else ; else ; else ; else ; else ; else ; else
{
if (guiOutOfButtonV = 1)
{
if (guiOutOfButtonG = 1)
{
jsCode0 =
(



Gui%GuiNumber%%guiOutOfButton5% = document.createElement("button");
Gui%GuiNumber%%guiOutOfButton5%.id = "Gui%GuiNumber%" + "%guiOutOfButton52%"; // Set ID for referencing
Gui%GuiNumber%%guiOutOfButton5%.textContent = "%out5%";
Gui%GuiNumber%%guiOutOfButton5%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%%guiOutOfButton5%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%%guiOutOfButton5%.style.left = "%guiOutOfButton1%px"; // Set initial x position
Gui%GuiNumber%%guiOutOfButton5%.style.top = "%guiOutOfButton2%px"; // Set initial y position
Gui%GuiNumber%%guiOutOfButton5%.style.width = "%guiOutOfButton3%px"; // Set width
Gui%GuiNumber%%guiOutOfButton5%.style.height = "%guiOutOfButton4%px"; // Set height
Gui%GuiNumber%%guiOutOfButton5%.onclick = function (event) {
variables.A_GuiControl = event.target.id.replace(/^Gui\d*/, "");
  %guiOutOfButton6%(variables.A_GuiControl);
};
Gui%GuiNumber%.appendChild(Gui%GuiNumber%%guiOutOfButton5%);

)

jsCode .= "`n" . jsCode0 . "`n"

}
else
{
jsCode0 =
(

Gui%GuiNumber%%guiOutOfButton5% = document.createElement("button");
Gui%GuiNumber%%guiOutOfButton5%.id = "Gui%GuiNumber%" + "%guiOutOfButton52%"; // Set ID for referencing
Gui%GuiNumber%%guiOutOfButton5%.textContent = "%out5%";
Gui%GuiNumber%%guiOutOfButton5%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%%guiOutOfButton5%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%%guiOutOfButton5%.style.left = "%guiOutOfButton1%px"; // Set initial x position
Gui%GuiNumber%%guiOutOfButton5%.style.top = "%guiOutOfButton2%px"; // Set initial y position
Gui%GuiNumber%%guiOutOfButton5%.style.width = "%guiOutOfButton3%px"; // Set width
Gui%GuiNumber%%guiOutOfButton5%.style.height = "%guiOutOfButton4%px"; // Set height
Gui%GuiNumber%.appendChild(Gui%GuiNumber%%guiOutOfButton5%);

)

jsCode .= "`n" . jsCode0 . "`n"

}
}
else
{
if (guiOutOfButtonG = 1)
{
jsCode0 =
(

Gui%GuiNumber%Button%NumOfButtons% = document.createElement("button");
Gui%GuiNumber%Button%NumOfButtons%.id = "Gui%GuiNumber%" + "Button" + "%NumOfButtons%"; // Set ID for referencing
Gui%GuiNumber%Button%NumOfButtons%.textContent = "%out5%";
Gui%GuiNumber%Button%NumOfButtons%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%Button%NumOfButtons%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%Button%NumOfButtons%.style.left = "%guiOutOfButton1%px"; // Set initial x position
Gui%GuiNumber%Button%NumOfButtons%.style.top = "%guiOutOfButton2%px"; // Set initial y position
Gui%GuiNumber%Button%NumOfButtons%.style.width = "%guiOutOfButton3%px"; // Set width
Gui%GuiNumber%Button%NumOfButtons%.style.height = "%guiOutOfButton4%px"; // Set height
Gui%GuiNumber%Button%NumOfButtons%.onclick = function (event) {
variables.A_GuiControl = event.target.textContent
  %guiOutOfButton6%(variables.A_GuiControl);
};
Gui%GuiNumber%.appendChild(Gui%GuiNumber%Button%NumOfButtons%);


)

jsCode .= "`n" . jsCode0 . "`n"
}
else
{
jsCode0 =
(

Gui%GuiNumber%Button%NumOfButtons% = document.createElement("button");
Gui%GuiNumber%Button%NumOfButtons%.id = "Gui%GuiNumber%" + "Button" + "%NumOfButtons%"; // Set ID for referencing
Gui%GuiNumber%Button%NumOfButtons%.textContent = "%out5%";
Gui%GuiNumber%Button%NumOfButtons%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%Button%NumOfButtons%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%Button%NumOfButtons%.style.left = "%guiOutOfButton1%px"; // Set initial x position
Gui%GuiNumber%Button%NumOfButtons%.style.top = "%guiOutOfButton2%px"; // Set initial y position
Gui%GuiNumber%Button%NumOfButtons%.style.width = "%guiOutOfButton3%px"; // Set width
Gui%GuiNumber%Button%NumOfButtons%.style.height = "%guiOutOfButton4%px"; // Set height
Gui%GuiNumber%.appendChild(Gui%GuiNumber%Button%NumOfButtons%);

)

jsCode .= "`n" . jsCode0 . "`n"
}
}
}





}



if (out3 = "edit")
{
guiOutOfEditNum := 0
guiOutOfEditX := 0
guiOutOfEditY := 0
guiOutOfEditW := 0
guiOutOfEditH := 0
guiOutOfEditV := 0
guiOutOfEditG := 0
Loop, 6
{
guiOutOfEdit%A_Index% := ""
}
dynamicGuiSet := 0
Loop, Parse, out4, " "
{
;MsgBox, |%A_LoopField%|

guiOutOfEditNum++

if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("x"))
{
guiOutOfEditX := 1
guiOutOfEdit1 := A_LoopField
if (InStr(guiOutOfEdit1, "%"))
{
str := guiOutOfEdit1
s:=StrSplit(str,"%").2
var1 := s

guiOutOfEdit1 :=  " """" + variables." . var1 . " + """
}
StringTrimLeft, guiOutOfEdit1, guiOutOfEdit1, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("y"))
{
guiOutOfEditY := 1
guiOutOfEdit2 := A_LoopField
if (InStr(guiOutOfEdit2, "%"))
{
str := guiOutOfEdit2
s:=StrSplit(str,"%").2
var1 := s

guiOutOfEdit2 :=  " """" + variables." . var1 . " + """
}
StringTrimLeft, guiOutOfEdit2, guiOutOfEdit2, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("w"))
{
guiOutOfEditW := 1
guiOutOfEdit3 := A_LoopField
if (InStr(guiOutOfEdit3, "%"))
{
str := guiOutOfEdit3
s:=StrSplit(str,"%").2
var1 := s

guiOutOfEdit3 :=  " """" + variables." . var1 . " + """
}
StringTrimLeft, guiOutOfEdit3, guiOutOfEdit3, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("h"))
{
guiOutOfEditH := 1
guiOutOfEdit4 := A_LoopField
if (InStr(guiOutOfEdit4, "%"))
{
str := guiOutOfEdit4
s:=StrSplit(str,"%").2
var1 := s

guiOutOfEdit4 :=  " """" + variables." . var1 . " + """
}
StringTrimLeft, guiOutOfEdit4, guiOutOfEdit4, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("v"))
{
guiOutOfEditV := 1
guiOutOfEdit5 := A_LoopField
guiOutOfEdit52 := A_LoopField
dynamicGuiSet := 1
if (InStr(guiOutOfEdit5, "%"))
{
str := guiOutOfEdit5
s:=StrSplit(str,"%").2
var1 := s

guiOutOfEdit5 :=  " [variables." . var1 . "]"
guiOutOfEdit52 :=  " "" + [variables." . var1 . "]" . " + " . """"
}
StringTrimLeft, guiOutOfEdit52, guiOutOfEdit52, 1
StringTrimLeft, guiOutOfEdit5, guiOutOfEdit5, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("g"))
{
guiOutOfEditG := 1
guiOutOfEdit6 := A_LoopField
StringTrimLeft, guiOutOfEdit6, guiOutOfEdit6, 1
}
}

NumOfEdits++


if (InStr(out5, "%"))
{
str := out5
s:=StrSplit(str,"%").2
var1 := s

out5 :=  """"" + variables." . var1 . " + """""


}

if (dynamicGuiSet = 0)
{

if (guiOutOfEditV = 1)
{
if (guiOutOfEditG = 1)
{
jsCode0 =
(

Gui%GuiNumber%%guiOutOfEdit5% = document.createElement("textarea");
Gui%GuiNumber%%guiOutOfEdit5%.id = "Gui%GuiNumber%" + "%guiOutOfEdit52%"; // Set ID for referencing
Gui%GuiNumber%%guiOutOfEdit5%.placeholder = "%out5%";
Gui%GuiNumber%%guiOutOfEdit5%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%%guiOutOfEdit5%.style.resize = "none"; // Disable resizing
Gui%GuiNumber%%guiOutOfEdit5%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%%guiOutOfEdit5%.style.left = "%guiOutOfEdit1%px"; // Set initial x position
Gui%GuiNumber%%guiOutOfEdit5%.style.top = "%guiOutOfEdit2%px"; // Set initial y position
Gui%GuiNumber%%guiOutOfEdit5%.style.width = "%guiOutOfEdit3%px"; // Set width
Gui%GuiNumber%%guiOutOfEdit5%.style.height = "%guiOutOfEdit4%px"; // Set height
Gui%GuiNumber%%guiOutOfEdit5%.addEventListener("input", function () {
variables.A_GuiControl = Gui%GuiNumber%%guiOutOfEdit5%.value
  %guiOutOfEdit6%(variables.A_GuiControl);
});
Gui%GuiNumber%.appendChild(Gui%GuiNumber%%guiOutOfEdit5%);

)

jsCode .= "`n" . jsCode0 . "`n"

}
else
{
jsCode0 =
(

Gui%GuiNumber%%guiOutOfEdit5% = document.createElement("textarea");
Gui%GuiNumber%%guiOutOfEdit5%.id = "Gui%GuiNumber%" + "%guiOutOfEdit52%"; // Set ID for referencing
Gui%GuiNumber%%guiOutOfEdit5%.placeholder = "%out5%";
Gui%GuiNumber%%guiOutOfEdit5%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%%guiOutOfEdit5%.style.resize = "none"; // Disable resizing
Gui%GuiNumber%%guiOutOfEdit5%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%%guiOutOfEdit5%.style.left = "%guiOutOfEdit1%px"; // Set initial x position
Gui%GuiNumber%%guiOutOfEdit5%.style.top = "%guiOutOfEdit2%px"; // Set initial y position
Gui%GuiNumber%%guiOutOfEdit5%.style.width = "%guiOutOfEdit3%px"; // Set width
Gui%GuiNumber%%guiOutOfEdit5%.style.height = "%guiOutOfEdit4%px"; // Set height
Gui%GuiNumber%.appendChild(Gui%GuiNumber%%guiOutOfEdit5%);

)

jsCode .= "`n" . jsCode0 . "`n"

}
}
else
{
if (guiOutOfEditG = 1)
{
jsCode0 =
(

Gui%GuiNumber%Edit%NumOfEdits% = document.createElement("textarea");
Gui%GuiNumber%Edit%NumOfEdits%.id = "Gui%GuiNumber%" + "Edit" + "%NumOfEdits%"; // Set ID for referencing
Gui%GuiNumber%Edit%NumOfEdits%.placeholder = "%out5%";
Gui%GuiNumber%Edit%NumOfEdits%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%Edit%NumOfEdits%.style.resize = "none"; // Disable resizing
Gui%GuiNumber%Edit%NumOfEdits%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%Edit%NumOfEdits%.style.left = "%guiOutOfEdit1%px"; // Set initial x position
Gui%GuiNumber%Edit%NumOfEdits%.style.top = "%guiOutOfEdit2%px"; // Set initial y position
Gui%GuiNumber%Edit%NumOfEdits%.style.width = "%guiOutOfEdit3%px"; // Set width
Gui%GuiNumber%Edit%NumOfEdits%.style.height = "%guiOutOfEdit4%px"; // Set height
Gui%GuiNumber%Edit%NumOfEdits%.addEventListener("input", function () {
variables.A_GuiControl = Gui%GuiNumber%Edit%NumOfEdits%.value
  %guiOutOfEdit6%(variables.A_GuiControl);
});
Gui%GuiNumber%.appendChild(Gui%GuiNumber%Edit%NumOfEdits%);

)

jsCode .= "`n" . jsCode0 . "`n"
}
else
{
jsCode0 =
(

Gui%GuiNumber%Edit%NumOfEdits% = document.createElement("textarea");
Gui%GuiNumber%Edit%NumOfEdits%.id = "Gui%GuiNumber%" + "Edit" + "%NumOfEdits%"; // Set ID for referencing
Gui%GuiNumber%Edit%NumOfEdits%.placeholder = "%out5%";
Gui%GuiNumber%Edit%NumOfEdits%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%Edit%NumOfEdits%.style.resize = "none"; // Disable resizing
Gui%GuiNumber%Edit%NumOfEdits%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%Edit%NumOfEdits%.style.left = "%guiOutOfEdit1%px"; // Set initial x position
Gui%GuiNumber%Edit%NumOfEdits%.style.top = "%guiOutOfEdit2%px"; // Set initial y position
Gui%GuiNumber%Edit%NumOfEdits%.style.width = "%guiOutOfEdit3%px"; // Set width
Gui%GuiNumber%Edit%NumOfEdits%.style.height = "%guiOutOfEdit4%px"; // Set height
Gui%GuiNumber%.appendChild(Gui%GuiNumber%Edit%NumOfEdits%);

)

jsCode .= "`n" . jsCode0 . "`n"
}
}

}
else ; else ; else ; else ; else ; else ; else ; else ; else
{
if (guiOutOfEditV = 1)
{
if (guiOutOfEditG = 1)
{
jsCode0 =
(



Gui%GuiNumber%%guiOutOfEdit5% = document.createElement("textarea");
Gui%GuiNumber%%guiOutOfEdit5%.id = "Gui%GuiNumber%" + "%guiOutOfEdit52%"; // Set ID for referencing
Gui%GuiNumber%%guiOutOfEdit5%.placeholder = "%out5%";
Gui%GuiNumber%%guiOutOfEdit5%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%%guiOutOfEdit5%.style.resize = "none"; // Disable resizing
Gui%GuiNumber%%guiOutOfEdit5%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%%guiOutOfEdit5%.style.left = "%guiOutOfEdit1%px"; // Set initial x position
Gui%GuiNumber%%guiOutOfEdit5%.style.top = "%guiOutOfEdit2%px"; // Set initial y position
Gui%GuiNumber%%guiOutOfEdit5%.style.width = "%guiOutOfEdit3%px"; // Set width
Gui%GuiNumber%%guiOutOfEdit5%.style.height = "%guiOutOfEdit4%px"; // Set height
Gui%GuiNumber%%guiOutOfEdit5%.addEventListener("input", function () {
variables.A_GuiControl = Gui%GuiNumber%%guiOutOfEdit5%.value
  %guiOutOfEdit6%(variables.A_GuiControl);
});
Gui%GuiNumber%.appendChild(Gui%GuiNumber%%guiOutOfEdit5%);

)

jsCode .= "`n" . jsCode0 . "`n"

}
else
{
jsCode0 =
(

Gui%GuiNumber%%guiOutOfEdit5% = document.createElement("textarea");
Gui%GuiNumber%%guiOutOfEdit5%.id = "Gui%GuiNumber%" + "%guiOutOfEdit52%"; // Set ID for referencing
Gui%GuiNumber%%guiOutOfEdit5%.placeholder = "%out5%";
Gui%GuiNumber%%guiOutOfEdit5%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%%guiOutOfEdit5%.style.resize = "none"; // Disable resizing
Gui%GuiNumber%%guiOutOfEdit5%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%%guiOutOfEdit5%.style.left = "%guiOutOfEdit1%px"; // Set initial x position
Gui%GuiNumber%%guiOutOfEdit5%.style.top = "%guiOutOfEdit2%px"; // Set initial y position
Gui%GuiNumber%%guiOutOfEdit5%.style.width = "%guiOutOfEdit3%px"; // Set width
Gui%GuiNumber%%guiOutOfEdit5%.style.height = "%guiOutOfEdit4%px"; // Set height
Gui%GuiNumber%.appendChild(Gui%GuiNumber%%guiOutOfEdit5%);

)

jsCode .= "`n" . jsCode0 . "`n"

}
}
else
{
if (guiOutOfEditG = 1)
{
jsCode0 =
(

Gui%GuiNumber%Edit%NumOfEdits% = document.createElement("textarea");
Gui%GuiNumber%Edit%NumOfEdits%.id = "Gui%GuiNumber%" + "Edit" + "%NumOfEdits%"; // Set ID for referencing
Gui%GuiNumber%Edit%NumOfEdits%.placeholder = "%out5%";
Gui%GuiNumber%Edit%NumOfEdits%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%Edit%NumOfEdits%.style.resize = "none"; // Disable resizing
Gui%GuiNumber%Edit%NumOfEdits%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%Edit%NumOfEdits%.style.left = "%guiOutOfEdit1%px"; // Set initial x position
Gui%GuiNumber%Edit%NumOfEdits%.style.top = "%guiOutOfEdit2%px"; // Set initial y position
Gui%GuiNumber%Edit%NumOfEdits%.style.width = "%guiOutOfEdit3%px"; // Set width
Gui%GuiNumber%Edit%NumOfEdits%.style.height = "%guiOutOfEdit4%px"; // Set height
Gui%GuiNumber%Edit%NumOfEdits%.addEventListener("input", function () {
variables.A_GuiControl = Gui%GuiNumber%Edit%NumOfEdits%.value
  %guiOutOfEdit6%(variables.A_GuiControl);
});
Gui%GuiNumber%.appendChild(Gui%GuiNumber%Edit%NumOfEdits%);


)

jsCode .= "`n" . jsCode0 . "`n"
}
else
{
jsCode0 =
(

Gui%GuiNumber%Edit%NumOfEdits% = document.createElement("textarea");
Gui%GuiNumber%Edit%NumOfEdits%.id = "Gui%GuiNumber%" + "Edit" + "%NumOfEdits%"; // Set ID for referencing
Gui%GuiNumber%Edit%NumOfEdits%.placeholder = "%out5%";
Gui%GuiNumber%Edit%NumOfEdits%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%Edit%NumOfEdits%.style.resize = "none"; // Disable resizing
Gui%GuiNumber%Edit%NumOfEdits%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%Edit%NumOfEdits%.style.left = "%guiOutOfEdit1%px"; // Set initial x position
Gui%GuiNumber%Edit%NumOfEdits%.style.top = "%guiOutOfEdit2%px"; // Set initial y position
Gui%GuiNumber%Edit%NumOfEdits%.style.width = "%guiOutOfEdit3%px"; // Set width
Gui%GuiNumber%Edit%NumOfEdits%.style.height = "%guiOutOfEdit4%px"; // Set height
Gui%GuiNumber%.appendChild(Gui%GuiNumber%Edit%NumOfEdits%);

)

jsCode .= "`n" . jsCode0 . "`n"
}
}
}


}




if (out3 = "picture")
{
base64ImageNum++




File := Trim(out5)
FileGetSize, nBytes, %File%
FileRead, Bin, *c %File%
ImageData := Base64Enc(Bin, nBytes, 100, 2 )


; Encode the image data to base64
Bbase64ImageData := StrReplace(ImageData, "`n", "") ; Remove line breaks
Bbase64ImageData := StrReplace(Bbase64ImageData, "`r", "") ; Remove carriage returns
Bbase64ImageData := StrReplace(Bbase64ImageData, "`t", "") ; Remove tabs
Bbase64ImageData := StrReplace(Bbase64ImageData, " ", "") ; Remove spaces
base64out := imageTag1 . Bbase64ImageData . imageTag2





base64 =
(
let base64Image%base64ImageNum% = "%base64out%"
)

base64ImageData .= base64 . "`n"



guiOutOfPictureNum := 0
guiOutOfPictureX := 0
guiOutOfPictureY := 0
guiOutOfPictureW := 0
guiOutOfPictureH := 0
guiOutOfPictureV := 0
guiOutOfPictureG := 0
Loop, 6
{
guiOutOfPicture%A_Index% := ""
}
dynamicGuiSet := 0
Loop, Parse, out4, " "
{
;MsgBox, |%A_LoopField%|

guiOutOfPictureNum++

if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("x"))
{
guiOutOfPictureX := 1
guiOutOfPicture1 := A_LoopField
if (InStr(guiOutOfPicture1, "%"))
{
str := guiOutOfPicture1
s:=StrSplit(str,"%").2
var1 := s

guiOutOfPicture1 :=  " """" + variables." . var1 . " + """
}
StringTrimLeft, guiOutOfPicture1, guiOutOfPicture1, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("y"))
{
guiOutOfPictureY := 1
guiOutOfPicture2 := A_LoopField
if (InStr(guiOutOfPicture2, "%"))
{
str := guiOutOfPicture2
s:=StrSplit(str,"%").2
var1 := s

guiOutOfPicture2 :=  " """" + variables." . var1 . " + """
}
StringTrimLeft, guiOutOfPicture2, guiOutOfPicture2, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("w"))
{
guiOutOfPictureW := 1
guiOutOfPicture3 := A_LoopField
if (InStr(guiOutOfPicture3, "%"))
{
str := guiOutOfPicture3
s:=StrSplit(str,"%").2
var1 := s

guiOutOfPicture3 :=  " """" + variables." . var1 . " + """
}
StringTrimLeft, guiOutOfPicture3, guiOutOfPicture3, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("h"))
{
guiOutOfPictureH := 1
guiOutOfPicture4 := A_LoopField
if (InStr(guiOutOfPicture4, "%"))
{
str := guiOutOfPicture4
s:=StrSplit(str,"%").2
var1 := s

guiOutOfPicture4 :=  " """" + variables." . var1 . " + """
}
StringTrimLeft, guiOutOfPicture4, guiOutOfPicture4, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("v"))
{
guiOutOfPictureV := 1
guiOutOfPicture5 := A_LoopField
guiOutOfPicture52 := A_LoopField
dynamicGuiSet := 1
if (InStr(guiOutOfPicture5, "%"))
{
str := guiOutOfPicture5
s:=StrSplit(str,"%").2
var1 := s

guiOutOfPicture5 :=  " [variables." . var1 . "]"
guiOutOfPicture52 :=  " "" + [variables." . var1 . "]" . " + " . """"
}
StringTrimLeft, guiOutOfPicture5, guiOutOfPicture5, 1
StringTrimLeft, guiOutOfPicture52, guiOutOfPicture52, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("g"))
{
guiOutOfPictureG := 1
guiOutOfPicture6 := A_LoopField
StringTrimLeft, guiOutOfPicture6, guiOutOfPicture6, 1
}
}

NumOfPictures++


if (InStr(out5, "%"))
{
str := out5
s:=StrSplit(str,"%").2
var1 := s

out5 :=  """"" + variables." . var1 . " + """""


}

if (dynamicGuiSet = 0)
{

if (guiOutOfPictureV = 1)
{
if (guiOutOfPictureG = 1)
{
jsCode0 =
(

Gui%GuiNumber%%guiOutOfPicture5% = document.createElement("img");
Gui%GuiNumber%%guiOutOfPicture5%.id = "Gui%GuiNumber%" + "%guiOutOfPicture52%"; // Set ID for referencing
Gui%GuiNumber%%guiOutOfPicture5%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%%guiOutOfPicture5%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%%guiOutOfPicture5%.style.left = "%guiOutOfPicture1%px"; // Set initial x position
Gui%GuiNumber%%guiOutOfPicture5%.style.top = "%guiOutOfPicture2%px"; // Set initial y position
Gui%GuiNumber%%guiOutOfPicture5%.style.width = "%guiOutOfPicture3%px"; // Set width
Gui%GuiNumber%%guiOutOfPicture5%.style.height = "%guiOutOfPicture4%px"; // Set height
Gui%GuiNumber%%guiOutOfPicture5%.onclick = function (event) {
variables.A_GuiControl = event.target.id.replace(/^Gui\d*/, "");
  %guiOutOfPicture6%(variables.A_GuiControl);
};
Gui%GuiNumber%.appendChild(Gui%GuiNumber%%guiOutOfPicture5%);



// Set the src attribute to the Base64-encoded image string for the second block
Gui%GuiNumber%%guiOutOfPicture5%.src = "data:image/*;base64," + base64Image%base64ImageNum%; // Assuming the image is in PNG format

// Set CSS styles to resize the image to fit inside the div
Gui%GuiNumber%%guiOutOfPicture5%.style.maxWidth = "100`%"; // Resize the image to fit the width of the div
Gui%GuiNumber%%guiOutOfPicture5%.style.maxHeight = "100`%"; // Resize the image to fit the height of the div

// Append the img element to the div for the second block
Gui%GuiNumber%.appendChild(Gui%GuiNumber%%guiOutOfPicture5%);

)

jsCode .= "`n" . jsCode0 . "`n"

}
else
{
jsCode0 =
(

Gui%GuiNumber%%guiOutOfPicture5% = document.createElement("img");
Gui%GuiNumber%%guiOutOfPicture5%.id = "Gui%GuiNumber%" + "%guiOutOfPicture52%"; // Set ID for referencing
Gui%GuiNumber%%guiOutOfPicture5%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%%guiOutOfPicture5%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%%guiOutOfPicture5%.style.left = "%guiOutOfPicture1%px"; // Set initial x position
Gui%GuiNumber%%guiOutOfPicture5%.style.top = "%guiOutOfPicture2%px"; // Set initial y position
Gui%GuiNumber%%guiOutOfPicture5%.style.width = "%guiOutOfPicture3%px"; // Set width
Gui%GuiNumber%%guiOutOfPicture5%.style.height = "%guiOutOfPicture4%px"; // Set height
Gui%GuiNumber%.appendChild(Gui%GuiNumber%%guiOutOfPicture5%);




// Set the src attribute to the Base64-encoded image string for the second block
Gui%GuiNumber%%guiOutOfPicture5%.src = "data:image/*;base64," + base64Image%base64ImageNum%; // Assuming the image is in PNG format

// Set CSS styles to resize the image to fit inside the div
Gui%GuiNumber%%guiOutOfPicture5%.style.maxWidth = "100`%"; // Resize the image to fit the width of the div
Gui%GuiNumber%%guiOutOfPicture5%.style.maxHeight = "100`%"; // Resize the image to fit the height of the div

// Append the img element to the div for the second block
Gui%GuiNumber%.appendChild(Gui%GuiNumber%%guiOutOfPicture5%);

)

jsCode .= "`n" . jsCode0 . "`n"

}
}
else
{
if (guiOutOfPictureG = 1)
{
jsCode0 =
(

Gui%GuiNumber%Picture%NumOfPictures% = document.createElement("img");
Gui%GuiNumber%Picture%NumOfPictures%.id = "Gui%GuiNumber%" + "Picture" + "%NumOfPictures%"; // Set ID for referencing
Gui%GuiNumber%Picture%NumOfPictures%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%Picture%NumOfPictures%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%Picture%NumOfPictures%.style.left = "%guiOutOfPicture1%px"; // Set initial x position
Gui%GuiNumber%Picture%NumOfPictures%.style.top = "%guiOutOfPicture2%px"; // Set initial y position
Gui%GuiNumber%Picture%NumOfPictures%.style.width = "%guiOutOfPicture3%px"; // Set width
Gui%GuiNumber%Picture%NumOfPictures%.style.height = "%guiOutOfPicture4%px"; // Set height
Gui%GuiNumber%Picture%NumOfPictures%.onclick = function (event) {
variables.A_GuiControl = event.target.textContent
  %guiOutOfPicture6%(variables.A_GuiControl);
};
Gui%GuiNumber%.appendChild(Gui%GuiNumber%Picture%NumOfPictures%);




// Set the src attribute to the Base64-encoded image string for the second block
Gui%GuiNumber%%guiOutOfPicture5%.src = "data:image/*;base64," + base64Image%base64ImageNum%; // Assuming the image is in PNG format

// Set CSS styles to resize the image to fit inside the div
Gui%GuiNumber%%guiOutOfPicture5%.style.maxWidth = "100`%"; // Resize the image to fit the width of the div
Gui%GuiNumber%%guiOutOfPicture5%.style.maxHeight = "100`%"; // Resize the image to fit the height of the div

// Append the img element to the div for the second block
Gui%GuiNumber%.appendChild(Gui%GuiNumber%%guiOutOfPicture5%);

)

jsCode .= "`n" . jsCode0 . "`n"
}
else
{
jsCode0 =
(

Gui%GuiNumber%Picture%NumOfPictures% = document.createElement("img");
Gui%GuiNumber%Picture%NumOfPictures%.id = "Gui%GuiNumber%" + "Picture" + "%NumOfPictures%"; // Set ID for referencing
Gui%GuiNumber%Picture%NumOfPictures%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%Picture%NumOfPictures%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%Picture%NumOfPictures%.style.left = "%guiOutOfPicture1%px"; // Set initial x position
Gui%GuiNumber%Picture%NumOfPictures%.style.top = "%guiOutOfPicture2%px"; // Set initial y position
Gui%GuiNumber%Picture%NumOfPictures%.style.width = "%guiOutOfPicture3%px"; // Set width
Gui%GuiNumber%Picture%NumOfPictures%.style.height = "%guiOutOfPicture4%px"; // Set height
Gui%GuiNumber%.appendChild(Gui%GuiNumber%Picture%NumOfPictures%);




// Set the src attribute to the Base64-encoded image string for the second block
Gui%GuiNumber%%guiOutOfPicture5%.src = "data:image/*;base64," + base64Image%base64ImageNum%; // Assuming the image is in PNG format

// Set CSS styles to resize the image to fit inside the div
Gui%GuiNumber%%guiOutOfPicture5%.style.maxWidth = "100`%"; // Resize the image to fit the width of the div
Gui%GuiNumber%%guiOutOfPicture5%.style.maxHeight = "100`%"; // Resize the image to fit the height of the div

// Append the img element to the div for the second block
Gui%GuiNumber%.appendChild(Gui%GuiNumber%%guiOutOfPicture5%);

)

jsCode .= "`n" . jsCode0 . "`n"
}
}

}
else ; else ; else ; else ; else ; else ; else ; else ; else
{
if (guiOutOfPictureV = 1)
{
if (guiOutOfPictureG = 1)
{
jsCode0 =
(

Gui%GuiNumber%%guiOutOfPicture5% = document.createElement("img");
Gui%GuiNumber%%guiOutOfPicture5%.id = "Gui%GuiNumber%" + "%guiOutOfPicture52%"; // Set ID for referencing
Gui%GuiNumber%%guiOutOfPicture5%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%%guiOutOfPicture5%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%%guiOutOfPicture5%.style.left = "%guiOutOfPicture1%px"; // Set initial x position
Gui%GuiNumber%%guiOutOfPicture5%.style.top = "%guiOutOfPicture2%px"; // Set initial y position
Gui%GuiNumber%%guiOutOfPicture5%.style.width = "%guiOutOfPicture3%px"; // Set width
Gui%GuiNumber%%guiOutOfPicture5%.style.height = "%guiOutOfPicture4%px"; // Set height
Gui%GuiNumber%%guiOutOfPicture5%.onclick = function (event) {
variables.A_GuiControl = event.target.id.replace(/^Gui\d*/, "");
  %guiOutOfPicture6%(variables.A_GuiControl);
};
Gui%GuiNumber%.appendChild(Gui%GuiNumber%%guiOutOfPicture5%);




// Set the src attribute to the Base64-encoded image string for the second block
Gui%GuiNumber%%guiOutOfPicture5%.src = "data:image/*;base64," + base64Image%base64ImageNum%; // Assuming the image is in PNG format

// Set CSS styles to resize the image to fit inside the div
Gui%GuiNumber%%guiOutOfPicture5%.style.maxWidth = "100`%"; // Resize the image to fit the width of the div
Gui%GuiNumber%%guiOutOfPicture5%.style.maxHeight = "100`%"; // Resize the image to fit the height of the div

// Append the img element to the div for the second block
Gui%GuiNumber%.appendChild(Gui%GuiNumber%%guiOutOfPicture5%);

)

jsCode .= "`n" . jsCode0 . "`n"

}
else
{
jsCode0 =
(

Gui%GuiNumber%%guiOutOfPicture5% = document.createElement("img");
Gui%GuiNumber%%guiOutOfPicture5%.id = "Gui%GuiNumber%" + "%guiOutOfPicture52%"; // Set ID for referencing
Gui%GuiNumber%%guiOutOfPicture5%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%%guiOutOfPicture5%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%%guiOutOfPicture5%.style.left = "%guiOutOfPicture1%px"; // Set initial x position
Gui%GuiNumber%%guiOutOfPicture5%.style.top = "%guiOutOfPicture2%px"; // Set initial y position
Gui%GuiNumber%%guiOutOfPicture5%.style.width = "%guiOutOfPicture3%px"; // Set width
Gui%GuiNumber%%guiOutOfPicture5%.style.height = "%guiOutOfPicture4%px"; // Set height
Gui%GuiNumber%.appendChild(Gui%GuiNumber%%guiOutOfPicture5%);


// Set the src attribute to the Base64-encoded image string for the second block
Gui%GuiNumber%%guiOutOfPicture5%.src = "data:image/*;base64," + base64Image%base64ImageNum%; // Assuming the image is in PNG format

// Set CSS styles to resize the image to fit inside the div
Gui%GuiNumber%%guiOutOfPicture5%.style.maxWidth = "100`%"; // Resize the image to fit the width of the div
Gui%GuiNumber%%guiOutOfPicture5%.style.maxHeight = "100`%"; // Resize the image to fit the height of the div

// Append the img element to the div for the second block
Gui%GuiNumber%.appendChild(Gui%GuiNumber%%guiOutOfPicture5%);

)

jsCode .= "`n" . jsCode0 . "`n"

}
}
else
{
if (guiOutOfPictureG = 1)
{
jsCode0 =
(

Gui%GuiNumber%Picture%NumOfPictures% = document.createElement("img");
Gui%GuiNumber%Picture%NumOfPictures%.id = "Gui%GuiNumber%" + "Picture" + "%NumOfPictures%"; // Set ID for referencing
Gui%GuiNumber%Picture%NumOfPictures%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%Picture%NumOfPictures%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%Picture%NumOfPictures%.style.left = "%guiOutOfPicture1%px"; // Set initial x position
Gui%GuiNumber%Picture%NumOfPictures%.style.top = "%guiOutOfPicture2%px"; // Set initial y position
Gui%GuiNumber%Picture%NumOfPictures%.style.width = "%guiOutOfPicture3%px"; // Set width
Gui%GuiNumber%Picture%NumOfPictures%.style.height = "%guiOutOfPicture4%px"; // Set height
Gui%GuiNumber%Picture%NumOfPictures%.onclick = function (event) {
variables.A_GuiControl = event.target.textContent
  %guiOutOfPicture6%(variables.A_GuiControl);
};
Gui%GuiNumber%.appendChild(Gui%GuiNumber%Picture%NumOfPictures%);


// Set the src attribute to the Base64-encoded image string for the second block
Gui%GuiNumber%Picture%NumOfPictures%.src = "data:image/*;base64," + base64Image%base64ImageNum%; // Assuming the image is in PNG format

// Set CSS styles to resize the image to fit inside the div
Gui%GuiNumber%Picture%NumOfPictures%.style.maxWidth = "100`%"; // Resize the image to fit the width of the div
Gui%GuiNumber%Picture%NumOfPictures%.style.maxHeight = "100`%"; // Resize the image to fit the height of the div

// Append the img element to the div for the second block
Gui%GuiNumber%.appendChild(Gui%GuiNumber%%guiOutOfPicture5%);

)

jsCode .= "`n" . jsCode0 . "`n"
}
else
{
jsCode0 =
(

Gui%GuiNumber%Picture%NumOfPictures% = document.createElement("img");
Gui%GuiNumber%Picture%NumOfPictures%.id = "Gui%GuiNumber%" + "Picture" + "%NumOfPictures%"; // Set ID for referencing
Gui%GuiNumber%Picture%NumOfPictures%.style.fontSize = "%guiFontShow%px"; // Set font size
Gui%GuiNumber%Picture%NumOfPictures%.style.position = "absolute"; // Set position to absolute
Gui%GuiNumber%Picture%NumOfPictures%.style.left = "%guiOutOfPicture1%px"; // Set initial x position
Gui%GuiNumber%Picture%NumOfPictures%.style.top = "%guiOutOfPicture2%px"; // Set initial y position
Gui%GuiNumber%Picture%NumOfPictures%.style.width = "%guiOutOfPicture3%px"; // Set width
Gui%GuiNumber%Picture%NumOfPictures%.style.height = "%guiOutOfPicture4%px"; // Set height
Gui%GuiNumber%.appendChild(Gui%GuiNumber%Picture%NumOfPictures%);




// Set the src attribute to the Base64-encoded image string for the second block
Gui%GuiNumber%%guiOutOfPicture5%.src = "data:image/*;base64," + base64Image%base64ImageNum%; // Assuming the image is in PNG format

// Set CSS styles to resize the image to fit inside the div
Gui%GuiNumber%%guiOutOfPicture5%.style.maxWidth = "100`%"; // Resize the image to fit the width of the div
Gui%GuiNumber%%guiOutOfPicture5%.style.maxHeight = "100`%"; // Resize the image to fit the height of the div

// Append the img element to the div for the second block
Gui%GuiNumber%.appendChild(Gui%GuiNumber%%guiOutOfPicture5%);

)

jsCode .= "`n" . jsCode0 . "`n"
}
}
}





}





}





if (out2 = "show")
{
guiOutOfShowX := 0
guiOutOfShowY := 0
guiOutOfShowW := 0
guiOutOfShowH := 0
Loop, 4
{
guiOutOfShow%A_Index% := ""
}
Loop, Parse, out3, " "
{
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("x"))
{
guiOutOfShowX := 1
guiOutOfShow1 := A_LoopField
if (InStr(guiOutOfShow1, "%"))
{
str := guiOutOfShow1
s:=StrSplit(str,"%").2
var1 := s

guiOutOfShow1 :=  " """" + variables." . var1 . " + """
}
StringTrimLeft, guiOutOfShow1, guiOutOfShow1, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("y"))
{
guiOutOfShowY := 1
guiOutOfShow2 := A_LoopField
if (InStr(guiOutOfShow2, "%"))
{
str := guiOutOfShow2
s:=StrSplit(str,"%").2
var1 := s

guiOutOfShow2 :=  " """" + variables." . var1 . " + """
}
StringTrimLeft, guiOutOfShow2, guiOutOfShow2, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("w"))
{
guiOutOfShowW := 1
guiOutOfShow3 := A_LoopField
if (InStr(guiOutOfShow3, "%"))
{
str := guiOutOfShow3
s:=StrSplit(str,"%").2
var1 := s

guiOutOfShow3 :=  " """" + variables." . var1 . " + """
}
StringTrimLeft, guiOutOfShow3, guiOutOfShow3, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("h"))
{
guiOutOfShowH := 1
guiOutOfShow4 := A_LoopField
if (InStr(guiOutOfShow4, "%"))
{
str := guiOutOfShow4
s:=StrSplit(str,"%").2
var1 := s

guiOutOfShow4 :=  " """" + variables." . var1 . " + """
}
StringTrimLeft, guiOutOfShow4, guiOutOfShow4, 1
}
}

if (guiOutOfShowX = 1)
{
jsCode01 =
(
Gui%GuiNumber%.style.left = "%guiOutOfShow1%px";
)
}
else
{
jsCode01 =
(
Gui%GuiNumber%.style.left = (window.innerWidth - parseInt(Gui%GuiNumber%.style.width)) / 2 + "px";
)
}

if (guiOutOfShowY = 1)
{
jsCode02 =
(
Gui%GuiNumber%.style.top = "%guiOutOfShow2%px";
)
}
else
{
jsCode02 =
(
Gui%GuiNumber%.style.top = (window.innerHeight - parseInt(Gui%GuiNumber%.style.height)) / 2 + "px";
)
}


jsCode0 =
(

Gui%GuiNumber%.style.position = "absolute";
Gui%GuiNumber%.style.width = "%guiOutOfShow3%px"; // Set the width
Gui%GuiNumber%.style.height = "%guiOutOfShow4%px"; // Set the height
Gui%GuiNumber%.style.backgroundColor = "#%guiColorShow%";
Gui%GuiNumber%.style.color = "white";
Gui%GuiNumber%.style.fontSize = "15px";
Gui%GuiNumber%.style.padding = "0px";
Gui%GuiNumber%.style.border = "2px solid white";

// Calculate center position
%jsCode01%
%jsCode02%






document.body.appendChild(Gui%GuiNumber%); // Append the GUI window to the body

)

jsCode .= "`n" . jsCode0 . "`n"
}
lineDone := 1
}
else if (SubStr(Trim(StrLower(A_LoopField)), 1, 10) = StrLower("FileRead, "))
{

str := A_LoopField

s:=StrSplit(str,", ").2
out1 := s

s:=StrSplit(str,", ").3
out2 := s
out1 := Trim(out1)
out2 := Trim(out2)

numOfTextData++
;MsgBox, % out2
FileRead, extractedText, %out2%


extractedText := StrReplace(extractedText, "``", "\``")
extractedText := StrReplace(extractedText, "$", "\$")

;MsgBox, % extractedText
tempTextData =
(
let textData%numOfTextData% = ``%extractedText%``;
)
;MsgBox, %tempTextData%

TextData .= tempTextData . "`n`n"

out3 := "variables." . out1 . " = " . "textData" . numOfTextData

jsCode .= "`n" . out3 . "`n"

lineDone := 1

}
else if (SubStr(Trim(StrLower(A_LoopField)), 1, 12) = StrLower("GuiControl, ")) or (SubStr(Trim(StrLower(A_LoopField)), 1, 11) = StrLower("GuiControl "))
{


str := A_LoopField

str := StrReplace(str, ": ", ", ")

s:=StrSplit(str,",").1
out1 := Trim(s)
;MsgBox, % out1

GuiNumberOld := GuiNumber
GuiNumber := RegExReplace(out1, "\D", "")


if (GuiNumber = "")
{
GuiNumber := 1

}


s:=StrSplit(str,", ").2
out2 := StrLower(Trim(s))

s:=StrSplit(str,", ").3
out3 := Trim(s)

s:=StrSplit(str,", ").4
out4 := Trim(s)

s:=StrSplit(str,", ").5
out5 := Trim(s)



if InStr(out3, "%")
{
str := out3
s:=StrSplit(str,"%").2
var1 := s

out3 :=  """ + variables." . var1
}
else
{
out3 := out3 . """"
}



if (out2 = "move")
{
guiOutOfMoveX := 0
guiOutOfMoveY := 0
guiOutOfMoveW := 0
guiOutOfMoveH := 0
Loop, 4
{
guiOutOfMove%A_Index% := ""
}
Loop, Parse, out4, " "
{
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("x"))
{
guiOutOfMoveX := 1
guiOutOfMove1 := A_LoopField
if (InStr(guiOutOfMove1, "%"))
{
str := guiOutOfMove1
s:=StrSplit(str,"%").2
var1 := s

guiOutOfMove1 :=  " variables." . var1
}
StringTrimLeft, guiOutOfMove1, guiOutOfMove1, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("y"))
{
guiOutOfMoveY := 1
guiOutOfMove2 := A_LoopField
if (InStr(guiOutOfMove2, "%"))
{
str := guiOutOfMove2
s:=StrSplit(str,"%").2
var1 := s

guiOutOfMove2 :=  " variables." . var1
}
StringTrimLeft, guiOutOfMove2, guiOutOfMove2, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("w"))
{
guiOutOfMoveW := 1
guiOutOfMove3 := A_LoopField
if (InStr(guiOutOfMove3, "%"))
{
str := guiOutOfMove3
s:=StrSplit(str,"%").2
var1 := s

guiOutOfMove3 :=  " variables." . var1
}
StringTrimLeft, guiOutOfMove3, guiOutOfMove3, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("h"))
{
guiOutOfMoveH := 1
guiOutOfMove4 := A_LoopField
if (InStr(guiOutOfMove4, "%"))
{
str := guiOutOfMove4
s:=StrSplit(str,"%").2
var1 := s

guiOutOfMove4 :=  " variables." . var1
}
StringTrimLeft, guiOutOfMove4, guiOutOfMove4, 1
}
}



out0 =
(
GuiControl("%out2%", "Gui%GuiNumber%%out3%", %guiOutOfMove1%, %guiOutOfMove2%, %guiOutOfMove3%, %guiOutOfMove4%);
)
;MsgBox, % out0
}


if (out2 = "focus")
{
out0 =
(
GuiControl("%out2%", "Gui%GuiNumber%%out3%");
)
}


if (out2 = "text")
{

var1 := out4

if (InStr(var1, "%"))
{
str := var1
s:=StrSplit(str,"%").2
var1 := s

var1 := "variables." . var1
out0 =
(
GuiControl("%out2%", "Gui%GuiNumber%%out3%, %var1%);
)
}
else
{
out0 =
(
GuiControl("%out2%", "Gui%GuiNumber%%out3%, "%var1%");
)
}

}

if (out2 = "hide")
{
out0 =
(
GuiControl("%out2%", "Gui%GuiNumber%%out3%);
)
}

if (out2 = "show")
{
out0 =
(
GuiControl("%out2%", "Gui%GuiNumber%%out3%);
)
}

if (out2 = "disable")
{
out0 =
(
GuiControl("%out2%", "Gui%GuiNumber%%out3%);
)
}

if (out2 = "enable")
{
out0 =
(
GuiControl("%out2%", "Gui%GuiNumber%%out3%);
)
}

if (out2 = "font")
{

if (InStr(out4, "s")) ; size
{
out2 := "font"
var1 := out4
StringTrimLeft, var1, var1, 1
if (InStr(var1, "%"))
{
str := var1
s:=StrSplit(str,"%").2
var1 := s

var1 := "variables." . var1
out0 =
(
GuiControl("%out2%", "Gui%GuiNumber%%out3%, %var1%);
)
}
else
{
out0 =
(
GuiControl("%out2%", "Gui%GuiNumber%%out3%, %var1%);
)
}
}
if (InStr(out4, "c")) ; color
{
out2 := "color"
var1 := out4
StringTrimLeft, var1, var1, 1

if (InStr(var1, "%"))
{
str := var1
s:=StrSplit(str,"%").2
var1 := s

var1 := "variables." . var1

var1 := """#"" + " . var1
out0 =
(
GuiControl("%out2%", "Gui%GuiNumber%%out3%, %var1%);
)
}
else
{
var1 := "#" . var1
out0 =
(
GuiControl("%out2%", "Gui%GuiNumber%%out3%, "%var1%");
)
}
}




}

;~ out0 =
;~ (
;~ GuiControl("%out2%", "Gui%GuiNumber%%out3%", %out4%);
;~ )
jsCode .= out0 . "`n"

lineDone := 1
}
else if (SubStr(Trim(StrLower(A_LoopField)), 1, 5) = StrLower("Run, "))
{


str := A_LoopField


s:=StrSplit(str,", ").2
out1 := s

if (InStr(out1, "%"))
{
out1 := """ + " .  varTraspiler(out1, 0) . " + """
}


out2 := "window.open(""" . out1 . """);"



jsCode .= out2 . "`n"

lineDone := 1

}
else if (SubStr(Trim(StrLower(A_LoopField)), 1, 20) = StrLower("getDataFromEndpoint("))
{

;MsgBox, asdkhsfgvjhfdusadgfhjkusdjvhn





str := A_LoopField

;MsgBox, % str

s:=StrSplit(str,", ").2
out1 := Trim(s)


s:=StrSplit(str,"Endponit(").1
out0 := Trim(s)
;MsgBox, % out0
s:=StrSplit(out0,", ").1
out0 := Trim(s)
;MsgBox, % out0
s:=StrSplit(out0,"(").2
out0 := Trim(s)
;MsgBox, % out0

s:=StrSplit(str,", ").2
out2 := Trim(s)


; Define the regex pattern
regex := "i)^[\w_]+$"
if RegExMatch(out2, regex)
{
    output := out2
}
else
{
    endpoint := RegExReplace(out2, "[^\w_]", "")
}


if !(Instr(out0, """"))
{
out0 := "variables." . out0
}

if !(Instr(out2, """"))
{
out2 := "variables." . out2
}

out =
(
await getDataFromEndpoint(%out0%, %out2%)
)


method := StrReplace(method, """", "")
;MsgBox, % method



;MsgBox, % out


endpoints .= endpoint . "`n"


jsCode .= out . "`n"

;MsgBox, % out
lineDone := 1


}
else if RegExMatch(A_LoopField, "(\+){2}$")
{
lineDone := 1
str := A_LoopField

str := Trim(str)
StringTrimRight, str, str, 2

str := varTraspiler(str, 0)
;MsgBox, % strs
jsCode .= str . "++`n"
}
else if RegExMatch(A_LoopField, "(\-){2}$")
{
lineDone := 1
str := A_LoopField

str := Trim(str)
StringTrimRight, str, str, 2


str := varTraspiler(str, 0)
;MsgBox, % str
jsCode .= str . "--`n"
}
else if (RegExMatch(A_LoopField, "^\w+:$")) && (Trim(SubStr(A_LoopField, 0)) = ":")
{

;MsgBox, % A_LoopField



out1 := A_LoopField

out1 := Trim(out1)

StringTrimRight, out1, out1, 1

if (out1 == "OnKeyPress")
{

onKeyPress =
(

     document.addEventListener("keypress", function (event) {
          // Code to execute when a key is pressed
          console.log("Key pressed:", event.key);

          OnKeyPress(event.key);
          });

)
forJsCode =
(

 async function OnKeyPress(A_ThisHotkey)
         {
          variables.A_ThisHotkey = A_ThisHotkey

)
jsCode .= forJsCode . "`n"
}
else
{
jsCode .= "async function " . out1 . "(A_GuiControl)`n{`n"
}
;MsgBox, % out1

;~ see := "async function " . out1 . "()`n{"
;~ MsgBox, % see

lineDone := 1
}
else if (RegExMatch(A_LoopField, "^.*::$"))
{
;MsgBox, % A_LoopField
out1 := A_LoopField
out1 := Trim(out1)

;MsgBox, % out1


HotKeyShift := 0
HotKeyAlt := 0
HotKeyCtrl := 0

Loop, Parse, out1
{
if (A_LoopField = "!")
{
HotKeyAlt := 1
}
if (A_LoopField = "+")
{
HotKeyShift := 1
}
if (A_LoopField = "^")
{
HotKeyCtrl := 1
}
}

HotKeylettersOnly := ""
HotKeylettersOnly := RegExReplace(out1, "[^a-zA-Z]")
StringUpper, HotKeylettersOnly, HotKeylettersOnly, T
if (StrLen(HotKeylettersOnly) != 1)
{
HotKeylettersOnly := "Arrow" . HotKeylettersOnly
}
;MsgBox, % HotKeylettersOnly
HotKeyNumOnly := ""
HotKeyNumOnly := RegExReplace(out1, "\D")

if (HotKeyNumOnly = "")
{
out3 := HotKeylettersOnly
}
else
{
out3 := HotKeyNumOnly
}

if (HotKeyCtrl = 1)
{
out3 := "Ctrl+" . out3
}
if (HotKeyShift = 1)
{
out3 := "Shift+" . out3
}
if (HotKeyAlt = 1)
{
out3 := "Alt+" . out3
}

out4 := out3

out4 := StrReplace(out4, "+", "")

out3 := StrReplace(out3, "ArrowBackspace", "Backspace")
out4 := StrReplace(out4, "ArrowBackspace", "Backspace")

HotKeyCalledHotKyesOut =
(

MakeHotKey("%out3%", function(hotkey) {
HotKeyCalled%out4%()
});

)

HotKeyCalledHotKyes .= HotKeyCalledHotKyesOut . "`n"

out2 =
(

async function HotKeyCalled%out4%()
{
// console.log("HotKeyCalled %out4%")


)
;MsgBox, % out2
jsCode .= out2 . "`n"
lineDone := 1
}
else if (CheckVariable(A_LoopField))
{
 ; Check if a variable contains at least two percentage symbols (%) and at least one set of parentheses ()

;~ ; Example variable
;~ exampleVar := "This is a %example% with (some) parentheses"

; Function to check the variable
CheckVariable(var) {
    countPercent := 0
    countParentheses := 0


if (InStr(var, " := ")) or (InStr(var, " .= ")) or (InStr(var, " += ")) or (InStr(var, " -= ")) or (InStr(var, " *= "))
{
return false
}

    ; Loop through each character in the variable
    Loop, Parse, var
    {
        ; Check for percentage symbols
        if (A_LoopField = "%")
        {
            countPercent++
        }


        ; Check for parentheses
        else if (A_LoopField = "(" or A_LoopField = ")")
        {
            countParentheses++
        }
    }



    ; Check if conditions are met
    if (countPercent >= 2 and countParentheses >= 2)
    {
       ; MsgBox, Variable meets the conditions.
        return true
    } else {
     ;   MsgBox, Variable does not meet the conditions.
    return false
    }
}


out2 := A_LoopField
;MsgBox, % out2
out2 := Trim(out2)



var1 := out2



str := var1

s:=StrSplit(str,"%").1
out3 := s
s:=StrSplit(str,"%").2
out4 := s






out := "await funcs[""" . out3 . """ + variables." . out4 . "]()" . "`n"
jsCode .= out . "`n"
;MsgBox, % out
lineDone := 1

}
else if ((InStr(A_LoopField, " := ")) or (InStr(A_LoopField, " .= ")) or (InStr(A_LoopField, " += ")) or (InStr(A_LoopField, " -= ")) or (InStr(A_LoopField, " *= "))) && (lineDone = 0)
{

; variables
; variables
; variables


str := A_LoopField
;MsgBox, % str


Loop, % posStartQuotesNum + 1
{
posStartQuotes%A_Index% := ""
}

posStartQuotesNum := 0
backOut := ""
insideQqq := 0
out := ""
restartSomtingBugs := 0
Loop, Parse, str
{


if (A_LoopField = """") && (insideQqq = 0)
{
insideQqq++
posStartQuotesNum++
backOut := ""
restartSomtingBugs := 0
}
else
{
if (A_LoopField = """")
{
insideQqq := 0
}
}

if (insideQqq = 1)
{
restartSomtingBugs++
if (restartSomtingBugs = 1)
{

backOut := "posStartQuotes" . posStartQuotesNum

out .= backOut

}

posStartQuotes%posStartQuotesNum% .= A_LoopField

}
else
{
out .= A_LoopField
}


}

str := out

;MsgBox, % out
;MsgBox, % posStartQuotes1

s:=StrSplit(str," ").1
out1 := s

s:=StrSplit(str," ").2
out2 := s

;MsgBox, % out1 . " " . out2
checkIfVar := out1 . " " . out2
if (InStr(checkIfVar, ":=")) or (InStr(checkIfVar, ".=")) or (InStr(checkIfVar, "+=")) or (InStr(checkIfVar, "-=")) or (InStr(checkIfVar, "*=")) && !(InStr(checkIfVar, ", "))
{

if (InStr(checkIfVar, ":="))
{
whatVarWeUse := "="
}
if (InStr(checkIfVar, ".="))
{
whatVarWeUse := "+="
}
if (InStr(checkIfVar, "+="))
{
whatVarWeUse := "+="
}
if (InStr(checkIfVar, "-="))
{
whatVarWeUse := "-="
}
if (InStr(checkIfVar, "*="))
{
whatVarWeUse := "*="
}

var := str




;MsgBox, % var


var := StrReplace(var, " = ", """equalllllll123432leacquaiadvbuas1""")
var := StrReplace(var, " <= ", """equalllllll123432leacquaiadvbuas2""")
var := StrReplace(var, " >= ", """equalllllll123432leacquaiadvbuas3""")
var := StrReplace(var, " != ", """equalllllll123432leacquaiadvbuas4""")
var := StrReplace(var, " == ", """equalllllll123432leacquaiadvbuas5""")
var := StrReplace(var, " === ", """equalllllll123432leacquaiadvbuas6""")

var := StrReplace(var, ":=", "=")
var := StrReplace(var, "+=", "=")
var := StrReplace(var, ".=", "=")
var := StrReplace(var, "-=", "=")
var := StrReplace(var, "*=", "=")










str := var
s:=StrSplit(str,"=").1
out1 := s
s:=StrSplit(str,"=").2
out2 := s

;MsgBox, % out2

varsContents := ""

out2 := StrReplace(out2, """", "ABvarBLAA")


out2 := StrReplace(out2, "(", " ( ")
out2 := StrReplace(out2, ")", " ) ")
out2 := StrReplace(out2, "[", " [ ")
out2 := StrReplace(out2, "]", " ] ")

;MsgBox, % out2



Loop, Parse, out2, " "
{


var1 := A_LoopField
;MsgBox, % var1
if !(InStr(var1, "%")) && !(InStr(var1, "ABvarBLAA"))
{

; Define the string to check
myString := var1

; Regular expression pattern to match any letter
pattern := ".*[A-Za-z].*"

; Check if the string contains a letter
if RegExMatch(myString, pattern)
{
    ;MsgBox, The string contains at least one letter.

buildInFuncNum := 0
Loop, Parse, buildInFunc, `n ,`r
{
if (InStr(var1, A_LoopField))
{
buildInFuncNum++
}

}

if (buildInFuncNum > 0)
{

}
else
{
var1 := Trim(var1)
var1 := "%" . var1 . "%"
}

}
else
{
    ;MsgBox, The string does not contain any letters.
}
;MsgBox, % buildInFuncNum

}

;MsgBox, % var1

mode1 := 0

; Alternatively, if you only want to check if the string contains %
if (InStr(var1, "%")) {
    ;MsgBox, The string contains `%`
mode1 := 2


;StringTrimRight, var1, var1, 1

str := var1


s:=StrSplit(str,"%").1
INout1 := s


s:=StrSplit(str,"%").2
INout2 := s

s:=StrSplit(str,"%").3
INout3 := s

INout2 := "variablesBLAcodevarBLA" . INout2

if (INout1 = "")
{
var1 := INout2
}
else
{
var1 := "variables[" . """" . INout1 . """" . " + " . INout2 . "]"
}

if !(INout3 = "")
{
var1 := "variables[" . """" . INout1 . """" . " + " . INout2 . " + " . """" .  INout3 . """" .  "]"

}
;MsgBox, % var1

varsContents .= var1 . " "


}


if (SubStr(var1, 1, 1) = "%" && SubStr(var1, 0) = "%" && StrLen(var1) > 1) {
    ;MsgBox, The string starts and ends with `%`
mode1 := 1

varsContents .= "variablesBLAcodevarBLA" . A_LoopField . " "

} else {
    ;MsgBox, The string does not start and end with `%`

if (mode1 != 2)
{
mode1 := 3

varsContents .= A_LoopField . " "
}
}





}
;MsgBox, % varsContents

out1 := Trim(out1)


if !(InStr(out1, "%"))
{
variables .= "  " . out1 . ": null," . "`n"
}


StringTrimRight, varsContents, varsContents, 1

out0 := out1
out2 := varsContents

out2 := RegExReplace(out2, "\.(?![0-9])", "+")


out2 := StrReplace(out2, "BLAcodevarBLA", ".")


out2 := StrReplace(out2, "ABvarBLAA", """")
out2 := StrReplace(out2, "%", "")

repaceGetFunctionInAhkToJs()





if (InStr(out0, "%"))
{
out0old := out0


;MsgBox, |%out0old%|
;StringTrimRight, var1, out0old, 1

str := out0old

s:=StrSplit(str,"%").1
INout1 := s


s:=StrSplit(str,"%").2
INout2 := s

s:=StrSplit(str,"%").3
INout3 := s



INout2 := "variables." . INout2

var1 := "[" . """" . INout1 . """" . " + " . INout2 . "]"







out0 := var1
var := "variables" . out0 . " " . whatVarWeUse . " " . out2 . ";"

}
else
{
var := "variables." . out0 . " " . whatVarWeUse . " " . out2 . ";"
}

;MsgBox, % var


var := StrReplace(var, ") `;", ")")
var := StrReplace(var, ");", ")")


Loop, %posStartQuotesNum%
{
var := StrReplace(var, "posStartQuotes" . A_Index, posStartQuotes%A_Index%)


var := StrReplace(var, """""", "\""")
var := StrReplace(var, """""""", """\""")
var := StrReplace(var, "\\""", """\""")
var := StrReplace(var, """""", "\""")
var := StrReplace(var, """""""", """\""")
var := StrReplace(var, "\\""", """\""")
var := StrReplace(var, """\"" ", "\"""" ")
var := StrReplace(var, """\"";", "\"""" ")

var := StrReplace(var, """equalllllll123432leacquaiadvbuas6""", " === ")
var := StrReplace(var, """equalllllll123432leacquaiadvbuas5""", " == ")
var := StrReplace(var, """equalllllll123432leacquaiadvbuas4""", " != ")
var := StrReplace(var, """equalllllll123432leacquaiadvbuas3""", " >= ")
var := StrReplace(var, """equalllllll123432leacquaiadvbuas2""", " <= ")
var := StrReplace(var, """equalllllll123432leacquaiadvbuas1""", " == ")

}


;MsgBox, % var

line := var . "`n"




jsCode .= line . "`n"


}

} ; end of variables
else
{

out999 := A_LoopField


if (InStr(out999, "(")) && (InStr(out999, ")")) && !(InStr(out999, "async function "))
{
text := out999


str := text

s:=StrSplit(str,"(").1
out1p := s




; Extract text between first and last parentheses using RegEx
if (RegExMatch(text, "\((.*)\)", extractedText))
{
 ;   MsgBox % "Text between first and last parentheses: " extractedText1
}
else
{
  ;  MsgBox % "No text found between parentheses."
}


extractedText1 := varTraspiler(extractedText1, 0)



out999 := out1p . "(" . extractedText1 . ")"
}

out999 := StrReplace(out999, "Else", "else")

if !(InStr(out999, "dugsvigqwfeoaiofceuoabivauoibvoucgaveivcusvuidvauvcusvduaeuvuabuveuowhfiovueabciabuiavcvvbusackavkcbcdavCYTdsfdgfdretyhhhhherreIdontWantToRemoveItsoItOKOK"))
{
if (removeCurlyBracet = 0)
{
;MsgBox, % removeCurlyBracet
jsCode .= out999 . "`n"

;removeCurlyBracet := 0

}
}
else
{
if (removeCurlyBracet = 0)
{
;MsgBox, % removeCurlyBracet
jsCode .= out999 . "`n"

;removeCurlyBracet := 0

}
}

}

if (removeCurlyBracet = 1)
{

removeCurlyBracet := 0

}


out999 := A_LoopField
if (removeCurlyBracet = 2)
{
   ; MsgBox, % out999
jsCode .= "{" . "`n"

        removeCurlyBracet := 0

}




} ; end of the parsing


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

textAfterSemicolonNum2 := 0
out1234567654 := ""
Loop, Parse, jsCode, `n, `r
{

str := A_LoopField


if (InStr(str, """"))
{
Loop, % posStartQuotesNum + 1
{
posStartQuotes%A_Index% := ""
}

posStartQuotesNum := 0
backOut := ""
insideQqq := 0
out := ""
restartSomtingBugs := 0
Loop, Parse, str
{


if (A_LoopField = """") && (insideQqq = 0)
{
insideQqq++
posStartQuotesNum++
backOut := ""
restartSomtingBugs := 0
}
else
{
if (A_LoopField = """")
{
insideQqq := 0
}
}

if (insideQqq = 1)
{
restartSomtingBugs++
if (restartSomtingBugs = 1)
{

backOut := "posStartQuotes" . posStartQuotesNum

out .= backOut

}

posStartQuotes%posStartQuotesNum% .= A_LoopField

}
else
{
out .= A_LoopField
}


}

out2 := out

}
else
{
out2 := str
}

var := out2





Loop, %posStartQuotesNum%
{
var := StrReplace(var, "posStartQuotes" . A_Index, posStartQuotes%A_Index%)


var := StrReplace(var, """""", "\""")
var := StrReplace(var, """""""", """\""")
var := StrReplace(var, "\\""", """\""")
var := StrReplace(var, """\"" ", "\"""" ")

var := StrReplace(var, """""", "\""")
var := StrReplace(var, """""""", """\""")
var := StrReplace(var, "\\""", """\""")
var := StrReplace(var, """\"" ", "\"""" ")
var := StrReplace(var, """\"", ", "\"""" ")
var := StrReplace(var, """\"";", "\"""" ")

;|, \", |
;| variables.\"|




var := StrReplace(var, ", \"",", ", """",")
var := StrReplace(var, " variables.\""", " """)
var := StrReplace(var, ", "")", ", """")")
var := StrReplace(var, "=  "";", "=  """"")
var := StrReplace(var, "=  "" `;", "=  """"")
var := StrReplace(var, "=  \""""", "=  """"")
var := StrReplace(var, "=  \""", "=  """"")
var := StrReplace(var, "=  \""", "=  """"")
var := StrReplace(var, ",  \""", "=  """"")
var := StrReplace(var, ", \""", "=  """"")
var := StrReplace(var, "(\"")", "("""")")
var := StrReplace(var, """ ""thisissemicolonattheendplaceokmansurebruh49475472472\""", """thisissemicolonattheendplaceokmansurebruh49475472472""")
var := StrReplace(var, "``n", "\n")
var := StrReplace(var, "``r", "\r")
var := StrReplace(var, "``", "\")
var := StrReplace(var, "= "")", "= """")")
var := StrReplace(var, ");", ")")





}

var := Trim(var)


;MsgBox, % var

if (InStr(var, """thisissemicolonatthefirstplaceokmansurebruh49475472471"""))
{
var := StrReplace(var, """thisissemicolonatthefirstplaceokmansurebruh49475472471""", "")
var := "// " . var
}


if (InStr(var, """thisissemicolonattheendplaceokmansurebruh49475472472"""))
{
var := StrReplace(var, """thisissemicolonattheendplaceokmansurebruh49475472472""", "")
textAfterSemicolonNum2++
var := var . " //" . textAfterSemicolon%textAfterSemicolonNum2%
var := StrReplace(var, """thisissemicolonattheendplaceokmansurebruh49475472472""", "")

}



var := StrReplace(var, "+ ]", " ]")

out1234567654 .= var . "`n"

}



StringTrimRight, out1234567654, out1234567654, 1

jsCode := out1234567654

StringTrimRight, jsCode, jsCode, 1
StringTrimRight, variables, variables, 1

out123456765422 := ""
rmeoveCrlyBrackedRelatedToFuncMake := 0
Loop, Parse, jsCode, `n, `r
{

str := A_LoopField

str := Trim(str)


original := str
str := RegExReplace(original, "variables\.\s*(?=\w+\s*\()", "await ")

;MsgBox, % modified


if (InStr(str, "|nextbarcccketIwnatatataitgoneokdudeorelsleplsk|"))
{
str := StrReplace(str, "|nextbarcccketIwnatatataitgoneokdudeorelsleplsk|", "")
rmeoveCrlyBrackedRelatedToFuncMake := 1
}

if (InStr(str, "{")) && (rmeoveCrlyBrackedRelatedToFuncMake = 1)
{
str := StrReplace(str, "{", "")
rmeoveCrlyBrackedRelatedToFuncMake := 0
}

if (SubStr(Trim(StrLower(A_LoopField)), 1, 10) = StrLower("IfMsgBox, "))
{
str := ".then(async (result) => {`n" . str
str := StrReplace(str, " Yes", " OK")
str := StrReplace(str, " Retry", " OK")
str := StrReplace(str, " Retry", " OK")
str := StrReplace(str, "Else", "else")
str := StrReplace(str, "IfMsgBox, ", "if (result === """)
str := str . """)`n"
}

if (SubStr(Trim(StrLower(A_LoopField)), 1, 21) = StrLower("}  // end of ifmsgbox"))
{

str := str . "`n});`n"
}


if (StrLower(str) = "global")
{
str := "// this function is global in ahk"
}

str := StrReplace(str, "log(\""", "log(""""")
str := StrReplace(str, "showCustomMessageBox({},"" ""=", "showCustomMessageBox({},"" "",")

str := StrReplace(str, "variables[\""", "variables[""""")
str := StrReplace(str, "variables.])", """""])")
str := StrReplace(str, "variables.false", "false")
str := StrReplace(str, "variables.true", "true")
str := StrReplace(str, "funcs[\""", "funcs[""""")


if (StrLower(str) = "exitapp")
{
str := "window.close()"
}

if (StrLower(str) = "reload")
{
str := "location.reload()"
}

if (str != "await")
{
out123456765422 .= str . "`n"
}

}

StringTrimRight, out123456765422, out123456765422, 1

jsCode := out123456765422

StringTrimRight, jsCodeLoopFix, jsCodeLoopFix, 1

;MsgBox, |%jsCodeLoopFix%|
A_IndexLoopCurlyFix := 1
Loop, Parse, jsCodeLoopFix, `n, `r
{



str := A_LoopField
fixLoopLokingFor := A_LoopField
fixLoopLokingForfound := 1
s:=StrSplit(str,"|itsfortheloopfixinghhhhhhhhcksdvbdshjvds|").1
out1 := s
s:=StrSplit(str,"|itsfortheloopfixinghhhhhhhhcksdvbdshjvds|").2
out2 := s
;MsgBox, |%out1%|
;MsgBox, % out2



wasAtanyIfsElseAddA_IndexLoopCurlyFix := 0


if (out1 = "nl")
{


inTarget := 0
insideBracket := 0
netsedCurly := 0
eldLoopNestedBADlol := 0
readyToEnd := 0
endBracketDOntPutThere := 0
dontSaveStr := 0
weAreDoneHereCurly := 0
DeleayOneCuzOfLoopParse := 0
fixLoopLokingForNum := 0
insdeAnestedLoopBAD := 0
foundTheTopLoop := 0
out4758686d86d86d86578991a%A_IndexLoopCurlyFix% := ""
Loop, Parse, jsCode, `n, `r
{
;MsgBox, dsfgsdefgesrdg1
;MsgBox, |%A_LoopField%|`n|%fixLoopLokingFor%|


if (InStr(A_LoopField, fixLoopLokingFor)) && (insdeAnestedLoopBAD != 1)
{
fixLoopLokingForNum := 1

;MsgBox, do we came here 1
}

if (InStr(A_LoopField, "for (/*")) && (weAreDoneHereCurly != 1) && (insdeAnestedLoopBAD != 1) && (fixLoopLokingForNum = 1)
{

s:=StrSplit(A_LoopField,"variables.A_Index").2
out1z := s

s:=StrSplit(out1z," ").1
out1z := Trim(s)

;MsgBox, % out1z

;MsgBox, do we came here 2
fixLoopLokingForNum := 0
foundTheTopLoop++
  inTarget := 1
	;MsgBox, % A_LoopField
	dontSaveStr := 1

	ALoopField := A_LoopField

	;ALoopField := StrReplace(ALoopField, "for (/* Loop parse */", "for (/* Loop parse */ /* From AHK */")
DeleayOneCuzOfLoopParse := 1
	out4758686d86d86d86578991a%A_IndexLoopCurlyFix% .= ALoopField . "`n"
}

if (inTarget = 1) && (InStr(A_LoopField, "{")) && (insdeAnestedLoopBAD != 1)
{
insideBracket := 1
}

if (insideBracket = 1) && (InStr(A_LoopField, "{")) && (insdeAnestedLoopBAD != 1)
{
netsedCurly++
}

if (insideBracket = 1) && (InStr(A_LoopField, "}")) && (insdeAnestedLoopBAD != 1)
{
netsedCurly--
readyToEnd := 1
}

if (InStr(A_LoopField, "for (/* ")) && (insdeAnestedLoopBAD != 1) && (foundTheTopLoop >= 2)
{
insdeAnestedLoopBAD := 1
insideBracket1 := 0
netsedCurly1 := 0
}
if (inTarget = 1)
{
foundTheTopLoop++
}
if (insdeAnestedLoopBAD = 1)
{



if (InStr(A_LoopField, "{"))
{
insideBracket1 := 1
}

if (insideBracket1 = 1) && (InStr(A_LoopField, "{"))
{
netsedCurly1++
}

if (insideBracket1 = 1) && (InStr(A_LoopField, "}"))
{
netsedCurly1--
readyToEnd1 := 1
}


if (InStr(A_LoopField, "}")) && (readyToEnd1 = 1) && (netsedCurly1 = 0) && (insideBracket = 1)
{
;MsgBox, % A_LoopField
eldLoopNestedBADlol := 1
;out4758686d86d86d86578991a%A_IndexLoopCurlyFix% .= A_LoopField . "`n"
}

out4758686d86d86d86578991a%A_IndexLoopCurlyFix% .= A_LoopField . "`n"

}


if (inTarget = 1) && (dontSaveStr != 1) && (fixLoopLokingForNum != 1) && (insdeAnestedLoopBAD != 1)
{

ALoopField := A_LoopField




; Replace "A_Index" with or without a following digit with "A_Index" + out1z
ALoopField := RegExReplace(ALoopField, "A_Index(?:\d+)?", "A_Index" . out1z)



;ALoopField := StrReplace(ALoopField, "A_LoopField", "A_LoopField" . A_IndexLoopCurlyFix)


out4758686d86d86d86578991a%A_IndexLoopCurlyFix% .= ALoopField . "`n"

}


if (inTarget = 1) && (InStr(A_LoopField, "}")) && (readyToEnd = 1) && (netsedCurly = 0) && (weAreDoneHereCurly = 0) && (dontSaveStr != 1) && (insdeAnestedLoopBAD != 1)
{
;MsgBox, % A_LoopField
weAreDoneHereCurly := 1
inTarget := 0
endBracketDOntPutThere := 1
;out4758686d86d86d86578991a%A_IndexLoopCurlyFix% .= A_LoopField . "`n"
}
dontSaveStr := 0

if (inTarget != 1) && (endBracketDOntPutThere != 1) && (insdeAnestedLoopBAD != 1)
{
out4758686d86d86d86578991a%A_IndexLoopCurlyFix% .= A_LoopField . "`n"

}
endBracketDOntPutThere := 0

if (eldLoopNestedBADlol = 1)
{
 insdeAnestedLoopBAD := 0
}


}

StringTrimRight, out4758686d86d86d86578991a%A_IndexLoopCurlyFix%, out4758686d86d86d86578991a%A_IndexLoopCurlyFix%, 1
;MsgBox, % out4758686d86d86d86578991a%A_IndexLoopCurlyFix%

jsCode := out4758686d86d86d86578991a%A_IndexLoopCurlyFix%

;MsgBox, % jsCode
wasAtanyIfsElseAddA_IndexLoopCurlyFix := 1
}
else
{


inTarget := 0
insideBracket := 0
netsedCurly := 0
eldLoopNestedBADlol := 0
readyToEnd := 0
endBracketDOntPutThere := 0
dontSaveStr := 0
weAreDoneHereCurly := 0
DeleayOneCuzOfLoopParse := 0
fixLoopLokingForNum := 0
insdeAnestedLoopBAD := 0
foundTheTopLoop := 0
out4758686d86d86d86578991a%A_IndexLoopCurlyFix% := ""
Loop, Parse, jsCode, `n, `r
{

if (InStr(A_LoopField, fixLoopLokingFor)) && (insdeAnestedLoopBAD != 1)
{
fixLoopLokingForNum := 1
;MsgBox, do we came here 3
}

if (InStr(A_LoopField, "for (/*")) && (weAreDoneHereCurly != 1) && (insdeAnestedLoopBAD != 1) && (fixLoopLokingForNum = 1)
{


s:=StrSplit(A_LoopField,"variables.A_Index").2
out1z := s

s:=StrSplit(out1z," ").1
out1z := Trim(s)

;MsgBox, % out1z

fixLoopLokingForNum := 0
;MsgBox, do we came here 4
foundTheTopLoop++
  inTarget := 1
	;MsgBox, % A_LoopField
	dontSaveStr := 1

	ALoopField := A_LoopField

	;ALoopField := StrReplace(ALoopField, "for (/* Loop parse */", "for (/* Loop parse */ /* From AHK */")
DeleayOneCuzOfLoopParse := 1
	out4758686d86d86d86578991a%A_IndexLoopCurlyFix% .= ALoopField . "`n"
}

if (inTarget = 1) && (InStr(A_LoopField, "{")) && (insdeAnestedLoopBAD != 1)
{
insideBracket := 1
}

if (insideBracket = 1) && (InStr(A_LoopField, "{")) && (insdeAnestedLoopBAD != 1)
{
netsedCurly++
}

if (insideBracket = 1) && (InStr(A_LoopField, "}")) && (insdeAnestedLoopBAD != 1)
{
netsedCurly--
readyToEnd := 1
}

if (InStr(A_LoopField, "for (/* ")) && (insdeAnestedLoopBAD != 1) && (foundTheTopLoop >= 2)
{
insdeAnestedLoopBAD := 1
insideBracket1 := 0
netsedCurly1 := 0
}
if (inTarget = 1)
{
foundTheTopLoop++
}
if (insdeAnestedLoopBAD = 1)
{



if (InStr(A_LoopField, "{"))
{
insideBracket1 := 1
}

if (insideBracket1 = 1) && (InStr(A_LoopField, "{"))
{
netsedCurly1++
}

if (insideBracket1 = 1) && (InStr(A_LoopField, "}"))
{
netsedCurly1--
readyToEnd1 := 1
}


if (InStr(A_LoopField, "}")) && (readyToEnd1 = 1) && (netsedCurly1 = 0) && (insideBracket = 1)
{
;MsgBox, % A_LoopField
eldLoopNestedBADlol := 1
;out4758686d86d86d86578991a%A_IndexLoopCurlyFix% .= A_LoopField . "`n"
}


out4758686d86d86d86578991a%A_IndexLoopCurlyFix% .= A_LoopField . "`n"

}


if (inTarget = 1) && (dontSaveStr != 1) && (fixLoopLokingForNum != 1) && (insdeAnestedLoopBAD != 1)
{

ALoopField := A_LoopField


; Replace "A_Index" with or without a following digit with "A_Index" + out1z
ALoopField := RegExReplace(ALoopField, "A_Index(?:\d+)?", "A_Index" . out1z)
; Replace "A_Index" with or without a following digit with "A_Index" + out1z
ALoopField := RegExReplace(ALoopField, "A_LoopField(?:\d+)?", "A_LoopField" . out1z)





out4758686d86d86d86578991a%A_IndexLoopCurlyFix% .= ALoopField . "`n"

}


if (inTarget = 1) && (InStr(A_LoopField, "}")) && (readyToEnd = 1) && (netsedCurly = 0) && (weAreDoneHereCurly = 0) && (dontSaveStr != 1) && (insdeAnestedLoopBAD != 1)
{
;MsgBox, % A_LoopField
weAreDoneHereCurly := 1
inTarget := 0
endBracketDOntPutThere := 1
;out4758686d86d86d86578991a%A_IndexLoopCurlyFix% .= A_LoopField . "`n"
}
dontSaveStr := 0

if (inTarget != 1) && (endBracketDOntPutThere != 1) && (insdeAnestedLoopBAD != 1)
{
out4758686d86d86d86578991a%A_IndexLoopCurlyFix% .= A_LoopField . "`n"

}
endBracketDOntPutThere := 0

if (eldLoopNestedBADlol = 1)
{
 insdeAnestedLoopBAD := 0
}


}

StringTrimRight, out4758686d86d86d86578991a%A_IndexLoopCurlyFix%, out4758686d86d86d86578991a%A_IndexLoopCurlyFix%, 1
;MsgBox, % out4758686d86d86d86578991a%A_IndexLoopCurlyFix%

jsCode := out4758686d86d86d86578991a%A_IndexLoopCurlyFix%

;MsgBox, % jsCode
wasAtanyIfsElseAddA_IndexLoopCurlyFix := 1
}

if (wasAtanyIfsElseAddA_IndexLoopCurlyFix = 1)
{
A_IndexLoopCurlyFix++
wasAtanyIfsElseAddA_IndexLoopCurlyFix := 0
}
}


out4758686d86dgt8r754444444 := ""
hold := 0
Loop, Parse, jsCode, `n, `r
{
    ignore := 0
    if (InStr(A_LoopField, "for (/*"))
    {
        if (hold = 1 && holdText = A_LoopField) {
            ignore := 1
        }
        else {
            holdText := A_LoopField
            hold := 1
        }
    }

    if (!ignore) {
        out4758686d86dgt8r754444444 .= A_LoopField . "`n"
    }
}

StringTrimRight, out4758686d86dgt8r754444444, out4758686d86dgt8r754444444, 1
jsCode := out4758686d86dgt8r754444444



out4758686d86d86d86578991abc := ""

Loop, Parse, jsCode, `n, `r
{

str := Trim(A_LoopField)


if (Instr(str, "itsfortheloopfixinghhhhhhhhcksdvbdshjvds"))
{
  str := ""
}


str := StrReplace(str, "variables.A_ScreenWidth", "BuildInVars(""A_ScreenWidth"")")
str := StrReplace(str, "variables.A_ScreenHeight", "BuildInVars(""A_ScreenHeight"")")
str := StrReplace(str, "variables.A_GuiControl", "A_GuiControl")
str := StrReplace(str, "variables.A_TimeIdle", "BuildInVars(""A_TimeIdle"")")
str := StrReplace(str, "variables.A_TickCount", "BuildInVars(""A_TickCount"")")
str := StrReplace(str, "variables.A_LastKey", "BuildInVars(""A_LastKey"")")
str := StrReplace(str, "variables.A_Now", "BuildInVars(""A_Now"")")
str := StrReplace(str, "variables.A_YYYY", "BuildInVars(""A_YYYY"")")
str := StrReplace(str, "variables.A_MM", "BuildInVars(""A_MM"")")
str := StrReplace(str, "variables.A_MMMM", "BuildInVars(""A_MMMM"")")
str := StrReplace(str, "variables.A_MMM", "BuildInVars(""A_MMM"")")
str := StrReplace(str, "variables.A_DDDD", "BuildInVars(""A_DDDD"")")
str := StrReplace(str, "variables.A_DDD", "BuildInVars(""A_DDD"")")
str := StrReplace(str, "variables.A_DD", "BuildInVars(""A_DD"")")
str := StrReplace(str, "variables.A_Hour", "BuildInVars(""A_Hour"")")
str := StrReplace(str, "variables.A_Min", "BuildInVars(""A_Min"")")
str := StrReplace(str, "variables.A_Sec", "BuildInVars(""A_Sec"")")
str := StrReplace(str, "variables.A_Space", "BuildInVars(""A_Space"")")
str := StrReplace(str, "variables.A_Tab", "BuildInVars(""A_Tab"")")


str := StrReplace(str, "Input, A_LastKey, L1 V", "// Input, A_LastKey, L1 V")

str := StrReplace(str, "GetKeyState ( ""Right", "GetKeyState ( ""ArrowRight")
str := StrReplace(str, "GetKeyState ( ""Left", "GetKeyState ( ""ArrowLeft")
str := StrReplace(str, "GetKeyState ( ""Up", "GetKeyState ( ""ArrowUp")
str := StrReplace(str, "GetKeyState ( ""Down", "GetKeyState ( ""ArrowDown")

str := StrReplace(str, "return \""", "return """"")

str := StrReplace(str, "= \""""", "= """"")
;MsgBox, % str
str := StrReplace(str, " + \"",", " + """",")
str := StrReplace(str, " + \"" + ", " + """" + ")
str := StrReplace(str, " + \"";", " + """";")
str := StrReplace(str, "\"", ", """, ")
str := StrReplace(str, "= \""", "= """"")
str := StrReplace(str, "= \""""", "= """"")
str := StrReplace(str, "+ \""""", "+ """"")
str := StrReplace(str, "(/^Gui\d*/=  """")", "(/^Gui\d*/, """")")
str := StrReplace(str, ", , )", ")")

str := StrReplace(str, " + \"")", " + """")")
str := StrReplace(str, "window.open(\""", "window.open(""""")

str := StrReplace(str, "("""" + variables. ", "("""" + ")

if (Trim(str) == "Return")
{
str := "}"
}

if (InStr(str, "("))
{

checkParenetctiesCheckFix1 := 0
checkParenetctiesCheckFix2 := 0
Loop, Parse, str
{
  if (A_LoopField = "(")
  {
   checkParenetctiesCheckFix1++
  }
  if (A_LoopField = ")")
  {
   checkParenetctiesCheckFix2++
  }

}

if (checkParenetctiesCheckFix1 != checkParenetctiesCheckFix2)
{
str := Trim(str)

if (InStr(str, "))")) && (InStr(str, "getDataFromEndpoint"))
{
StringTrimRight, str, str, 1
}
}
}


; Regular expression pattern
pattern := """\/(\w+)"""

; Match the pattern in the text
RegExMatch(str, pattern, matches)

; Extract the captured word
word := matches1


endpoints .= word . "`n"


if (InStr(str, "getDataFromEndpoint"))
{
DoWeHaveEndpoints := 1
}




out4758686d86d86d86578991abc .= str . "`n"
}

StringTrimRight, out4758686d86d86d86578991abc, out4758686d86d86d86578991abc, 1

jsCode := out4758686d86d86d86578991abc


sort, endpoints, U


;MsgBox, % endpoints

Loop, Parse, endpoints, `n, `r
{
if (A_LoopField != "")
{
 endpoint := A_LoopField
flaskFunction =
(


@app.route('/%endpoint%', methods=['POST'])
def %endpoint%():
    request_data = request.get_json()
    print(f"Data from Hell: {request_data}")
    return "hello from Python"


)



allEndponitsInPython .= flaskFunction . "`n"
;MsgBox, % allEndponitsInPython

}
}





;MsgBox, %variables%
outVarsFixBugs := ""
Loop, Parse, variables, `n, `r
{

;MsgBox, |%A_LoopField%|


str := A_LoopField

s:=StrSplit(str,":").1
outChckBugColomNumbers := s

outChckBugColomNumbers := Trim(outChckBugColomNumbers)


if (InStr(A_LoopField, " : null")) or (InStr(A_LoopField, "if: null")) or (InStr(A_LoopField, "~: null,")) or RegExMatch(outChckBugColomNumbers, "^\d+$")
{

}
else
{
outVarsFixBugs .= A_LoopField . "`n"
}

}

StringTrimRight, outVarsFixBugs, outVarsFixBugs, 1

variables := outVarsFixBugs

;MsgBox, % variables
sort, variables, U


;MsgBox %jsCode%



if (variables != "")
{
variables =
(
let variables = {
%variables%
};
)
}
;MsgBox %variables%


varsOUT123456 := ""
Loop, Parse, variables, `n, `r
{

if !(InStr(A_LoopField, "variables."))
{
 varsOUT123456 .= A_LoopField . "`n"
}

}

StringTrimRight, varsOUT123456, varsOUT123456, 1
variables := varsOUT123456


varsOUT1234567 := ""
Loop, Parse, variables, `n, `r
{


str := Trim(A_LoopField)

s:=StrSplit(str,":").1
out1 := s

if (A_Index <= 3)
{
varsOUT1234567 .= A_LoopField . "`n"
}

if !(InStr(out1, " ")) && (A_Index >= 4)
{
 varsOUT1234567 .= A_LoopField . "`n"
}

}

StringTrimRight, varsOUT1234567, varsOUT1234567, 1
variables := varsOUT1234567


jsCodeGuiOutNum := ""

Loop, Parse, jsCodeGui, `n ,`r
{
if (A_LoopField != "")
{
jsCodeGuiOutNum .= RegExReplace(A_LoopField, "\D") . "`n"
}

}

StringTrimRight, jsCodeGuiOutNum, jsCodeGuiOutNum, 1
;MsgBox, % jsCodeGuiOutNum
Sort, jsCodeGuiOutNum, U
;MsgBox, |%jsCodeGuiOutNum%|

jsCodeGuiOut := ""

var55 := ""
Loop, Parse, jsCodeGuiOutNum, `n ,`r
{


var55 =
(
let Gui%A_LoopField% = {};
Gui%A_LoopField% = document.createElement("div");


)
jsCodeGuiOut .= var55
}

StringTrimRight, jsCodeGuiOut, jsCodeGuiOut, 1
jsCodeGui := jsCodeGuiOut

pythonCode =
(
from flask import Flask, send_file, request, jsonify
import os

app = Flask(__name__)



@app.route('/')
def app_route():
    return send_file(os.path.join(os.path.dirname(__file__), 'index.html')), 200




%allEndponitsInPython%



@app.errorhandler(404)
def not_found(e):
    return "Page not found", 404

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000, debug=True)

)

if (DoWeHaveEndpoints = 1) {
    ; Check if the main Python file doesn't exist
    if !FileExist("server_" . filenameOfHTH . ".py") {
        ; If it doesn't exist, create it and append pythonCode to it
        FileAppend, % pythonCode, server_%filenameOfHTH%.py
    } else {
        ; If it exists, try appending to a numbered file
        Loop {
            ; Construct the filename with a numeric suffix using A_Index
            filename := "server_" . filenameOfHTH . " (" . A_Index . ").py"
            ; Check if this numbered file doesn't exist
            if !FileExist(filename) {
                ; If it doesn't exist, create it and append pythonCode to it
                FileAppend, % pythonCode, % filename
                break  ; Exit the loop
            }
        }
    }
}






jsCodeVIYGUOGUYIVGOYIVGOUYVUIYVUOHU := ""
Loop, Parse, jsCode, `n, `r
{
if (SubStr(Trim(A_LoopField), 1, 6) = "//  //")
{
;MsgBox, % A_LoopField

var1 := StrReplace(A_LoopField, "//  //", "//")

jsCodeVIYGUOGUYIVGOYIVGOUYVUIYVUOHU .= var1 . "`n"

}
else
{
jsCodeVIYGUOGUYIVGOYIVGOUYVUIYVUOHU .= A_LoopField . "`n"

}
}

StringTrimRight, jsCodeVIYGUOGUYIVGOYIVGOUYVUIYVUOHU, jsCodeVIYGUOGUYIVGOYIVGOUYVUIYVUOHU, 1

jsCode := jsCodeVIYGUOGUYIVGOYIVGOUYVUIYVUOHU




jsCode := variables . "`n`n" . funcs . "`n`n" . onKeyPress . "`n`n" . jsCodeGui . "`n`n" . HotKeyCalledHotKyes . "`n`n" . jsCode


addFuncIfWeUseIt_showCustomMessageBox =
(

      function showCustomMessageBox(options, title, text, value, timeout) {
        return new Promise((resolve) => {
          // Define default options for the message box
          let defaultOptions = {
            title: title || "", // Default title is empty
            text: text || "Press OK to continue.", // Default text if not provided
            showCancelButton: false, // Default is to not show Cancel button
            showDenyButton: false, // Default is to not show Deny button
            confirmButtonText: "OK", // Default text for OK button
            focusConfirm: true, // Default focus on OK button
          };

          let numOriginal = value;

          let num = numOriginal;

          let done1 = 0;

          let done2 = 0;

          let done3 = 0;

          let AIndex = 0;

          for (AIndex = 1; AIndex <= 1; AIndex++) {
            // this is about if you add always on top in a msgbox it will be removed in js cuz its kinda useless...
            // becouse if you like adding always on top in ahk in js we dont realy do it so yeah
            if (num >= 262144) {
              num = num - 262144;
              numOriginal = numOriginal - 262144;
            }

            if (num >= 256 && num < 500) {
              num = num - 256;

              done3 = 256;
            }

            if (num >= 512) {
              num = num - 512;

              done3 = 512;
            }

            if (num == 0) {
              done1 = 0;

              break;
            }

            if (num <= 6) {
              done1 = num;

              break;
            }

            if (num >= 64 && num < 64 * 2) {
              done2 = 64;

              if (num == 64) {
                done1 = 0;

                break;
              } else {
                done1 = num - 64;

                break;
              }
            }

            if (num >= 48 && num < 63) {
              done2 = 48;

              if (num == 48) {
                done1 = 0;

                break;
              } else {
                done1 = num - 48;

                break;
              }
            }

            if (num >= 32 && num < 47) {
              done2 = 32;

              if (num == 32) {
                done1 = 0;

                break;
              } else {
                done1 = num - 32;

                break;
              }
            }

            if (num >= 16 && num < 30) {
              done2 = 16;

              if (num == 16) {
                done1 = 0;

                break;
              } else {
                done1 = num - 16;

                break;
              }
            }
          }

          let doneAdded = done1 + done2 + done3;

          if (doneAdded !== numOriginal) {
            // displayMessage("The calc was wrong!");
          } else {
            // displayMessage("num was: " + numOriginal + "\ndone1: " + done1 + "\ndone2: " + done2 + "\ndone3: " + done3);
          }

          // Parse the value to determine the options for the message box
          if (done1 === 1) defaultOptions.showCancelButton = true; // OK/Cancel in ahk but here it will show Ok/Cancel wiat its same haha

          // not gonna work if you can make it work i will appreciate
          //   if (done1 === 2) {
          //     defaultOptions.showCancelButton = true; // Abort/Retry/Ignore
          //     defaultOptions.showDenyButton = true;
          //   }
          if (done1 === 3) {
            defaultOptions.showCancelButton = true; // Yes/No/Cancel in ahk but here it will show Ok/No/Cancel
            defaultOptions.showDenyButton = true;
          }
          if (done1 === 4) {
            // defaultOptions.showCancelButton = true;
            defaultOptions.showDenyButton = true; // Yes/No in ahk but here it will show Ok/No
          }
          if (done1 === 5) {
            defaultOptions.showCancelButton = true; // Retry/Cancel in ahk but here it will show Ok/Cancel tip you can write in the Msgbox press ok to retry
          }
          // not gonna work if you can make it work i will appreciate
          //   if (done1 === 6) {
          //     defaultOptions.showCancelButton = true; // Cancel/Try Again/Continue
          //     defaultOptions.showDenyButton = true;
          //   }

          if (done2 === 16) defaultOptions.icon = "error"; // Icon Hand (stop/error)
          if (done2 === 32) defaultOptions.icon = "question"; // Icon Question
          if (done2 === 48) defaultOptions.icon = "warning"; // Icon Exclamation
          if (done2 === 64) defaultOptions.icon = "info"; // Icon Asterisk (info)

          if (done3 === 256) defaultOptions.focusDeny = true; // Makes the 3rd button the default
          if (done3 === 512) defaultOptions.focusCancel = true; // Makes the 2nd button the default

          // Set timeout if provided
          if (timeout) {
            defaultOptions.timer = timeout * 1000; // Convert timeout to milliseconds
          }

          // Merge default options with provided options
          Object.assign(defaultOptions, options);

          // Display the message box with the constructed options
          Swal.fire(defaultOptions).then((result) => {
            if (result.isConfirmed) {
              resolve("OK");
            } else if (result.isDenied) {
              resolve("No");
            } else {
              resolve("Cancel");
            }
          });
        });
      }

)

addFuncIfWeUseIt_BuildInVars =
(

      function BuildInVars(varName) {
        switch (varName) {
          case "A_ScreenWidth":
            // Return screen width
            return window.innerWidth;
          case "A_LastKey":
            // Return screen width
            return getLastKeyPressed();
          case "A_ScreenHeight":
            // Return screen height
            return window.innerHeight;
          case "A_TimeIdle":
            // Return time idle
            return A_TimeIdle();
          case "A_TickCount":
            // Return tick count in milliseconds
            return A_TickCount();
          case "A_Now":
            // Return current local timestamp
            return new Date().toLocaleString();
          case "A_YYYY":
            // Return current year
            return new Date().getFullYear();
          case "A_MM":
            // Return current month
            return (new Date().getMonth() + 1).toString().padStart(2, "0");
          case "A_DD":
            // Return current day
            return new Date().getDate().toString().padStart(2, "0");
          case "A_MMMM":
            // Return full month name
            return new Date().toLocaleDateString(undefined, { month: "long" });
          case "A_MMM":
            // Return short month name
            return new Date().toLocaleDateString(undefined, { month: "short" });
          case "A_DDDD":
            // Return full day name
            return new Date().toLocaleDateString(undefined, { weekday: "long" });
          case "A_DDD":
            // Return short day name
            return new Date().toLocaleDateString(undefined, { weekday: "short" });
          case "A_Hour":
            // Return current hour
            return new Date().getHours().toString().padStart(2, "0");
          case "A_Min":
            // Return current minute
            return new Date().getMinutes().toString().padStart(2, "0");
          case "A_Sec":
            // Return current second
            return new Date().getSeconds().toString().padStart(2, "0");
          case "A_Space":
            // Return space character
            return " ";
          case "A_Tab":
            // Return tab character
            return "\t";

          default:
            // Handle unknown variable names
            return null;
        }
      }

)

addFuncIfWeUseIt_MakeHotKey =
(

      function MakeHotKey(hotkey, callback) {
        document.addEventListener("keydown", function (event) {
          const keys = hotkey.split("+").map((key) => key.trim().toLowerCase());
          const modifiers = {
            ctrl: event.ctrlKey,
            shift: event.shiftKey,
            alt: event.altKey,
          };

          let hotkeyPressed = true;
          keys.forEach((key) => {
            if (key === "ctrl" || key === "shift" || key === "alt") {
              if (!modifiers[key]) {
                hotkeyPressed = false;
              }
            } else if (key === "backspace") {
              if (event.key !== "Backspace") {
                hotkeyPressed = false;
              }
            } else if (key.startsWith("arrow")) {
              const arrowDirection = key.replace("arrow", "");
              if (arrowDirection === "up" && event.key !== "ArrowUp") {
                hotkeyPressed = false;
              } else if (arrowDirection === "down" && event.key !== "ArrowDown") {
                hotkeyPressed = false;
              } else if (arrowDirection === "left" && event.key !== "ArrowLeft") {
                hotkeyPressed = false;
              } else if (arrowDirection === "right" && event.key !== "ArrowRight") {
                hotkeyPressed = false;
              }
            } else if (!event.key.match(/^[0-9a-zA-Z]$/) && event.key !== key) {
              hotkeyPressed = false;
            } else if (event.key.toLowerCase() !== key && event.key.match(/^[a-zA-Z]$/)) {
              hotkeyPressed = false;
            }
          });

          if (hotkeyPressed) {
            if (modifiers["shift"]) {
              callback(hotkey.toUpperCase());
            } else {
              callback(hotkey.toLowerCase());
            }
          }
        });
      }

)

addFuncIfWeUseIt_Abs =
(

      // Absolute value
      function Abs(num) {
        if (num === null || isNaN(num)) return null;
        return Math.abs(num);
      }

)


addFuncIfWeUseIt_ACos =
(

      // Arc cosine
      function ACos(num) {
        if (num === null || isNaN(num)) return null;
        return Math.acos(num);
      }

)

addFuncIfWeUseIt_ASin =
(

      // Arc sine
      function ASin(num) {
        if (num === null || isNaN(num)) return null;
        return Math.asin(num);
      }

)

addFuncIfWeUseIt_ATan =
(

      // Arc tangent
      function ATan(num) {
        if (num === null || isNaN(num)) return null;
        return Math.atan(num);
      }

)

addFuncIfWeUseIt_Ceil =
(

      // Ceiling
      function Ceil(num) {
        if (num === null || isNaN(num)) return null;
        return Math.ceil(num);
      }

)

addFuncIfWeUseIt_Cos =
(

      // Cosine
      function Cos(num) {
        if (num === null || isNaN(num)) return null;
        return Math.cos(num);
      }

)

addFuncIfWeUseIt_Exp =
(

      // Exponential
      function Exp(num) {
        if (num === null || isNaN(num)) return null;
        return Math.exp(num);
      }

)

addFuncIfWeUseIt_Floor =
(

      // Flooring
      function Floor(num) {
        if (num === null || isNaN(num)) return null;
        return Math.floor(num);
      }

)

addFuncIfWeUseIt_Ln =
(

      // Natural logarithm
      function Ln(num) {
        if (num === null || isNaN(num)) return null;
        return Math.log(num);
      }

)

addFuncIfWeUseIt_Log =
(

      // Base-10 logarithm
      function Log(num) {
        if (num === null || isNaN(num)) return null;
        return Math.log10(num);
      }

)

addFuncIfWeUseIt_Round =
(

      // Rounding
      function Round(num) {
        if (num === null || isNaN(num)) return null;
        return Math.round(num);
      }

)

addFuncIfWeUseIt_Sin =
(

      // Sin
      function Sin(num) {
        if (num === null || isNaN(num)) return null;
        return Math.sin(num);
      }

)

addFuncIfWeUseIt_Sqrt =
(

      // Square root
      function Sqrt(num) {
        if (num === null || isNaN(num)) return null;
        return Math.sqrt(num);
      }

)

addFuncIfWeUseIt_Tan =
(

      // Tangent
      function Tan(num) {
        if (num === null || isNaN(num)) return null;
        return Math.tan(num);
      }

)

addFuncIfWeUseIt_Chr =
(

      function Chr(number) {
        // Check if the number is null
        if (number === null) {
          // Return an empty string
          return "";
        }

        // Check if the number is within the valid range
        if (number >= 0 && number <= 0x10ffff) {
          // Convert the number to a character using String.fromCharCode
          return String.fromCharCode(number);
        } else {
          // Return an empty string for invalid numbers
          return "";
        }
      }

)

addFuncIfWeUseIt_sleep =
(

      // Function to simulate Sleep
      function sleep(ms) {
        return new Promise((resolve) => setTimeout(resolve, ms));
      }

)

addFuncIfWeUseIt_InStr =
(

      // InStr
      function InStr(Haystack, Needle, CaseSensitive = true, StartingPos = 1, Occurrence = 1) {
        if (Haystack === null || Needle === null) return false;

        // Adjust starting position if less than 1
        StartingPos = Math.max(StartingPos, 1);

        // Case-sensitive search by default
        if (!CaseSensitive) {
          Haystack = Haystack.toLowerCase();
          Needle = Needle.toLowerCase();
        }

        let pos = -1;
        let count = 0;
        for (let i = StartingPos - 1; i < Haystack.length; i++) {
          if (Haystack.substring(i, i + Needle.length) === Needle) {
            count++;
            if (count === Occurrence) {
              pos = i + 1;
              break;
            }
          }
        }

        return pos > 0; // Return true if the substring is found, false otherwise
      }

)

addFuncIfWeUseIt_RegExMatch =
(

      // RegExMatch
      function RegExMatch(Haystack, NeedleRegEx, OutputVar, StartingPos) {
          if (Haystack === null || NeedleRegEx === null) return null;

          const regex = new RegExp(NeedleRegEx);
          let match;

          if (typeof Haystack === 'string') {
              match = Haystack.match(regex);
          }

          if (match) {
              if (OutputVar) {
                  OutputVar.push(match[0]);
              }
              return match.index + 1;
          } else {
              return 0;
          }
      }

)

addFuncIfWeUseIt_StrLen =
(

      // StrLen
      function StrLen(str) {
        return str === null ? null : str.length;
      }

)

addFuncIfWeUseIt_getRandomNumber =
(

      // Function to generate a random number between min (inclusive) and max (inclusive)
      function getRandomNumber(min, max) {
        return Math.floor(Math.random() * (max - min + 1) + min);
      }

)

addFuncIfWeUseIt_SubStr =
(

      function SubStr(str, startPos, length) {
        // If str is null or undefined, return an empty string
        if (str === null || str === undefined) {
          return "";
        }

        // If length is not provided or is blank, default to "all characters"
        if (length === undefined || length === "") {
          length = str.length - startPos + 1;
        }

        // If startPos is less than 1, adjust it to start from the end of the string
        if (startPos < 1) {
          startPos = str.length + startPos;
        }

        // Extract the substring based on startPos and length
        return str.substr(startPos - 1, length);
      }

)

addFuncIfWeUseIt_Trim =
(

      function Trim(inputString) {
        // Check if inputString is null or undefined
        if (inputString == null) {
          return ""; // Return an empty string if inputString is null or undefined
        }
        return inputString.replace(/^\s+|\s+$/g, ""); // Removes leading and trailing whitespace
      }

)

addFuncIfWeUseIt_ParseInt =
(

      async function ParseInt(num) {
        if (num === null) {
          return null;
        }

        num = num.trim();
        num++;
        num--;

        return num;
      }
)

addFuncIfWeUseIt_StrReplace =
(

      function StrReplace(originalString, find, replaceWith) {
        // Check if originalString is a string
        if (typeof originalString !== "string") {
          return originalString; // Return originalString as is
        }
        // Use replace method to replace find with replaceWith
        return originalString.replace(new RegExp(find, "g"), replaceWith);
      }

)

addFuncIfWeUseIt_Mod =
(

      // Custom Mod function
      function Mod(dividend, divisor) {
        return dividend `% divisor;
      }

)

addFuncIfWeUseIt_Asc =
(

      function Asc(char) {
        return char.charCodeAt(0);
      }

)

addFuncIfWeUseIt_StringTrimLeft =
(

      // Function to trim specified number of characters from the left side of a string
      function StringTrimLeft(input, numChars) {
        if (input && input.length >= numChars) {
          return input.substring(numChars);
        } else {
          console.error("Invalid input provided.");
          return input; // Return original input if trimming is not possible
        }
      }

)

addFuncIfWeUseIt_StringTrimRight =
(

      // Function to trim specified number of characters from the right side of a string
      function StringTrimRight(input, numChars) {
        if (input && input.length >= numChars) {
          return input.substring(0, input.length - numChars);
        } else {
          console.error("Invalid input provided.");
          return input; // Return original input if trimming is not possible
        }
      }

)

addFuncIfWeUseIt_isMobileDevice =
(

      function isMobileDevice() {
        return /Mobi|Android/i.test(navigator.userAgent);
      }

)

addFuncIfWeUseIt_SetTimer =
(

      // Object to store timer intervals for different functions
      const timerIntervals = {};

      async function SetTimer(func, timeOrOnOff) {
        if (typeof func !== "function" || typeof timeOrOnOff === "undefined") {
          console.error("Invalid arguments. Please provide a valid function and time/On/Off state.");
          return;
        }

        if (typeof timeOrOnOff === "number") {
          // If a number is provided, set the timer to that time in milliseconds and start it.
          func.interval = timeOrOnOff; // Store the interval within the function
          func(); // Call the function initially
          func.intervalId = setInterval(func, timeOrOnOff);
          timerIntervals[func] = func.intervalId; // Store the interval ID
        } else if (timeOrOnOff === "On") {
          // If 'On' is provided, start the timer if it's not already running.
          if (!func.intervalId && func.interval) {
            func(); // Call the function initially
            func.intervalId = setInterval(func, func.interval); // Start with the stored interval
            timerIntervals[func] = func.intervalId; // Store the interval ID
          } else {
            console.error("Timer is not set. Please provide a valid interval.");
          }
        } else if (timeOrOnOff === "Off") {
          // If 'Off' is provided, clear the timer if it's running.
          clearInterval(func.intervalId);
          func.intervalId = null;
          delete timerIntervals[func]; // Remove the interval ID from storage
        } else {
          console.error("Invalid time/On/Off state. Please provide a valid time in milliseconds or 'On'/'Off'.");
        }
      }

)

addFuncIfWeUseIt_GuiControl =
(

      function GuiControl(action, id, param1, param2, param3, param4) {
        const element = document.getElementById(id);
        if (element) {
          if (action === "move") {
            // Set position and size
            element.style.left = param1 + "px";
            element.style.top = param2 + "px";
            element.style.width = param3 + "px";
            element.style.height = param4 + "px";
          } else if (action === "focus" && (element instanceof HTMLInputElement || element instanceof HTMLElement)) {
            // Focus on the element
            element.focus();
          } else if (action === "text") {
            // Set new text content
            element.textContent = param1;
          } else if (action === "hide") {
            // Hide the element
            element.style.display = "none";
          } else if (action === "show") {
            // Show the element
            element.style.display = "";
          } else if (action === "enable") {
            // Enable the element
            element.disabled = false;
          } else if (action === "disable") {
            // Disable the element
            element.disabled = true;
          } else if (action === "font") {
            // Set font size
            element.style.fontSize = param1 + "px";
          } else if (action === "color") {
            // Set color
            element.style.color = param1;
          }
        }
      }

)

addFuncIfWeUseIt_getDataFromEndpoint =
(

      async function getDataFromEndpoint(data, endpoint) {
        // Convert data to JSON string
        const requestData = JSON.stringify(data);

        // Set up fetch request options
        const requestOptions = {
          method: "POST", // or 'GET' depending on your server's requirements
          headers: {
            "Content-Type": "application/json",
          },
          body: requestData,
        };

        // Fetch data from the specified endpoint
        const response = await fetch(endpoint, requestOptions);

        // Check if response is successful
        if (!response.ok) {
          throw new Error(``Failed to fetch data from ${endpoint}. Status: ${response.status}``);
        }

        // Parse response data based on Content-Type header
        const contentType = response.headers.get("content-type");
        if (contentType && contentType.includes("application/json")) {
          return response.json(); // Parse JSON response
        } else {
          return response.text(); // Parse plain text response
        }
      }

)

addFuncIfWeUseIt_FileAppend =
(

      function FileAppend(data, filename) {
        // Create a blob with the provided data
        const blob = new Blob([data], { type: "text/plain" });

        // Create a temporary anchor element
        const anchor = document.createElement("a");
        anchor.style.display = "none";

        // Set the download attribute and filename
        anchor.setAttribute("href", window.URL.createObjectURL(blob));
        anchor.setAttribute("download", filename);

        // Append the anchor element to the body
        document.body.appendChild(anchor);

        // Trigger a click event on the anchor element
        anchor.click();

        // Remove the anchor element
        document.body.removeChild(anchor);
      }

)


addFuncIfWeUseIt_isConnectedToBackend =
(

function isConnectedToBackend() {
    return window.location.protocol !== "file:";
}

)


allFuncThatWeNeedToUse := ""


if (Instr(jsCode, "showCustomMessageBox(")) or (Instr(jsCode, "showCustomMessageBox ("))
{
allFuncThatWeNeedToUse .= addFuncIfWeUseIt_showCustomMessageBox . "`n"
}
if (Instr(jsCode, "BuildInVars(")) or (Instr(jsCode, "BuildInVars ("))
{
allFuncThatWeNeedToUse .= addFuncIfWeUseIt_BuildInVars . "`n"
}
if (Instr(jsCode, "MakeHotKey(")) or (Instr(jsCode, "MakeHotKey ("))
{
allFuncThatWeNeedToUse .= addFuncIfWeUseIt_MakeHotKey . "`n"
}
if (Instr(jsCode, "Abs(")) or (Instr(jsCode, "Abs ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_Abs . "`n"
}
if (Instr(jsCode, "ACos(")) or (Instr(jsCode, "ACos ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_ACos . "`n"
}
if (Instr(jsCode, "ASin(")) or (Instr(jsCode, "ASin ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_ASin . "`n"
}
if (Instr(jsCode, "ATan(")) or (Instr(jsCode, "ATan ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_ATan . "`n"
}
if (Instr(jsCode, "Ceil(")) or (Instr(jsCode, "Ceil ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_Ceil . "`n"
}
if (Instr(jsCode, "Cos(")) or (Instr(jsCode, "Cos ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_Cos . "`n"
}
if (Instr(jsCode, "Exp(")) or (Instr(jsCode, "Exp ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_Exp . "`n"
}
if (Instr(jsCode, "Floor(")) or (Instr(jsCode, "Floor ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_Floor . "`n"
}
if (Instr(jsCode, "Ln(")) or (Instr(jsCode, "Ln ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_Ln . "`n"
}
if (Instr(jsCode, "Log(")) or (Instr(jsCode, "Log ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_Log . "`n"
}
if (Instr(jsCode, "Round(")) or (Instr(jsCode, "Round ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_Round . "`n"
}
if (Instr(jsCode, "Sin(")) or (Instr(jsCode, "Sin ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_Sin . "`n"
}
if (Instr(jsCode, "Sqrt(")) or (Instr(jsCode, "Sqrt ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_Sqrt . "`n"
}
if (Instr(jsCode, "Tan(")) or (Instr(jsCode, "Tan ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_Tan . "`n"
}
if (Instr(jsCode, "Chr(")) or (Instr(jsCode, "Chr ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_Chr . "`n"
}
if (Instr(jsCode, "sleep(")) or (Instr(jsCode, "sleep ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_sleep . "`n"
}
if (Instr(jsCode, "InStr(")) or (Instr(jsCode, "InStr ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_InStr . "`n"
}
if (Instr(jsCode, "RegExMatch(")) or (Instr(jsCode, "RegExMatch ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_RegExMatch . "`n"
}
if (Instr(jsCode, "StrLen(")) or (Instr(jsCode, "StrLen ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_StrLen . "`n"
}
if (Instr(jsCode, "getRandomNumber(")) or (Instr(jsCode, "getRandomNumber ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_getRandomNumber . "`n"
}
if (Instr(jsCode, "SubStr(")) or (Instr(jsCode, "SubStr ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_SubStr . "`n"
}
if (Instr(jsCode, "Trim(")) or (Instr(jsCode, "Trim ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_Trim . "`n"
}
if (Instr(jsCode, "ParseInt(")) or (Instr(jsCode, "ParseInt ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_ParseInt . "`n"
}
if (Instr(jsCode, "StrReplace(")) or (Instr(jsCode, "StrReplace ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_StrReplace . "`n"
}
if (Instr(jsCode, "Mod(")) or (Instr(jsCode, "Mod ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_Mod . "`n"
}
if (Instr(jsCode, "Asc(")) or (Instr(jsCode, "Asc ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_Asc . "`n"
}
if (Instr(jsCode, "StringTrimLeft(")) or (Instr(jsCode, "StringTrimLeft ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_StringTrimLeft . "`n"
}
if (Instr(jsCode, "StringTrimRight(")) or (Instr(jsCode, "StringTrimRight ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_StringTrimRight . "`n"
}
if (Instr(jsCode, "isMobileDevice(")) or (Instr(jsCode, "isMobileDevice ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_isMobileDevice . "`n"
}
if (Instr(jsCode, "SetTimer(")) or (Instr(jsCode, "SetTimer ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_SetTimer . "`n"
}
if (Instr(jsCode, "GuiControl(")) or (Instr(jsCode, "GuiControl ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_GuiControl . "`n"
}
if (Instr(jsCode, "getDataFromEndpoint(")) or (Instr(jsCode, "getDataFromEndpoint ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_getDataFromEndpoint . "`n"
}
if (Instr(jsCode, "FileAppend(")) or (Instr(jsCode, "FileAppend ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_FileAppend . "`n"
}
if (Instr(jsCode, "isConnectedToBackend(")) or (Instr(jsCode, "isConnectedToBackend ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_isConnectedToBackend . "`n"
}




upCode1 =
(
<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>HTH HeavenToHell</title>
    <style>
      body {
        background-color: #202020;
        font-family:
          "Open Sans",
          -apple-system,
          BlinkMacSystemFont,
          "Segoe UI",
          Roboto,
          Oxygen-Sans,
          Ubuntu,
          Cantarell,
          "Helvetica Neue",
          Helvetica,
          Arial,
          sans-serif;
      }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/sweetalert2@11" rel="stylesheet" />
  </head>
  <body>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>

      %TextData%

      %base64ImageData%

      // JavaScript equivalent code with variables


      %allFuncThatWeNeedToUse%


      let lastInputTime = Date.now(); // Initialize with current timestamp
      let startTimestamp = Date.now(); // Initialize with current timestamp

      // Event listener to track user activity
      function resetIdleTimer() {
          lastInputTime = Date.now(); // Update last input time
      }

      document.addEventListener('mousemove', resetIdleTimer);
      document.addEventListener('keypress', resetIdleTimer);

      // Function to calculate time since last input event
      function A_TimeIdle() {
          return Date.now() - lastInputTime; // Calculate time difference
      }

      // Function to calculate tick count in milliseconds
      function A_TickCount() {
          return Date.now() - startTimestamp;
      }




)

upCode2 =
(



      let keyState = {}; // Object to track key states

      // Function to handle keydown events
      function handleKeyDown(event) {
        keyState[event.key] = true; // Set key state to true when pressed
      }

      // Function to handle keyup events
      function handleKeyUp(event) {
        keyState[event.key] = false; // Set key state to false when released
      }

      // Add event listeners for keydown and keyup events
      document.addEventListener("keydown", handleKeyDown);
      document.addEventListener("keyup", handleKeyUp);

      // Function to get the state of a key dynamically
      function GetKeyState(key, DownOrUp) {
        return DownOrUp === "D" ? keyState[key] : !keyState[key];
      }

      let lastKeyPressed = "";

      function trackLastKeyPressed() {
        document.addEventListener("keydown", function (event) {
          lastKeyPressed = event.key;
          // console.log(lastKeyPressed);
        });
      }

      function getLastKeyPressed() {
        return lastKeyPressed;
      }

      // Call the trackLastKeyPressed function to start tracking key presses
      trackLastKeyPressed();

      // Now you can call getLastKeyPressed() whenever you need to get the last key pressed



      // Single async function to structure the entire script
      async function runScript() {
        // Declare and assign a variable

)


downCode =
(

 }

      // Call the async function to start the script
      runScript();
    </script>
  </body>
</html>

)


jsCode := upCode1 . upCode2 . jsCode . DownCode


;MsgBox % jsCode

; Save clipboard content to a temporary file
if (fileNameHTH2Num = 1)
{
; this is for my personal HTH runner so dont need this this is only my thing dont change
FileDelete, C:\Users\The_M\OneDrive\Desktop\HTH test\index.html

; this is for my personal HTH runner so dont need this this is only my thing dont change
FileAppend, %jsCode%, C:\Users\The_M\OneDrive\Desktop\HTH test\index.html

}
else
{
FileDelete, index.html

FileAppend, %jsCode%, index.html

}

if (test != 1)
{


; Format the HTML file using Prettier
RunWait, %comspec% /K npx prettier --write index.html & exit, , Hide

; Copy formatted content back to clipboard
FileRead, Clipboard, index.html

MsgBox %Clipboard%
}
ElapsedTime := A_TickCount - StartTime


ms := ElapsedTime

; Calculate the components
hours := Floor(ms / 3600000)
ms := Mod(ms, 3600000)
minutes := Floor(ms / 60000)
ms := Mod(ms, 60000)
seconds := Floor(ms / 1000)
milliseconds := Mod(ms, 1000)

; Display the result
ElapsedTime123 := ""
ElapsedTime123 .= hours "h " minutes "m " seconds "s " milliseconds "ms"

if (fileNameHTH2Num != 1)
{
MsgBox, Done is %ElapsedTime123%
}
else
{
FileAppend,
(
1
), %fileNameHTH2%
}

ExitApp
Return

#if


GuiClose:
!L::
ExitApp
Return





varTraspiler(out2, getVarsNames)
{
global

str := out2

str := Trim(str)

if (RegExMatch(str, "^\d+$")) {
return str
}

if (InStr(str, """"))
{
Loop, % posStartQuotesNum + 1
{
posStartQuotes%A_Index% := ""
}

posStartQuotesNum := 0
backOut := ""
insideQqq := 0
out := ""
restartSomtingBugs := 0
Loop, Parse, str
{


if (A_LoopField = """") && (insideQqq = 0)
{
insideQqq++
posStartQuotesNum++
backOut := ""
restartSomtingBugs := 0
}
else
{
if (A_LoopField = """")
{
insideQqq := 0
}
}

if (insideQqq = 1)
{
restartSomtingBugs++
if (restartSomtingBugs = 1)
{

backOut := "posStartQuotes" . posStartQuotesNum

out .= backOut

}

posStartQuotes%posStartQuotesNum% .= A_LoopField

}
else
{
out .= A_LoopField
}


}

out2 := out

}
else
{
out2 := str
}
;MsgBox, huh %out2%




;MsgBox, % var




varsContents := ""

out2 := StrReplace(out2, """", "ABvarBLAA")


out2 := StrReplace(out2, "(", " ( ")
out2 := StrReplace(out2, ")", " ) ")
out2 := StrReplace(out2, "[", " [ ")
out2 := StrReplace(out2, "]", " ] ")

;MsgBox, % out2



Loop, Parse, out2, " "
{


var1 := A_LoopField
;MsgBox, % var1
if !(InStr(var1, "%")) && !(InStr(var1, "ABvarBLAA"))
{

; Define the string to check
myString := var1

; Regular expression pattern to match any letter
pattern := ".*[A-Za-z].*"

; Check if the string contains a letter
if RegExMatch(myString, pattern)
{
    ;MsgBox, The string contains at least one letter.

buildInFuncNum := 0
Loop, Parse, buildInFunc, `n ,`r
{
if (InStr(var1, A_LoopField))
{
buildInFuncNum++
}

}

if (buildInFuncNum > 0)
{

}
else
{
var1 := Trim(var1)
var1 := "%" . var1 . "%"
}

}
else
{
    ;MsgBox, The string does not contain any letters.
}
;MsgBox, % buildInFuncNum

}

;MsgBox, |%var1%|

mode1 := 0

; Alternatively, if you only want to check if the string contains %
if (InStr(var1, "%")) {
    ;MsgBox, The string contains `%`
mode1 := 2


;StringTrimRight, var1, var1, 1

str := var1


s:=StrSplit(str,"%").1
INout1 := s


s:=StrSplit(str,"%").2
INout2 := s

s:=StrSplit(str,"%").3
INout3 := s

INout2 := "variablesBLAcodevarBLA" . INout2

if (INout1 = "")
{
var1 := INout2
}
else
{
var1 := "variables[" . """" . INout1 . """" . " + " . INout2 . "]"
}

if !(INout3 = "")
{
var1 := "variables[" . """" . INout1 . """" . " + " . INout2 . " + " . """" .  INout3 . """" .  "]"

}


varsContents .= var1 . " "


}

;MsgBox, % A_LoopField
if (SubStr(var1, 1, 1) = "%" && SubStr(var1, 0) = "%" && StrLen(var1) > 1) {
    ;MsgBox, The string starts and ends with `%`
mode1 := 1
MsgBox, % A_LoopField
varsContents .= "variablesBLAcodevarBLA" . A_LoopField . " "

} else {
    ;MsgBox, The string does not start and end with `%`

if (mode1 != 2)
{
mode1 := 3

varsContents .= A_LoopField . " "
}
}





}
;MsgBox, % varsContents


out1 := Trim(out1)


if !(InStr(out1, "%"))
{
variables .= "  " . out1 . ": null," . "`n"
}


StringTrimRight, varsContents, varsContents, 1

out0 := out1
out2 := varsContents



out2 := RegExReplace(out2, "\.(?![0-9])", "+")


out2 := StrReplace(out2, "BLAcodevarBLA", ".")


out2 := StrReplace(out2, "ABvarBLAA", """")
out2 := StrReplace(out2, "%", "")

repaceGetFunctionInAhkToJs()



var := out2


;MsgBox, % var

;var := StrReplace(var, ";", "//")

var := StrReplace(var, ") `;", ")")
var := StrReplace(var, ");", ")")

Loop, %posStartQuotesNum%
{
var := StrReplace(var, "posStartQuotes" . A_Index, posStartQuotes%A_Index%)


var := StrReplace(var, """""", "\""")
var := StrReplace(var, """""""", """\""")
var := StrReplace(var, "\\""", """\""")
var := StrReplace(var, """\"" ", "\"""" ")

var := StrReplace(var, """""", "\""")
var := StrReplace(var, """""""", """\""")
var := StrReplace(var, "\\""", """\""")
var := StrReplace(var, """\"" ", "\"""" ")
var := StrReplace(var, """\"";", "\"""" ")



}


if (getVarsNames = 1)
{
;MsgBox, var %var%
outVars := ""
Loop, Parse, var, `,
{
;MsgBox, % A_LoopField
inLoopVarComma := A_LoopField

inLoopVarComma := Trim(inLoopVarComma)

if (InStr(inLoopVarComma, "variables."))
{
var222 := StrReplace(inLoopVarComma, "variables.", "")
outVars .= inLoopVarComma . " = " . var222 . "`n"
}
}

StringTrimRight, outVars, outVars, 1
;MsgBox, |%outVars%|
return outVars
}


;MsgBox, % var
line := var

return line
}

StrLower(string) {
    StringLower, string, string
   ; MsgBox, % string
	return string
}



CountCommasWithoutBacktick(s)
{
bbbackitck := Chr(96)
howManyCommasWhitBacktickAtTheBegining := 0
AIndex := 0
Loop, Parse, s, " "
{


if (InStr(A_LoopField, ",")) && !(InStr(A_LoopField, bbbackitck . ","))
{
AIndex++
;~ MsgBox, %A_LoopField%
;~ MsgBox, AIndex %AIndex%
}

;~ MsgBox, % bbbackitck . ","
;~ MsgBox, % A_LoopField
if (InStr(A_LoopField, bbbackitck . ","))
{
  howManyCommasWhitBacktickAtTheBegining++
;MsgBox, % howManyCommasWhitBacktickAtTheBegining
}

} ; Loop, Parse End


if (AIndex >= 3)
{
return true
}
else
{
return false
}


} ; end of func


Base64Enc( ByRef Bin, nBytes, LineLength := 64, LeadingSpaces := 0 ) { ; By SKAN / 18-Aug-2017
    Local Rqd := 0, B64, B := "", N := 0 - LineLength + 1  ; CRYPT_STRING_BASE64 := 0x1
      DllCall( "Crypt32.dll\CryptBinaryToString", "Ptr",&Bin ,"UInt",nBytes, "UInt",0x1, "Ptr",0,   "UIntP",Rqd )
      VarSetCapacity( B64, Rqd * ( A_Isunicode ? 2 : 1 ), 0 )
      DllCall( "Crypt32.dll\CryptBinaryToString", "Ptr",&Bin, "UInt",nBytes, "UInt",0x1, "Str",B64, "UIntP",Rqd )
      If ( LineLength = 64 and ! LeadingSpaces )
        Return B64
      B64 := StrReplace( B64, "`r`n" )
      Loop % Ceil( StrLen(B64) / LineLength )
        B .= Format("{1:" LeadingSpaces "s}","" ) . SubStr( B64, N += LineLength, LineLength )
    Return RTrim( B,"`n" )
    }


; Define a function to find the first and last parentheses and extract the text inside
FindAndExtractText(text) {
    ; Find the position of the first opening parenthesis
    startPos := InStr(text, "(")
    if (startPos = 0)
        return ""  ; No opening parenthesis found

    ; Find the position of the last closing parenthesis
    endPos := InStr(text, ")",, +0)
    if (endPos = 0 || endPos <= startPos)
        return ""  ; No closing parenthesis found or it appears before the opening parenthesis

    ; Extract the text between the first and last parentheses
    extractedText := SubStr(text, startPos + 0, endPos - startPos + 0)
StringTrimLeft, extractedText, extractedText, 1
    return extractedText
}


repaceGetFunctionInAhkToJs()
{
global

out2 := StrReplace(out2, "Abs(", "Math.abs(")
out2 := StrReplace(out2, "ACos(", "Math.acos(")
out2 := StrReplace(out2, "ASin(", "Math.asin(")
out2 := StrReplace(out2, "ATan(", "Math.atan(")
out2 := StrReplace(out2, "Ceil(", "Math.ceil(")
out2 := StrReplace(out2, "Cos(", "Math.cos(")
out2 := StrReplace(out2, "Exp(", "Math.exp(")
out2 := StrReplace(out2, "Floor(", "Math.floor(")
out2 := StrReplace(out2, "Ln(", "Math.log(")
out2 := StrReplace(out2, "Log(", "Math.log10(")
out2 := StrReplace(out2, "Mod(", "Mod(")
out2 := StrReplace(out2, "Round(", "Math.round(")
out2 := StrReplace(out2, "Sin(", "Math.sin(")
out2 := StrReplace(out2, "Sqrt(", "Math.sqrt(")
out2 := StrReplace(out2, "Tan(", "Math.tan(")
out2 := StrReplace(out2, "Chr(", "String.fromCharCode(")

out2 := StrReplace(out2, "Abs (", "Math.abs(")
out2 := StrReplace(out2, "ACos (", "Math.acos(")
out2 := StrReplace(out2, "ASin (", "Math.asin(")
out2 := StrReplace(out2, "ATan (", "Math.atan(")
out2 := StrReplace(out2, "Ceil (", "Math.ceil(")
out2 := StrReplace(out2, "Cos (", "Math.cos(")
out2 := StrReplace(out2, "Exp (", "Math.exp(")
out2 := StrReplace(out2, "Floor (", "Math.floor(")
out2 := StrReplace(out2, "Ln (", "Math.log(")
out2 := StrReplace(out2, "Log (", "Math.log10(")
out2 := StrReplace(out2, "Mod (", "Mod(")
out2 := StrReplace(out2, "Round (", "Math.round(")
out2 := StrReplace(out2, "Sin (", "Math.sin(")
out2 := StrReplace(out2, "Sqrt (", "Math.sqrt(")
out2 := StrReplace(out2, "Tan (", "Math.tan(")
out2 := StrReplace(out2, "Chr (", "String.fromCharCode(")


out2 := StrReplace(out2, "variables.Math.", "Math.")
out2 := StrReplace(out2, "variables.Mod(", "Mod(")
out2 := StrReplace(out2, "variables.Asc (", "Asc(")
out2 := StrReplace(out2, "variables.StrReplace (", "StrReplace(")
out2 := StrReplace(out2, "variables.StrReplace(", "StrReplace(")
out2 := StrReplace(out2, "variables.Trim(", "Trim(")
out2 := StrReplace(out2, "variables.Trim (", "Trim(")
out2 := StrReplace(out2, "variables.true", "true")
out2 := StrReplace(out2, "variables.false", "false")
out2 := StrReplace(out2, "variables.SubStr(", "SubStr(")
out2 := StrReplace(out2, "variables.SubStr (", "SubStr(")
out2 := StrReplace(out2, "variables.Chr(", "String.fromCharCode(")
out2 := StrReplace(out2, "variables.Chr (", "String.fromCharCode(")

out2 := StrReplace(out2, "variables.String.fromCharCode", "String.fromCharCode")


}
