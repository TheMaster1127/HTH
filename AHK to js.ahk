;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Name:
; AHK to js
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Transpile AutoHotKey to javascript
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
DllCall("ntdll\ZwSetTimerResolution","Int",5000,"Int",1,"Int*",MyCurrentTimerResolution) ;setting the Windows Timer Resolution to 0.5ms, THIS IS A GLOBAL CHANGE
;OPTIMIZATIONS END
; Retrieve the working area's bounding coordinates
SysGet, OutputVar, MonitorWorkArea, 1
; Display the coordinates in a MsgBox
;MsgBox, Monitor %N% Work Area:`nLeft: %OutputVarLeft%`nTop: %OutputVarTop%`nRight: %OutputVarRight%`nBottom: %OutputVarBottom%

RegRead, captionHeight, HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics, CaptionHeight
titleHeight := Round(captionHeight * A_ScreenDPI / -twipsPerInch := 1440)
;MsgBox, 64, Title height, %titleHeight%
SysGet, captionHeight, 31
;MsgBox, 64, Caption height, %captionHeight%
BorderHeight := OutputVarBottom - titleHeight
BorderWidth := OutputVarRight
FileRead, buildInFunc, buildInFunc.txt
test := 1 ; test your code


StartTime := A_TickCount

if (test != 1)
{
if not A_IsAdmin
	Run *RunAs "%A_ScriptFullPath%"
}

FileRead, AHKcode, AHKcode.ahk

if (test = 1)
{
Clipboard := AHKcode
gosub Compile
ExitApp
}



Gui -DPIScale
Gui, Font, s15
Gui, Color, 121212, 121212
editH := BorderHeight - 100
editW := BorderWidth - 20
Gui, Add, Edit, cWhite x10 y10 w%editW% h%editH% gFixFormating vAHKcode,
buttonY := editH + 20
Gui, Font, s22
Gui, Add, Button, x10 y%buttonY% w%editW% h70 gCompile, Compile (Ctrl+Enter)
Gui, Font, s15
Gui, Show, w%BorderWidth% h%BorderHeight%, Transpile AutoHotKey to javascript
Return


#IfWinActive Transpile AutoHotKey to javascript

FixFormating:
Gui, Submit, NoHide
GuiControl, , AHKcode, %AHKcode%
Send, ^a{Right}
Return

^Enter::
Compile:
Gui, Submit, NoHide
if A_IsAdmin
{
	;MsgBox %AHKcode%
}
jsCode := ""
variables := ""
removeCurlyBracet := 0
variables .= "  " . "A_Index" . ": null," . "`n"
variables .= "  " . "A_LoopField" . ": null," . "`n"
variables .= "  " . "A_IsTranspiled" . ": 1," . "`n"
variables .= "  " . "characters" . ": null," . "`n"


out123456 := ""

textAfterSemicolonNum := 0

out123456ggFixTrim := ""

Loop, Parse, AHKcode, `n, `r
{

out := A_LoopField

out := Trim(out)
out := StrReplace(out, A_Tab, "")

out123456ggFixTrim .= out . "`n"
}
StringTrimRight, out123456ggFixTrim, out123456ggFixTrim, 1

AHKcode := out123456ggFixTrim


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



if (SubStr(lastLine2, 1, 4) = "if (") or (SubStr(lastLine2, 1, 3) = "if(") or (SubStr(lastLine2, 1, 4) = "if!(") or (SubStr(lastLine2, 1, 5) = "if !(") or (SubStr(TlastLine2, 1, 4) = "loop") or (SubStr(lastLine2, 1, 9) = "else if (") or (SubStr(lastLine2, 1, 8) = "else if(")
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


AHKcode := out123456



AindexcharLength := 1

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


;MsgBox, % str
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


line := StrReplace(line, " ( variables.if ", " ")
line := StrReplace(line, " = ", " == ")

line := StrReplace(line, " != ", " !== ")

line := StrReplace(line, "  ", " ")
line := StrReplace(line, "   ", " ")
line := StrReplace(line, "    ", " ")
line := StrReplace(line, ") && (", " && ")
line := StrReplace(line, ") || (", " || ")
line := StrReplace(line, ") `;", ")")
line := StrReplace(line, ");", ")")


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

s:=StrSplit(str,",").1
out1 := s

s:=StrSplit(str,",").2
out3 := s
out3 := Trim(out3)
;MsgBox, |%out3%|
s:=StrSplit(str,",").3
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
else if (SubStr(Trim(StrLower(A_LoopField)), 1, 7) = StrLower("Msgbox,")) && !(SubStr(Trim(StrLower(A_LoopField)), 1, 10) = StrLower("Msgbox, % ")) && (!(InStr(A_LoopField, " % ")))
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
else if (SubStr(Trim(StrLower(A_LoopField)), 1, 7) = StrLower("Msgbox,")) && !(SubStr(Trim(StrLower(A_LoopField)), 1, 10) = StrLower("Msgbox, % ")) && (InStr(A_LoopField, " % "))
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

line := varTraspiler(out2, 0)
line := Trim(line)
var1 := "return " . line

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
else if (SubStr(Trim(StrLower(A_LoopField)), 1, 7) = "gosub, ") or (SubStr(Trim(StrLower(A_LoopField)), 1, 6) = "goto, ")
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
MsgBox, % out3

jsCode .= out3 . "`n"


lineDone := 1
}
else if RegExMatch(A_LoopField, "\b\w+\s*\+{2,}")
{
lineDone := 1
str := A_LoopField

str := Trim(str)

jsCode .= "variables." . str . "`n"
}
else if (RegExMatch(A_LoopField, "^\w+:$")) && (Trim(SubStr(A_LoopField, 0)) = ":")
{

;MsgBox, % A_LoopField

out1 := A_LoopField

out1 := Trim(out1)

StringTrimRight, out1, out1, 1

;MsgBox, % out1

;~ see := "async function " . out1 . "()`n{"
;~ MsgBox, % see
jsCode .= "async function " . out1 . "()`n{`n"
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


if (InStr(A_LoopField, "}")) && (readyToEnd1 = 1) && (netsedCurly = 0) && (insideBracket = 1)
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

ALoopField := StrReplace(ALoopField, "A_Index", "A_Index" . A_IndexLoopCurlyFix)
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


if (InStr(A_LoopField, "}")) && (readyToEnd1 = 1) && (netsedCurly = 0) && (insideBracket = 1)
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

ALoopField := StrReplace(ALoopField, "A_Index", "A_Index" . A_IndexLoopCurlyFix)
ALoopField := StrReplace(ALoopField, "A_LoopField", "A_LoopField" . A_IndexLoopCurlyFix)

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
str := StrReplace(str, "variables.A_GuiControl", "BuildInVars(""A_GuiControl"")")
str := StrReplace(str, "variables.A_TimeIdle", "BuildInVars(""A_TimeIdle"")")
str := StrReplace(str, "variables.A_TickCount", "BuildInVars(""A_TickCount"")")
str := StrReplace(str, "variables.A_NowUTC", "BuildInVars(""A_NowUTC"")")
str := StrReplace(str, "variables.A_Now", "BuildInVars(""A_Now"")")
str := StrReplace(str, "variables.A_YYYY", "BuildInVars(""A_YYYY"")")
str := StrReplace(str, "variables.A_MM", "BuildInVars(""A_MM"")")
str := StrReplace(str, "variables.A_DD", "BuildInVars(""A_DD"")")
str := StrReplace(str, "variables.A_MMMM", "BuildInVars(""A_MMMM"")")
str := StrReplace(str, "variables.A_MMM", "BuildInVars(""A_MMM"")")
str := StrReplace(str, "variables.A_DDDD", "BuildInVars(""A_DDDD"")")
str := StrReplace(str, "variables.A_DDD", "BuildInVars(""A_DDD"")")
str := StrReplace(str, "variables.A_Hour", "BuildInVars(""A_Hour"")")
str := StrReplace(str, "variables.A_Min", "BuildInVars(""A_Min"")")
str := StrReplace(str, "variables.A_Sec", "BuildInVars(""A_Sec"")")
str := StrReplace(str, "variables.A_Space", "BuildInVars(""A_Space"")")
str := StrReplace(str, "variables.A_Tab", "BuildInVars(""A_Tab"")")

if (Trim(str) == "Return")
{
str := "}"
}


out4758686d86d86d86578991abc .= str . "`n"
}

StringTrimRight, out4758686d86d86d86578991abc, out4758686d86d86d86578991abc, 1

jsCode := out4758686d86d86d86578991abc






;MsgBox, %variables%
outVarsFixBugs := ""
Loop, Parse, variables, `n, `r
{

;MsgBox, |%A_LoopField%|


str := A_LoopField

s:=StrSplit(str,":").1
outChckBugColomNumbers := s

outChckBugColomNumbers := Trim(outChckBugColomNumbers)


if (InStr(A_LoopField, " : null")) or (InStr(A_LoopField, "if: null")) or RegExMatch(outChckBugColomNumbers, "^\d+$")
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




jsCode := variables . "`n`n" . funcs . "`n`n" . jsCode


upCode1 =
(
<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>ahk to js</title>
    <style>
      body {
        background-color: #121212;
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
      // JavaScript equivalent code with variables

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

      function BuildInVars(varName) {
          switch(varName) {
              case "A_ScreenWidth":
                  // Return screen width
                  return window.screen.width;
              case "A_ScreenHeight":
                  // Return screen height
                  return window.screen.height;
              case "A_GuiControl":
                  // Simulate GUI control (You can implement as needed)
                  return "A_GuiControl not added yet";
              case "A_TimeIdle":
                  // Return time idle
                  return A_TimeIdle();
              case "A_TickCount":
                  // Return tick count in milliseconds
                  return A_TickCount();
              case "A_NowUTC":
                  // Return current UTC timestamp
                  return new Date().toISOString();
              case "A_Now":
                  // Return current local timestamp
                  return new Date().toLocaleString();
              case "A_YYYY":
                  // Return current year
                  return new Date().getFullYear();
              case "A_MM":
                  // Return current month
                  return (new Date().getMonth() + 1).toString().padStart(2, '0');
              case "A_DD":
                  // Return current day
                  return new Date().getDate().toString().padStart(2, '0');
              case "A_MMMM":
                  // Return full month name
                  return new Date().toLocaleDateString(undefined, { month: 'long' });
              case "A_MMM":
                  // Return short month name
                  return new Date().toLocaleDateString(undefined, { month: 'short' });
              case "A_DDDD":
                  // Return full day name
                  return new Date().toLocaleDateString(undefined, { weekday: 'long' });
              case "A_DDD":
                  // Return short day name
                  return new Date().toLocaleDateString(undefined, { weekday: 'short' });
              case "A_Hour":
                  // Return current hour
                  return new Date().getHours().toString().padStart(2, '0');
              case "A_Min":
                  // Return current minute
                  return new Date().getMinutes().toString().padStart(2, '0');
              case "A_Sec":
                  // Return current second
                  return new Date().getSeconds().toString().padStart(2, '0');
              case "A_Space":
                  // Return space character
                  return ' ';
              case "A_Tab":
                  // Return tab character
                  return '\t';

              default:
                  // Handle unknown variable names
                  return null;
          }
      }


      // Absolute value
      function Abs(num) {
        if (num === null || isNaN(num)) return null;
        return Math.abs(num);
      }

      // Arc cosine
      function ACos(num) {
        if (num === null || isNaN(num)) return null;
        return Math.acos(num);
      }

      // Arc sine
      function ASin(num) {
        if (num === null || isNaN(num)) return null;
        return Math.asin(num);
      }

      // Arc tangent
      function ATan(num) {
        if (num === null || isNaN(num)) return null;
        return Math.atan(num);
      }

      // Ceiling
      function Ceil(num) {
        if (num === null || isNaN(num)) return null;
        return Math.ceil(num);
      }

      // Cosine
      function Cos(num) {
        if (num === null || isNaN(num)) return null;
        return Math.cos(num);
      }

      // Exponential
      function Exp(num) {
        if (num === null || isNaN(num)) return null;
        return Math.exp(num);
      }

      // Flooring
      function Floor(num) {
        if (num === null || isNaN(num)) return null;
        return Math.floor(num);
      }

      // Natural logarithm
      function Ln(num) {
        if (num === null || isNaN(num)) return null;
        return Math.log(num);
      }

      // Base-10 logarithm
      function Log(num) {
        if (num === null || isNaN(num)) return null;
        return Math.log10(num);
      }

      // Rounding
      function Round(num) {
        if (num === null || isNaN(num)) return null;
        return Math.round(num);
      }

      // Sine
      function Sin(num) {
        if (num === null || isNaN(num)) return null;
        return Math.sin(num);
      }

      // Square root
      function Sqrt(num) {
        if (num === null || isNaN(num)) return null;
        return Math.sqrt(num);
      }

      // Tangent
      function Tan(num) {
        if (num === null || isNaN(num)) return null;
        return Math.tan(num);
      }

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

upCode2 =
(

      // Function to simulate Sleep
      function sleep(ms) {
        return new Promise((resolve) => setTimeout(resolve, ms));
      }

      // InStr
      function InStr(Haystack, Needle, CaseSensitive = true, StartingPos = 1, Occurrence = 1) {
        if (Haystack === null || Needle === null) return null;

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

        return pos;
      }

      // RegExMatch
      function RegExMatch(Haystack, NeedleRegEx, OutputVar, StartingPos) {
        if (Haystack === null || NeedleRegEx === null) return null;

        const regex = new RegExp(NeedleRegEx);
        const match = Haystack.match(regex);

        if (match) {
          if (OutputVar) {
            OutputVar.push(match[0]);
          }
          return match.index + 1;
        } else {
          return 0;
        }
      }

      // RegExReplace

      // RegExReplace
      function RegExReplace(Haystack, NeedleRegEx, Replacement, OutputVarCount, Limit, StartingPos) {
        if (Haystack === null || NeedleRegEx === null || Replacement === null) return null;

        const regex = new RegExp(NeedleRegEx, "g");
        let count = 0;
        const result = Haystack.replace(regex, (match) => {
          if (count < Limit || Limit === 0) {
            count++;
            return Replacement;
          } else {
            return match;
          }
        });

        if (OutputVarCount) {
          OutputVarCount.push(count);
        }

        return result;
      }

      // StrLen
      function StrLen(str) {
        return str === null ? null : str.length;
      }

      // StrSplit function
      async function StrSplit(String, Delimiters, OmitChars, MaxParts) {
        if (String === null || Delimiters === null) return null;

        const regex = new RegExp(``[${Delimiters}${OmitChars}]``, "g");
        const parts = String.split(regex, MaxParts).map((part) => part.trim());

        return parts;
      }

      // Format (simplified version)
      function Format(formatString, ...values) {
        return formatString.replace(/{(\d+)}/g, (match, index) => (values[index] !== undefined ? values[index] : match));
      }

      // Ord
      function Ord(str) {
        return str === null ? null : str.charCodeAt(0);
      }

      // Function to generate a random number between min (inclusive) and max (inclusive)
      function getRandomNumber(min, max) {
        return Math.floor(Math.random() * (max - min + 1) + min);
      }

      function SubStr(inputString, startingPos, length) {
        if (inputString === null) {
          return "";
        }

        if (startingPos < 1) {
          // Calculate starting position from the end of the string
          startingPos = inputString.length + startingPos;
        }

        // Adjust starting position if it's beyond the string's length
        if (startingPos > inputString.length) {
          return "";
        }

        // Handle negative length to omit characters from the end
        if (length < 0) {
          length = inputString.length + length - startingPos;
        }

        // Return the requested substring
        return inputString.substring(startingPos - 1, startingPos - 1 + length);
      }

      function Trim(inputString) {
        // Check if inputString is null or undefined
        if (inputString == null) {
          return ""; // Return an empty string if inputString is null or undefined
        }
        return inputString.replace(/^\s+|\s+$/g, ""); // Removes leading and trailing whitespace
      }

      function StrReplace(originalString, find, replaceWith) {
        // Check if originalString is a string
        if (typeof originalString !== "string") {
          return originalString; // Return originalString as is
        }
        // Use replace method to replace find with replaceWith
        return originalString.replace(new RegExp(find, "g"), replaceWith);
      }

      // Custom Mod function
      function Mod(dividend, divisor) {
        return dividend `% divisor;
      }

      function Asc(char) {
        return char.charCodeAt(0);
      }

      // Function to trim specified number of characters from the left side of a string
      function StringTrimLeft(input, numChars) {
        if (input && input.length >= numChars) {
          return input.substring(numChars);
        } else {
          console.error("Invalid input provided.");
          return input; // Return original input if trimming is not possible
        }
      }

      // Function to trim specified number of characters from the right side of a string
      function StringTrimRight(input, numChars) {
        if (input && input.length >= numChars) {
          return input.substring(0, input.length - numChars);
        } else {
          console.error("Invalid input provided.");
          return input; // Return original input if trimming is not possible
        }
      }

      // Function to display a message
      function displayMessage(message) {
        return new Promise((resolve) => {
          alert(message);
          resolve();
        });
      }

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
FileDelete, temp.html

FileAppend, %jsCode%, temp.html

if (test != 1)
{


; Format the HTML file using Prettier
RunWait, %comspec% /K npx prettier --write temp.html & exit, , Hide

; Copy formatted content back to clipboard
FileRead, Clipboard, temp.html

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

MsgBox, Done is %ElapsedTime123%
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
}
