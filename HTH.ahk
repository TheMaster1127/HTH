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
if (fileNameHTH2 = "webHTH")
{
webHTH := 1
}
else
{
fileNameHTH2Num := 1
}
}

if (n = 3)
{
param3NameOfwebHTHfile := param
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

base64soundList := ""
base64soundNum := 0
base64iconNum := 0
base64iconList := ""
out123456 := ""

textAfterSemicolonNum := 0


out123456ggFixTrim := ""
ifWeUseCanvasThenAddUpdateFunc1 := ""
ifWeUseCanvasThenAddUpdateFunc2 := ""
varOutJsCanvasFixTranspernat := ""
rectangleId := 0
switchId := 0
CheckboxId := 0
IDEId := 0
videoId := 0
IframeId := 0
DropDownListId := 0
ifWeUseCanvas := 0
weUseCnanvasAtALL := 0
libNum := 0
isFullScrenOnce := 0

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


if (InStr(AHKcode, "OnMouseClick:"))
{
AHKcodeOnMouseClickAdd =
(

Attw456543w45eqsubeotibebrawaaachingeventlistenertodocumentaddEventListeneThisfunnctionaftertouchends768ds798y9z7s7xcfy8s7d9fcx

)
AHKcode := AHKcodeOnMouseClickAdd . "`n" . AHKcode . "`n"
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



Loop, Parse, AHKcode, `n, `r
{

out := A_LoopField

if (SubStr(StrLower(out), 1, 19) = StrLower("Gui, Add, Rectangle")) or (SubStr(StrLower(out), 1, 16) = StrLower("Gui, Add, Circle"))
{
weUseCnanvasAtALL := 1
}

}



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

lastLine22 := "async function " . out3 . "`r{`n" . out2 . "`n|nextbarcccketIwnatatataitgoneokdudeorelsleplsk|"
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
doWeEvenDecAnyFuncHUH := 0
Loop, Parse, funcNames, `n, `r
{
  funcNames%A_Index% := A_LoopField
  maxNumLenStrNum := A_Index + 1
funcs .= "  " . "" . A_LoopField . "" . ": " . A_LoopField . "," . "`n"
doWeEvenDecAnyFuncHUH++
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
base64VideoData := ""






Loop, Parse, AHKcode, `n, `r
{
lineDone := 0
str := A_LoopField

if !(SubStr(StrLower(str), 1, 19) = StrLower("Gui, Add, rectangle")) or (SubStr(StrLower(out), 1, 16) = StrLower("Gui, Add, Circle")) or (SubStr(StrLower(out), 1, 16) = StrLower("Gui, Add, Toggle")) or (SubStr(StrLower(out), 1, 16) = StrLower("Gui, Add, Player")) or (SubStr(StrLower(out), 1, 22) = StrLower("Gui, Add, DropDownList")) or (SubStr(StrLower(out), 1, 18) = StrLower("Gui, Add, Checkbox")) or (SubStr(StrLower(out), 1, 16) = StrLower("Gui, Add, Iframe"))
{

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
else
{
  ;MsgBox, % str
  out123456 .= str . "`n"
}



}


StringTrimRight, out123456, out123456, 1

HotKeyCalledHotKyes := ""
AHKcode := out123456
onKeyPress := ""

guiColorShow =
(
linear-gradient(90deg, " + "#121212" + " 0`%, " + "#121212" + " 100`%)
)
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
else if (SubStr(Trim(StrLower(A_LoopField)), 1, 6) = StrLower("Sort, "))
{
StringTrimLeft, str1, A_LoopField, 6

str1 := Trim(str1)
weHaveAcommaFixSortCommand := 0
if (SubStr(str1, 0) = Chr(44))
{
;MsgBox, comma YES
StringTrimRight, str1, str1, 1
weHaveAcommaFixSortCommand := 1
}
else
{
;MsgBox, comma NO
}

s := StrSplit(str1, ",").1
out1 := Trim(s)

s := StrSplit(str1, ",").2
out2 := Trim(s)

if (weHaveAcommaFixSortCommand = 1)
{
out2 := out2 . Chr(44)
}


var1 := "variables." . out1 . " = SortLikeAHK(variables." . out1 . ", " . Chr(34) . out2 . Chr(34) . ")"
lineDone := 1
jsCode .= var1 . "`n"


}
else if (SubStr(Trim(StrLower(A_LoopField)), 1, 13) = StrLower("MouseGetPos, "))
{

str := A_LoopField


s := RegExMatch(str, "i)MouseGetPos, (.*)", match) ? match1 : ""
out2 := s





;MsgBox, % out2
out2 := Trim(out2)

;MsgBox, |%out2%|

if (InStr(out2, ","))
{

str := out2

s:=StrSplit(str,", ").1
out21 := s

s:=StrSplit(str,", ").2
out22 := s



line1 := varTraspiler(out21, 0)
line2 := varTraspiler(out22, 0)
;MsgBox, % line

var1 := line1 . " = MouseGetPos(""x"")"
var2 := line2 . " = MouseGetPos(""y"")"

if (Trim(out21) = "")
{
jsCode .= var2 . "`n"
}
else
{
jsCode .= var1 . "`n" . var2 . "`n"
}
}
else
{
line := varTraspiler(out2, 0)
;MsgBox, % line
var1 := line . " = MouseGetPos(""x"")"
jsCode .= var1 . "`n"
}


lineDone := 1



}
else if (SubStr(Trim(StrLower(A_LoopField)), 1, 11) = StrLower("SoundPlay, "))
{

str := A_LoopField


s := RegExMatch(str, "i)SoundPlay, (.*)", match) ? match1 : ""
out2 := s



out2 := Trim(out2)

;MsgBox, |%out2%|


str := out2

if (InStr(str, ","))
{

s:=StrSplit(str,", ").1
out21 := StrLower(Trim(s))

s:=StrSplit(str,", ").2
out22 := Trim(s)

if (InStr(out21, "volume"))
{
; volume
var1 := "SoundPlay(""setVolume"", " . out22 . ")"
}
else
{
; play
; in out22 we have a file path that has to converted to base64
base64soundNum++



if !(InStr(out22, "https://") or InStr(out22, "http://") or InStr(out22, "www.") or InStr(out22, "ftp://"))
{


File := Trim(out22)
FileGetSize, nBytes, %File%
FileRead, Bin, *c %File%
ImageData := Base64Enc(Bin, nBytes, 100, 2 )


; Encode the image data to base64
Bbase64ImageData := StrReplace(ImageData, "`n", "") ; Remove line breaks
Bbase64ImageData := StrReplace(Bbase64ImageData, "`r", "") ; Remove carriage returns
Bbase64ImageData := StrReplace(Bbase64ImageData, "`t", "") ; Remove tabs
Bbase64ImageData := StrReplace(Bbase64ImageData, " ", "") ; Remove spaces
base64out := imageTag1 . Bbase64ImageData . imageTag2

}
else
{
base64out := Trim(out22)
}


base64sound := base64out

base64soundListDummy =
(

let base64sound%base64soundNum% = "%base64sound%"

)

base64soundList .= base64soundListDummy

var1 := "SoundPlay(""play"", base64sound" . base64soundNum . ")"

}

}
else
{
str := Trim(str)
var1 := "SoundPlay(""" . str .  """)"
}

jsCode .= var1 . "`n"


lineDone := 1



}
else if (SubStr(Trim(StrLower(A_LoopField)), 1, 6) = StrLower("Icon, "))
{

str := A_LoopField


s := RegExMatch(str, "i)Icon, (.*)", match) ? match1 : ""
out2 := s





;MsgBox, % out2
out2 := Trim(out2)

;MsgBox, |%out2%|



if !(InStr(out2, "https://") or InStr(out2, "http://") or InStr(out2, "www.") or InStr(out2, "ftp://"))
{
base64iconNum++



File := Trim(out2)
FileGetSize, nBytes, %File%
FileRead, Bin, *c %File%
ImageData := Base64Enc(Bin, nBytes, 100, 2 )


; Encode the image data to base64
Bbase64ImageData := StrReplace(ImageData, "`n", "") ; Remove line breaks
Bbase64ImageData := StrReplace(Bbase64ImageData, "`r", "") ; Remove carriage returns
Bbase64ImageData := StrReplace(Bbase64ImageData, "`t", "") ; Remove tabs
Bbase64ImageData := StrReplace(Bbase64ImageData, " ", "") ; Remove spaces
base64out := imageTag1 . Bbase64ImageData . imageTag2





base64icon := base64out

base64iconListDummy =
(

let base64icon%base64iconNum% = "%base64icon%"

)

base64iconList .= base64iconListDummy

var1 := "changeFavicon(base64icon" . base64iconNum . ")"



}
else
{
var1 := "changeFavicon(""" . out2 . """)"
}



jsCode .= var1 . "`n"


lineDone := 1



}
else if (SubStr(Trim(StrLower(A_LoopField)), 1, 7) = StrLower("Title, "))
{

str := A_LoopField


s := RegExMatch(str, "i)Title, (.*)", match) ? match1 : ""
out2 := s




;MsgBox, % out2
out2 := Trim(out2)

;MsgBox, |%out2%|


if (InStr(out2, "%"))
{
str := out2
s:=StrSplit(str,"%").2
out3 := s

var1 =
(
document.title = variables.%out3%
)
}
else
{
var1 := "document.title = """ . out2 . """"
}

jsCode .= var1 . "`n"


lineDone := 1



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


isFullScren := 0
str := A_LoopField
gradient := RegExMatch(str, "i)Gui, Color, gr-(.*)", match) ? match1 : ""
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


if (GuiNumber >= 2)
{
weUseCnanvasAtALLEver := 0
weUseCnanvasAtALL := 0
moreThen1GuiMode := 1
}
else
{
moreThen1GuiMode := 0
}

s:=StrSplit(str,", ").2
out2 := StrLower(Trim(s))

s:=StrSplit(str,", ").3
s := Trim(s)
if (out2 != "show")
{
out3 := StrLower(Trim(s))
out3Good := (Trim(s))
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


guiColorShow =
(
linear-gradient(90deg, " + "#121212" + " 0`%, " + "#121212" + " 100`%)
)


Loop, Parse, out3Good, " "
{
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("c"))
{
guiColorShow := Trim(A_LoopField)
StringTrimLeft, guiColorShow, guiColorShow, 1

var1 =
(
" + "#%guiColorShow%" + "
)
guiColorShow := var1
if (InStr(guiColorShow, "%")) && !((InStr(guiColorShow, "%,")) or (InStr(guiColorShow, "%)")))
{
str := guiColorShow
s:=StrSplit(str,"%").2
out2 := s
;MsgBox, % out2
var1 =
(
linear-gradient(90deg, " + "#" + variables.%out2% + "" + " 0`%, " + "#" + variables.%out2% + "" + " 100`%)
)
guiColorShow := var1
}
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 3) = StrLower("gr-"))
{
guiColorShow := gradient
;MsgBox, % linearGradient
if (InStr(guiColorShow, "thisissemicolonattheendplaceokmansurebruh49475472472"))
{
StringTrimRight, guiColorShow, guiColorShow, 54
}

if (InStr(guiColorShow, "%")) && !((InStr(guiColorShow, "%,")) or (InStr(guiColorShow, "%)")))
{


str := guiColorShow

s:=StrSplit(str,"%").2
out2 := s



var1 =
(
" + variables.%out2% + "
)
guiColorShow := var1
}



}
}






;MsgBox, % guiColorShow
}



if (out2 = "font")
{


Loop, Parse, out3Good, " "
{
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("s"))
{
guiFontShow := Trim(A_LoopField)
StringTrimLeft, guiFontShow, guiFontShow, 1
if (InStr(guiFontShow, "%"))
{
str := guiFontShow
s:=StrSplit(str,"%").2
out2 := s

var1 =
(
" + variables.%out2% + "
)
guiFontShow := var1
}
}

if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("f"))
{
fontName := Trim(A_LoopField)
StringTrimLeft, fontName, fontName, 1
if (InStr(fontName, "%"))
{
str := fontName
s:=StrSplit(str,"%").2
out2 := s
var1 =
(
" + variables.%out2% + "
)
fontName := var1
}
}


}

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
guiOutOfButtonC := 0
Loop, 12
{
guiOutOfButton%A_Index% := ""
}
dynamicGuiSet := 0
Loop, Parse, out4, " "
{
;MsgBox, |%A_LoopField%|

guiOutOfButtonNum++



if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("c"))
{

guiOutOfButton7 := A_LoopField
StringTrimLeft, guiOutOfButton7, guiOutOfButton7, 1


if (InStr(guiOutOfButton7, "%"))
{
str := guiOutOfButton7
s:=StrSplit(str,"%").2
var1 := s

guiOutOfButton7 =
(
#" + variables.%var1%//
)

}
else
{
 guiOutOfButton7 := "#" . guiOutOfButton7
}

}

if (SubStr(Trim(StrLower(A_LoopField)), 1, 3) = StrLower("gr-"))
{

guiOutOfButton11 := A_LoopField
StringTrimLeft, guiOutOfButton11, guiOutOfButton11, 3


if (InStr(guiOutOfButton11, "%"))
{
str := guiOutOfButton11
s:=StrSplit(str,"%").2
var1 := s

guiOutOfButton11 =
(
" + variables.%var1%//
)
}


}


if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("f"))
{
guiOutOfButton12 := Trim(A_LoopField)
StringTrimLeft, guiOutOfButton12, guiOutOfButton12, 1
if (InStr(guiOutOfButton12, "%"))
{
str := guiOutOfButton12
s:=StrSplit(str,"%").2
out2 := s
var1 =
(
" + variables.%out2% + "
)
guiOutOfButton12 := var1
}
}

if (SubStr(Trim(StrLower(A_LoopField)), 1, 2) = StrLower("bg"))
{

guiOutOfButton8 := A_LoopField
StringTrimLeft, guiOutOfButton8, guiOutOfButton8, 2


if (InStr(guiOutOfButton8, "%"))
{
str := guiOutOfButton8
s:=StrSplit(str,"%").2
var1 := s

guiOutOfButton8 =
(
#" + variables.%var1%//
)

}
else
{
guiOutOfButton8 := "#" . guiOutOfButton8
}

}


if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("r"))
{

guiOutOfButton9 := A_LoopField
StringTrimLeft, guiOutOfButton9, guiOutOfButton9, 1


if (InStr(guiOutOfButton9, "%"))
{
str := guiOutOfButton9
s:=StrSplit(str,"%").2
var1 := s

guiOutOfButton9 =
(
" + variables.%var1% + "px
)

}
else
{
guiOutOfButton9 := guiOutOfButton9 . "px"
}

}


if (SubStr(Trim(StrLower(A_LoopField)), 1, 7) = StrLower("-border"))
{

guiOutOfButton10 := A_LoopField
StringTrimLeft, guiOutOfButton10, guiOutOfButton10, 7
guiOutOfButton10 := "none"

if (InStr(guiOutOfButton10, "%"))
{
str := guiOutOfButton10
s:=StrSplit(str,"%").2
var1 := s

guiOutOfButton10 =
(
" + variables.%var1% + "
)

}


}




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
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("g")) && !((SubStr(Trim(StrLower(A_LoopField)), 1, 3) = StrLower("gr-")))
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
Gui%GuiNumber%%guiOutOfButton5%.style.cursor = "pointer"; // Change cursor on hover
Gui%GuiNumber%%guiOutOfButton5%.style.border = "%guiOutOfButton10%";
Gui%GuiNumber%%guiOutOfButton5%.style.background = "%guiOutOfButton11%";
Gui%GuiNumber%%guiOutOfButton5%.style.backgroundColor = "%guiOutOfButton8%";
Gui%GuiNumber%%guiOutOfButton5%.style.borderRadius = "%guiOutOfButton9%";
Gui%GuiNumber%%guiOutOfButton5%.style.color = "%guiOutOfButton7%";
Gui%GuiNumber%%guiOutOfButton5%.style.fontFamily = "%guiOutOfButton12%, sans-serif"; // Specify your desired font here
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
Gui%GuiNumber%%guiOutOfButton5%.style.cursor = "pointer"; // Change cursor on hover
Gui%GuiNumber%%guiOutOfButton5%.style.border = "%guiOutOfButton10%";
Gui%GuiNumber%%guiOutOfButton5%.style.background = "%guiOutOfButton11%";
Gui%GuiNumber%%guiOutOfButton5%.style.backgroundColor = "%guiOutOfButton8%";
Gui%GuiNumber%%guiOutOfButton5%.style.borderRadius = "%guiOutOfButton9%";
Gui%GuiNumber%%guiOutOfButton5%.style.fontFamily = "%guiOutOfButton12%, sans-serif"; // Specify your desired font here
Gui%GuiNumber%%guiOutOfButton5%.style.color = "%guiOutOfButton7%";
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
Gui%GuiNumber%Button%NumOfButtons%.style.cursor = "pointer"; // Change cursor on hover
Gui%GuiNumber%Button%NumOfButtons%.style.border = "%guiOutOfButton10%";
Gui%GuiNumber%Button%NumOfButtons%.style.background = "%guiOutOfButton11%";
Gui%GuiNumber%Button%NumOfButtons%.style.backgroundColor = "%guiOutOfButton8%";
Gui%GuiNumber%Button%NumOfButtons%.style.borderRadius = "%guiOutOfButton9%";
Gui%GuiNumber%Button%NumOfButtons%.style.color = "%guiOutOfButton7%";
Gui%GuiNumber%Button%NumOfButtons%.style.fontFamily = "%guiOutOfButton12%, sans-serif"; // Specify your desired font here
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
Gui%GuiNumber%Button%NumOfButtons%.style.cursor = "pointer"; // Change cursor on hover
Gui%GuiNumber%Button%NumOfButtons%.style.border = "%guiOutOfButton10%";
Gui%GuiNumber%Button%NumOfButtons%.style.background = "%guiOutOfButton11%";
Gui%GuiNumber%Button%NumOfButtons%.style.backgroundColor = "%guiOutOfButton8%";
Gui%GuiNumber%Button%NumOfButtons%.style.borderRadius = "%guiOutOfButton9%";
Gui%GuiNumber%Button%NumOfButtons%.style.color = "%guiOutOfButton7%";
Gui%GuiNumber%Button%NumOfButtons%.style.fontFamily = "%guiOutOfButton12%, sans-serif"; // Specify your desired font here
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
Gui%GuiNumber%%guiOutOfButton5%.style.cursor = "pointer"; // Change cursor on hover
Gui%GuiNumber%%guiOutOfButton5%.style.border = "%guiOutOfButton10%";
Gui%GuiNumber%%guiOutOfButton5%.style.background = "%guiOutOfButton11%";
Gui%GuiNumber%%guiOutOfButton5%.style.backgroundColor = "%guiOutOfButton8%";
Gui%GuiNumber%%guiOutOfButton5%.style.borderRadius = "%guiOutOfButton9%";
Gui%GuiNumber%%guiOutOfButton5%.style.color = "%guiOutOfButton7%";
Gui%GuiNumber%%guiOutOfButton5%.style.fontFamily = "%guiOutOfButton12%, sans-serif"; // Specify your desired font here
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
Gui%GuiNumber%%guiOutOfButton5%.style.border = "%guiOutOfButton10%";
Gui%GuiNumber%%guiOutOfButton5%.style.background = "%guiOutOfButton11%";
Gui%GuiNumber%%guiOutOfButton5%.style.backgroundColor = "%guiOutOfButton8%";
Gui%GuiNumber%%guiOutOfButton5%.style.borderRadius = "%guiOutOfButton9%";
Gui%GuiNumber%%guiOutOfButton5%.style.color = "%guiOutOfButton7%";
Gui%GuiNumber%%guiOutOfButton5%.style.fontFamily = "%guiOutOfButton12%, sans-serif"; // Specify your desired font here
Gui%GuiNumber%%guiOutOfButton5%.style.cursor = "pointer"; // Change cursor on hover
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
Gui%GuiNumber%Button%NumOfButtons%.style.cursor = "pointer"; // Change cursor on hover
Gui%GuiNumber%Button%NumOfButtons%.style.border = "%guiOutOfButton10%";
Gui%GuiNumber%Button%NumOfButtons%.style.background = "%guiOutOfButton11%";
Gui%GuiNumber%Button%NumOfButtons%.style.backgroundColor = "%guiOutOfButton8%";
Gui%GuiNumber%Button%NumOfButtons%.style.borderRadius = "%guiOutOfButton9%";
Gui%GuiNumber%Button%NumOfButtons%.style.color = "%guiOutOfButton7%";
Gui%GuiNumber%Button%NumOfButtons%.style.fontFamily = "%guiOutOfButton12%, sans-serif"; // Specify your desired font here
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
Gui%GuiNumber%Button%NumOfButtons%.style.cursor = "pointer"; // Change cursor on hover
Gui%GuiNumber%Button%NumOfButtons%.style.border = "%guiOutOfButton10%";
Gui%GuiNumber%Button%NumOfButtons%.style.background = "%guiOutOfButton11%";
Gui%GuiNumber%Button%NumOfButtons%.style.backgroundColor = "%guiOutOfButton8%";
Gui%GuiNumber%Button%NumOfButtons%.style.borderRadius = "%guiOutOfButton9%";
Gui%GuiNumber%Button%NumOfButtons%.style.color = "%guiOutOfButton7%";
Gui%GuiNumber%Button%NumOfButtons%.style.fontFamily = "%guiOutOfButton12%, sans-serif"; // Specify your desired font here
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
Loop, 12
{
guiOutOfEdit%A_Index% := ""
}
dynamicGuiSet := 0
Loop, Parse, out4, " "
{
;MsgBox, |%A_LoopField%|

guiOutOfEditNum++



if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("c"))
{

guiOutOfEdit7 := A_LoopField
StringTrimLeft, guiOutOfEdit7, guiOutOfEdit7, 1


if (InStr(guiOutOfEdit7, "%"))
{
str := guiOutOfEdit7
s:=StrSplit(str,"%").2
var1 := s

guiOutOfEdit7 =
(
#" + variables.%var1%//
)

}
else
{
 guiOutOfEdit7 := "#" . guiOutOfEdit7
}

}



if (SubStr(Trim(StrLower(A_LoopField)), 1, 3) = StrLower("gr-"))
{

guiOutOfEdit11 := A_LoopField
StringTrimLeft, guiOutOfEdit11, guiOutOfEdit11, 3


if (InStr(guiOutOfEdit11, "%"))
{
str := guiOutOfEdit11
s:=StrSplit(str,"%").2
var1 := s

guiOutOfEdit11 =
(
" + variables.%var1%//
)

}


}

if (SubStr(Trim(StrLower(A_LoopField)), 1, 2) = StrLower("bg"))
{

guiOutOfEdit8 := A_LoopField
StringTrimLeft, guiOutOfEdit8, guiOutOfEdit8, 2


if (InStr(guiOutOfEdit8, "%"))
{
str := guiOutOfEdit8
s:=StrSplit(str,"%").2
var1 := s

guiOutOfEdit8 =
(
#" + variables.%var1%//
)

}
else
{
guiOutOfEdit8 := "#" . guiOutOfEdit8
}

}


if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("f"))
{
guiOutOfEdit12 := Trim(A_LoopField)
StringTrimLeft, guiOutOfEdit12, guiOutOfEdit12, 1
if (InStr(guiOutOfEdit12, "%"))
{
str := guiOutOfEdit12
s:=StrSplit(str,"%").2
out2 := s
var1 =
(
" + variables.%out2% + "
)
guiOutOfEdit12 := var1
}
}


if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("r"))
{

guiOutOfEdit9 := A_LoopField
StringTrimLeft, guiOutOfEdit9, guiOutOfEdit9, 1


if (InStr(guiOutOfEdit9, "%"))
{
str := guiOutOfEdit9
s:=StrSplit(str,"%").2
var1 := s

guiOutOfEdit9 =
(
" + variables.%var1% + "px
)

}
else
{
guiOutOfEdit9 := guiOutOfEdit9 . "px"
}

}


if (SubStr(Trim(StrLower(A_LoopField)), 1, 7) = StrLower("-border"))
{

guiOutOfEdit10 := A_LoopField
StringTrimLeft, guiOutOfEdit10, guiOutOfEdit10, 7
guiOutOfEdit10 := "none"

if (InStr(guiOutOfEdit10, "%"))
{
str := guiOutOfEdit10
s:=StrSplit(str,"%").2
var1 := s

guiOutOfEdit10 =
(
" + variables.%var1% + "
)

}


}




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
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("g")) && !((SubStr(Trim(StrLower(A_LoopField)), 1, 3) = StrLower("gr-")))
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
Gui%GuiNumber%%guiOutOfEdit5%.style.border = "%guiOutOfEdit10%"
Gui%GuiNumber%%guiOutOfEdit5%.style.color = "%guiOutOfEdit7%"
Gui%GuiNumber%%guiOutOfEdit5%.style.background = "%guiOutOfEdit11%"
Gui%GuiNumber%%guiOutOfEdit5%.style.backgroundColor = "%guiOutOfEdit8%"
Gui%GuiNumber%%guiOutOfEdit5%.style.borderRadius = "%guiOutOfEdit9%"
Gui%GuiNumber%%guiOutOfEdit5%.style.fontFamily = "%guiOutOfEdit12%, sans-serif"; // Specify your desired font here
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
Gui%GuiNumber%%guiOutOfEdit5%.style.border = "%guiOutOfEdit10%"
Gui%GuiNumber%%guiOutOfEdit5%.style.color = "%guiOutOfEdit7%"
Gui%GuiNumber%%guiOutOfEdit5%.style.background = "%guiOutOfEdit11%"
Gui%GuiNumber%%guiOutOfEdit5%.style.backgroundColor = "%guiOutOfEdit8%"
Gui%GuiNumber%%guiOutOfEdit5%.style.borderRadius = "%guiOutOfEdit9%"
Gui%GuiNumber%%guiOutOfEdit5%.style.fontFamily = "%guiOutOfEdit12%, sans-serif"; // Specify your desired font here
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
Gui%GuiNumber%Edit%NumOfEdits%.style.border = "%guiOutOfEdit10%"
Gui%GuiNumber%Edit%NumOfEdits%.style.color = "%guiOutOfEdit7%"
Gui%GuiNumber%Edit%NumOfEdits%.style.background = "%guiOutOfEdit11%"
Gui%GuiNumber%Edit%NumOfEdits%.style.backgroundColor = "%guiOutOfEdit8%"
Gui%GuiNumber%Edit%NumOfEdits%.style.borderRadius = "%guiOutOfEdit9%"
Gui%GuiNumber%Edit%NumOfEdits%.style.fontFamily = "%guiOutOfEdit12%, sans-serif"; // Specify your desired font here
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
Gui%GuiNumber%Edit%NumOfEdits%.style.border = "%guiOutOfEdit10%"
Gui%GuiNumber%Edit%NumOfEdits%.style.color = "%guiOutOfEdit7%"
Gui%GuiNumber%Edit%NumOfEdits%.style.background = "%guiOutOfEdit11%"
Gui%GuiNumber%Edit%NumOfEdits%.style.backgroundColor = "%guiOutOfEdit8%"
Gui%GuiNumber%Edit%NumOfEdits%.style.borderRadius = "%guiOutOfEdit9%"
Gui%GuiNumber%Edit%NumOfEdits%.style.fontFamily = "%guiOutOfEdit12%, sans-serif"; // Specify your desired font here
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
Gui%GuiNumber%%guiOutOfEdit5%.style.border = "%guiOutOfEdit10%"
Gui%GuiNumber%%guiOutOfEdit5%.style.color = "%guiOutOfEdit7%"
Gui%GuiNumber%%guiOutOfEdit5%.style.background = "%guiOutOfEdit11%"
Gui%GuiNumber%%guiOutOfEdit5%.style.backgroundColor = "%guiOutOfEdit8%"
Gui%GuiNumber%%guiOutOfEdit5%.style.borderRadius = "%guiOutOfEdit9%"
Gui%GuiNumber%%guiOutOfEdit5%.style.fontFamily = "%guiOutOfEdit12%, sans-serif"; // Specify your desired font here
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
Gui%GuiNumber%%guiOutOfEdit5%.style.border = "%guiOutOfEdit10%"
Gui%GuiNumber%%guiOutOfEdit5%.style.color = "%guiOutOfEdit7%"
Gui%GuiNumber%%guiOutOfEdit5%.style.background = "%guiOutOfEdit11%"
Gui%GuiNumber%%guiOutOfEdit5%.style.backgroundColor = "%guiOutOfEdit8%"
Gui%GuiNumber%%guiOutOfEdit5%.style.borderRadius = "%guiOutOfEdit9%"
Gui%GuiNumber%%guiOutOfEdit5%.style.fontFamily = "%guiOutOfEdit12%, sans-serif"; // Specify your desired font here
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
Gui%GuiNumber%Edit%NumOfEdits%.style.border = "%guiOutOfEdit10%"
Gui%GuiNumber%Edit%NumOfEdits%.style.color = "%guiOutOfEdit7%"
Gui%GuiNumber%Edit%NumOfEdits%.style.background = "%guiOutOfEdit11%"
Gui%GuiNumber%Edit%NumOfEdits%.style.backgroundColor = "%guiOutOfEdit8%"
Gui%GuiNumber%Edit%NumOfEdits%.style.borderRadius = "%guiOutOfEdit9%"
Gui%GuiNumber%Edit%NumOfEdits%.style.fontFamily = "%guiOutOfEdit12%, sans-serif"; // Specify your desired font here
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
Gui%GuiNumber%Edit%NumOfEdits%.style.border = "%guiOutOfEdit10%"
Gui%GuiNumber%Edit%NumOfEdits%.style.color = "%guiOutOfEdit7%"
Gui%GuiNumber%Edit%NumOfEdits%.style.background = "%guiOutOfEdit11%"
Gui%GuiNumber%Edit%NumOfEdits%.style.backgroundColor = "%guiOutOfEdit8%"
Gui%GuiNumber%Edit%NumOfEdits%.style.borderRadius = "%guiOutOfEdit9%"
Gui%GuiNumber%Edit%NumOfEdits%.style.fontFamily = "%guiOutOfEdit12%, sans-serif"; // Specify your desired font here
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
weDontHaveAvImage := 0
}
else
{
weDontHaveAvImage := 1

}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("g"))
{
guiOutOfPictureG := 1
guiOutOfPicture6 := A_LoopField
StringTrimLeft, guiOutOfPicture6, guiOutOfPicture6, 1
}
}

NumOfPictures++


if (weDontHaveAvImage = 1)
{

guiOutOfPictureV := 1
guiOutOfPicture5 := "v" . "Picture" . NumOfPictures
guiOutOfPicture52 := "v" . "Picture" . NumOfPictures
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

if (InStr(out5, "%"))
{
str := out5
s:=StrSplit(str,"%").2
var1 := s

out5 :=  """"" + variables." . var1 . " + """""


}




if (InStr(out5, "https://") or InStr(out5, "http://") or InStr(out5, "www.") or InStr(out5, "ftp://"))
{
    ; One or more of the specified substrings are found in out5
    ;MsgBox, URL or FTP link detected in out5: %out5%

isBase64orURL2 =
(

Gui%GuiNumber%%guiOutOfPicture5%.src = base64Image%base64ImageNum%;

)

base64out := out5

isBase64orURL := isBase64orURL2 ; url




}
else
{
    ; None of the specified substrings are found in out5
    ;MsgBox, No URL or FTP link detected in out5: %out5%



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


isBase64orURL1 =
(

Gui%GuiNumber%%guiOutOfPicture5%.src = "data:image/*;base64," + base64Image%base64ImageNum%;

)
isBase64orURL := isBase64orURL1 ; base64
}




base64 =
(
let base64Image%base64ImageNum% = "%base64out%"
)

base64ImageData .= base64 . "`n"




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
%isBase64orURL%

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
%isBase64orURL%


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


%isBase64orURL%


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
%isBase64orURL%

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
%isBase64orURL%

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
%isBase64orURL%

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
%isBase64orURL%

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


if (out3 = "toggle")
{







guiOutOfSwitchNum := 0
guiOutOfSwitchX := 0
guiOutOfSwitchY := 0
guiOutOfSwitchW := 0
guiOutOfSwitchH := 0
guiOutOfSwitchV := 0
guiOutOfSwitchG := 0
guiOutOfSwitchOn := 0
Loop, 7
{
guiOutOfSwitch%A_Index% := ""
}

guiOutOfSwitch3 := "60"
guiOutOfSwitch4 := "30"
isThereArecId := 1

dynamicGuiSet := 0
Loop, Parse, out4, " "
{
;MsgBox, |%A_LoopField%|

guiOutOfSwitchNum++

if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("x"))
{
guiOutOfSwitchX := 1
guiOutOfSwitch1 := A_LoopField
if (InStr(guiOutOfSwitch1, "%"))
{
str := guiOutOfSwitch1
s:=StrSplit(str,"%").2
var1 := s

guiOutOfSwitch1 :=  " variables." . var1
}
StringTrimLeft, guiOutOfSwitch1, guiOutOfSwitch1, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("y"))
{
guiOutOfSwitchY := 1
guiOutOfSwitch2 := A_LoopField
if (InStr(guiOutOfSwitch2, "%"))
{
str := guiOutOfSwitch2
s:=StrSplit(str,"%").2
var1 := s

guiOutOfSwitch2 :=  " variables." . var1
}
StringTrimLeft, guiOutOfSwitch2, guiOutOfSwitch2, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("w"))
{
guiOutOfSwitchW := 1
guiOutOfSwitch3 := A_LoopField
if (InStr(guiOutOfSwitch3, "%"))
{
str := guiOutOfSwitch3
s:=StrSplit(str,"%").2
var1 := s

guiOutOfSwitch3 :=  " variables." . var1
}
StringTrimLeft, guiOutOfSwitch3, guiOutOfSwitch3, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("h"))
{
guiOutOfSwitchH := 1
guiOutOfSwitch4 := A_LoopField
if (InStr(guiOutOfSwitch4, "%"))
{
str := guiOutOfSwitch4
s:=StrSplit(str,"%").2
var1 := s

guiOutOfSwitch4 :=  " variables." . var1
}
StringTrimLeft, guiOutOfSwitch4, guiOutOfSwitch4, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("v"))
{
guiOutOfSwitchV := 1
guiOutOfSwitch5 := """" . "Gui" . GuiNumber . A_LoopField . """"
guiOutOfSwitch5Fix := """" . "" . A_LoopField . """"
StringTrimRight, guiOutOfSwitch5Fix, guiOutOfSwitch5Fix, 1
StringTrimLeft, guiOutOfSwitch5Fix, guiOutOfSwitch5Fix, 2
guiOutOfSwitch52 := A_LoopField
dynamicGuiSet := 1
if (InStr(guiOutOfSwitch5, "%"))
{
str := guiOutOfSwitch5
s:=StrSplit(str,"%").2
var1 := s

guiOutOfSwitch5 := " ""Gui" . GuiNumber . """ + [variables." . var1 . "]"
guiOutOfSwitch5Fix := " + [variables." . var1 . "]"
}
else
{
StringTrimLeft, A_LoopFieldOutFixCnavas, A_LoopField, 1
guiOutOfSwitch5 :=  " " . """" . "Gui" . GuiNumber . A_LoopFieldOutFixCnavas . """"
}
StringTrimLeft, guiOutOfSwitch5, guiOutOfSwitch5, 1
StringTrimLeft, guiOutOfSwitch52, guiOutOfSwitch52, 1
isThereArecId := 0
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("g"))
{
guiOutOfSwitchG := 1
guiOutOfSwitch6 := A_LoopField
StringTrimLeft, guiOutOfSwitch6, guiOutOfSwitch6, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 2) = StrLower("on"))
{
guiOutOfSwitchOn := 1
}
}

switchId++


if (isThereArecId = 1)
{
guiOutOfSwitch5 := """" . "Gui" . GuiNumber . "Switch" . switchId .  """"
guiOutOfSwitch5Fix := """" . "" . GuiNumber . "Switch" . switchId .  """"
StringTrimRight, guiOutOfSwitch5Fix, guiOutOfSwitch5Fix, 1
StringTrimLeft, guiOutOfSwitch5Fix, guiOutOfSwitch5Fix, 1
}


if (guiOutOfSwitchOn = 1)
{
switchOut =
(
createToggleSwitch(Gui%GuiNumber%, %guiOutOfSwitch5%, "%out5%", "#2196F3", %guiOutOfSwitch1%, %guiOutOfSwitch2%, %guiOutOfSwitch3%, %guiOutOfSwitch4%, %guiOutOfSwitch6% );
document.getElementById('Gui%GuiNumber%%guiOutOfSwitch5Fix%').click()`;
)
}
else
{
switchOut =
(
createToggleSwitch(Gui%GuiNumber%, %guiOutOfSwitch5%, "%out5%", "#2196F3", %guiOutOfSwitch1%, %guiOutOfSwitch2%, %guiOutOfSwitch3%, %guiOutOfSwitch4%, %guiOutOfSwitch6% );
)
}

;MsgBox, % rectangleOut

jsCode .= "`n" . switchOut . "`n"

}



if (out3 = "checkbox")
{




guiOutOfCheckboxNum := 0
guiOutOfCheckboxX := 0
guiOutOfCheckboxY := 0
guiOutOfCheckboxW := 0
guiOutOfCheckboxH := 0
guiOutOfCheckboxV := 0
guiOutOfCheckboxG := 0
guiOutOfCheckboxOn := "false"
Loop, 7
{
guiOutOfCheckbox%A_Index% := ""
}

guiOutOfCheckbox3 := "60"
guiOutOfCheckbox4 := "30"
isThereArecId := 1

dynamicGuiSet := 0
Loop, Parse, out4, " "
{
;MsgBox, |%A_LoopField%|

guiOutOfCheckboxNum++

if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("x"))
{
guiOutOfCheckboxX := 1
guiOutOfCheckbox1 := A_LoopField
if (InStr(guiOutOfCheckbox1, "%"))
{
str := guiOutOfCheckbox1
s:=StrSplit(str,"%").2
var1 := s

guiOutOfCheckbox1 :=  " variables." . var1
}
StringTrimLeft, guiOutOfCheckbox1, guiOutOfCheckbox1, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("y"))
{
guiOutOfCheckboxY := 1
guiOutOfCheckbox2 := A_LoopField
if (InStr(guiOutOfCheckbox2, "%"))
{
str := guiOutOfCheckbox2
s:=StrSplit(str,"%").2
var1 := s

guiOutOfCheckbox2 :=  " variables." . var1
}
StringTrimLeft, guiOutOfCheckbox2, guiOutOfCheckbox2, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("w"))
{
guiOutOfCheckboxW := 1
guiOutOfCheckbox3 := A_LoopField
if (InStr(guiOutOfCheckbox3, "%"))
{
str := guiOutOfCheckbox3
s:=StrSplit(str,"%").2
var1 := s

guiOutOfCheckbox3 :=  " variables." . var1
}
StringTrimLeft, guiOutOfCheckbox3, guiOutOfCheckbox3, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("h"))
{
guiOutOfCheckboxH := 1
guiOutOfCheckbox4 := A_LoopField
if (InStr(guiOutOfCheckbox4, "%"))
{
str := guiOutOfCheckbox4
s:=StrSplit(str,"%").2
var1 := s

guiOutOfCheckbox4 :=  " variables." . var1
}
StringTrimLeft, guiOutOfCheckbox4, guiOutOfCheckbox4, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("v"))
{
guiOutOfCheckboxV := 1
guiOutOfCheckbox5 := """" . "Gui" . GuiNumber . A_LoopField . """"
guiOutOfCheckbox5Fix := """" . "" . A_LoopField . """"
StringTrimRight, guiOutOfCheckbox5Fix, guiOutOfCheckbox5Fix, 1
StringTrimLeft, guiOutOfCheckbox5Fix, guiOutOfCheckbox5Fix, 2
guiOutOfCheckbox52 := A_LoopField
dynamicGuiSet := 1
if (InStr(guiOutOfCheckbox5, "%"))
{
str := guiOutOfCheckbox5
s:=StrSplit(str,"%").2
var1 := s

guiOutOfCheckbox5 := " ""Gui" . GuiNumber . """ + [variables." . var1 . "]"
guiOutOfCheckbox5Fix := " + [variables." . var1 . "]"
}
else
{
StringTrimLeft, A_LoopFieldOutFixCnavas, A_LoopField, 1
guiOutOfCheckbox5 :=  " " . """" . "Gui" . GuiNumber . A_LoopFieldOutFixCnavas . """"
}
StringTrimLeft, guiOutOfCheckbox5, guiOutOfCheckbox5, 1
StringTrimLeft, guiOutOfCheckbox52, guiOutOfCheckbox52, 1
isThereArecId := 0
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("g"))
{
guiOutOfCheckboxG := 1
guiOutOfCheckbox6 := A_LoopField
StringTrimLeft, guiOutOfCheckbox6, guiOutOfCheckbox6, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 2) = StrLower("on"))
{
guiOutOfCheckboxOn := "true"
}
}

CheckboxId++


if (isThereArecId = 1)
{
guiOutOfCheckbox5 := """" . "Gui" . GuiNumber . "Checkbox" . CheckboxId .  """"
guiOutOfCheckbox5Fix := """" . "" . GuiNumber . "Checkbox" . CheckboxId .  """"
StringTrimRight, guiOutOfCheckbox5Fix, guiOutOfCheckbox5Fix, 1
StringTrimLeft, guiOutOfCheckbox5Fix, guiOutOfCheckbox5Fix, 1
}



CheckboxOut =
(
createCheckbox(Gui%GuiNumber%, %guiOutOfCheckbox5%, "%out5%", %guiOutOfCheckboxOn%, %guiOutOfCheckbox1%, %guiOutOfCheckbox2%, %guiOutOfCheckbox6% );
)



jsCode .= "`n" . CheckboxOut . "`n"

}



if (out3 = "ide")
{




guiOutOfIDENum := 0
guiOutOfIDEX := 0
guiOutOfIDEY := 0
guiOutOfIDEW := 0
guiOutOfIDEH := 0
guiOutOfIDEV := 0
guiOutOfIDEG := 0
guiOutOfIDEL := 0
guiOutOfIDES := 0

Loop, 8
{
guiOutOfIDE%A_Index% := ""
}

guiOutOfIDE3 := "300"
guiOutOfIDE4 := "300"
guiOutOfIDE8 := "18"
isThereArecId := 1

dynamicGuiSet := 0
Loop, Parse, out4, " "
{
;MsgBox, |%A_LoopField%|

guiOutOfIDENum++

if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("x"))
{
guiOutOfIDEX := 1
guiOutOfIDE1 := A_LoopField
if (InStr(guiOutOfIDE1, "%"))
{
str := guiOutOfIDE1
s:=StrSplit(str,"%").2
var1 := s

guiOutOfIDE1 :=  " variables." . var1
}
StringTrimLeft, guiOutOfIDE1, guiOutOfIDE1, 1
}

if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("s"))
{
guiOutOfIDES := 1
guiOutOfIDE8 := A_LoopField
if (InStr(guiOutOfIDE8, "%"))
{
str := guiOutOfIDE8
s:=StrSplit(str,"%").2
var1 := s

guiOutOfIDE8 :=  " variables." . var1
}
StringTrimLeft, guiOutOfIDE8, guiOutOfIDE8, 1
}

if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("l"))
{
guiOutOfIDEL := 1
guiOutOfIDE7 := A_LoopField
if (InStr(guiOutOfIDE7, "%"))
{
str := guiOutOfIDE7
s:=StrSplit(str,"%").2
var1 := s

guiOutOfIDE7 :=  " variables." . var1
}
StringTrimLeft, guiOutOfIDE7, guiOutOfIDE7, 1
}

if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("y"))
{
guiOutOfIDEY := 1
guiOutOfIDE2 := A_LoopField
if (InStr(guiOutOfIDE2, "%"))
{
str := guiOutOfIDE2
s:=StrSplit(str,"%").2
var1 := s

guiOutOfIDE2 :=  " variables." . var1
}
StringTrimLeft, guiOutOfIDE2, guiOutOfIDE2, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("w"))
{
guiOutOfIDEW := 1
guiOutOfIDE3 := A_LoopField
if (InStr(guiOutOfIDE3, "%"))
{
str := guiOutOfIDE3
s:=StrSplit(str,"%").2
var1 := s

guiOutOfIDE3 :=  " variables." . var1
}
StringTrimLeft, guiOutOfIDE3, guiOutOfIDE3, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("h"))
{
guiOutOfIDEH := 1
guiOutOfIDE4 := A_LoopField
if (InStr(guiOutOfIDE4, "%"))
{
str := guiOutOfIDE4
s:=StrSplit(str,"%").2
var1 := s

guiOutOfIDE4 :=  " variables." . var1
}
StringTrimLeft, guiOutOfIDE4, guiOutOfIDE4, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("v"))
{
guiOutOfIDEV := 1
guiOutOfIDE5 := """" . "Gui" . GuiNumber . A_LoopField . """"
guiOutOfIDE5Fix := """" . "" . A_LoopField . """"
StringTrimRight, guiOutOfIDE5Fix, guiOutOfIDE5Fix, 1
StringTrimLeft, guiOutOfIDE5Fix, guiOutOfIDE5Fix, 2
guiOutOfIDE52 := A_LoopField
dynamicGuiSet := 1
if (InStr(guiOutOfIDE5, "%"))
{
str := guiOutOfIDE5
s:=StrSplit(str,"%").2
var1 := s

guiOutOfIDE5 := " ""Gui" . GuiNumber . """ + [variables." . var1 . "]"
guiOutOfIDE5Fix := " + [variables." . var1 . "]"
}
else
{
StringTrimLeft, A_LoopFieldOutFixCnavas, A_LoopField, 1
guiOutOfIDE5 :=  " " . """" . "Gui" . GuiNumber . A_LoopFieldOutFixCnavas . """"
}
StringTrimLeft, guiOutOfIDE5, guiOutOfIDE5, 1
StringTrimLeft, guiOutOfIDE52, guiOutOfIDE52, 1
isThereArecId := 0
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("g"))
{
guiOutOfIDEG := 1
guiOutOfIDE6 := A_LoopField
StringTrimLeft, guiOutOfIDE6, guiOutOfIDE6, 1
}
}

IDEId++


if (isThereArecId = 1)
{
guiOutOfIDE5 := """" . "Gui" . GuiNumber . "IDE" . IDEId .  """"
guiOutOfIDE5Fix := """" . "" . GuiNumber . "IDE" . IDEId .  """"
StringTrimRight, guiOutOfIDE5Fix, guiOutOfIDE5Fix, 1
StringTrimLeft, guiOutOfIDE5Fix, guiOutOfIDE5Fix, 1
}

if (InStr(out5, "%"))
{
StringTrimRight, out5, out5, 1
StringTrimLeft, out5, out5, 1
out5 := "variables." . out5
}
else
{
out5 := "null"
}
if (guiOutOfIDE7 = "")
{
guiOutOfIDE7 := "autohotkey"
}


;AddIDE(parent, xPos, yPos, w, h, id, font, langName = "autohotkey", onChangeFunc, initialText = "")
IDEOut =
(
AddIDE(Gui%GuiNumber%, %guiOutOfIDE1%, %guiOutOfIDE2%, %guiOutOfIDE3%, %guiOutOfIDE4%, %guiOutOfIDE5%, %guiOutOfIDE8%, "%guiOutOfIDE7%", %guiOutOfIDE6%,    %out5%    );
)



jsCode .= "`n" . IDEOut . "`n"

}


if (out3 = "dropdownlist")
{







guiOutOfDropDownListNum := 0
guiOutOfDropDownListX := 0
guiOutOfDropDownListY := 0
guiOutOfDropDownListW := 0
guiOutOfDropDownListH := 0
guiOutOfDropDownListV := 0
guiOutOfDropDownListG := 0
Loop, 7
{
guiOutOfDropDownList%A_Index% := ""
}
isThereArecId := 1

guiOutOfDropDownList3 := "150"
guiOutOfDropDownList4 := "30"

dynamicGuiSet := 0
Loop, Parse, out4, " "
{
;MsgBox, |%A_LoopField%|

guiOutOfDropDownListNum++

if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("x"))
{
guiOutOfDropDownListX := 1
guiOutOfDropDownList1 := A_LoopField
if (InStr(guiOutOfDropDownList1, "%"))
{
str := guiOutOfDropDownList1
s:=StrSplit(str,"%").2
var1 := s

guiOutOfDropDownList1 :=  " variables." . var1
}
StringTrimLeft, guiOutOfDropDownList1, guiOutOfDropDownList1, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("y"))
{
guiOutOfDropDownListY := 1
guiOutOfDropDownList2 := A_LoopField
if (InStr(guiOutOfDropDownList2, "%"))
{
str := guiOutOfDropDownList2
s:=StrSplit(str,"%").2
var1 := s

guiOutOfDropDownList2 :=  " variables." . var1
}
StringTrimLeft, guiOutOfDropDownList2, guiOutOfDropDownList2, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("w"))
{
guiOutOfDropDownListW := 1
guiOutOfDropDownList3 := A_LoopField
if (InStr(guiOutOfDropDownList3, "%"))
{
str := guiOutOfDropDownList3
s:=StrSplit(str,"%").2
var1 := s

guiOutOfDropDownList3 :=  " variables." . var1
}
StringTrimLeft, guiOutOfDropDownList3, guiOutOfDropDownList3, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("h"))
{
guiOutOfDropDownListH := 1
guiOutOfDropDownList4 := A_LoopField
if (InStr(guiOutOfDropDownList4, "%"))
{
str := guiOutOfDropDownList4
s:=StrSplit(str,"%").2
var1 := s

guiOutOfDropDownList4 :=  " variables." . var1
}
StringTrimLeft, guiOutOfDropDownList4, guiOutOfDropDownList4, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("v"))
{
guiOutOfDropDownListV := 1
guiOutOfDropDownList5 := """" . "Gui" . GuiNumber . A_LoopField . """"
guiOutOfDropDownList52 := A_LoopField
dynamicGuiSet := 1
if (InStr(guiOutOfDropDownList5, "%"))
{
str := guiOutOfDropDownList5
s:=StrSplit(str,"%").2
var1 := s

guiOutOfDropDownList5 :=  " ""Gui" . GuiNumber . """ + [variables." . var1 . "]"

}
else
{
StringTrimLeft, A_LoopFieldOutFixCnavas, A_LoopField, 1
guiOutOfDropDownList5 :=  " " . """" . "Gui" . GuiNumber . A_LoopFieldOutFixCnavas . """"
}
StringTrimLeft, guiOutOfDropDownList5, guiOutOfDropDownList5, 1
StringTrimLeft, guiOutOfDropDownList52, guiOutOfDropDownList52, 1
isThereArecId := 0
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("g"))
{
guiOutOfDropDownListG := 1
guiOutOfDropDownList6 := A_LoopField
StringTrimLeft, guiOutOfDropDownList6, guiOutOfDropDownList6, 1
}
}

DropDownListId++


if (isThereArecId = 1)
{
guiOutOfDropDownList5 := """" . "Gui" . GuiNumber . "DropDownList" . DropDownListId .  """"
}



DropDownListOut =
(
createCustomDropdown(Gui%GuiNumber%, %guiOutOfDropDownList5%, "%out5%", "#333333", %guiOutOfDropDownList1%, %guiOutOfDropDownList2%, %guiOutOfDropDownList3%, %guiOutOfDropDownList4%, %guiOutOfDropDownList6% );
)


;MsgBox, % rectangleOut

jsCode .= "`n" . DropDownListOut . "`n"

}


if (out3 = "iframe")
{







guiOutOfIframeNum := 0
guiOutOfIframeX := 0
guiOutOfIframeY := 0
guiOutOfIframeW := 0
guiOutOfIframeH := 0
guiOutOfIframeV := 0
guiOutOfIframeG := 0
Loop, 7
{
guiOutOfIframe%A_Index% := ""
}
isThereArecId := 1

guiOutOfIframe3 := "150"
guiOutOfIframe4 := "30"

dynamicGuiSet := 0
Loop, Parse, out4, " "
{
;MsgBox, |%A_LoopField%|

guiOutOfIframeNum++

if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("x"))
{
guiOutOfIframeX := 1
guiOutOfIframe1 := A_LoopField
if (InStr(guiOutOfIframe1, "%"))
{
str := guiOutOfIframe1
s:=StrSplit(str,"%").2
var1 := s

guiOutOfIframe1 :=  " variables." . var1
}
StringTrimLeft, guiOutOfIframe1, guiOutOfIframe1, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("y"))
{
guiOutOfIframeY := 1
guiOutOfIframe2 := A_LoopField
if (InStr(guiOutOfIframe2, "%"))
{
str := guiOutOfIframe2
s:=StrSplit(str,"%").2
var1 := s

guiOutOfIframe2 :=  " variables." . var1
}
StringTrimLeft, guiOutOfIframe2, guiOutOfIframe2, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("w"))
{
guiOutOfIframeW := 1
guiOutOfIframe3 := A_LoopField
if (InStr(guiOutOfIframe3, "%"))
{
str := guiOutOfIframe3
s:=StrSplit(str,"%").2
var1 := s

guiOutOfIframe3 :=  " variables." . var1
}
StringTrimLeft, guiOutOfIframe3, guiOutOfIframe3, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("h"))
{
guiOutOfIframeH := 1
guiOutOfIframe4 := A_LoopField
if (InStr(guiOutOfIframe4, "%"))
{
str := guiOutOfIframe4
s:=StrSplit(str,"%").2
var1 := s

guiOutOfIframe4 :=  " variables." . var1
}
StringTrimLeft, guiOutOfIframe4, guiOutOfIframe4, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("v"))
{
guiOutOfIframeV := 1
guiOutOfIframe5 := """" . "Gui" . GuiNumber . A_LoopField . """"
guiOutOfIframe52 := A_LoopField
dynamicGuiSet := 1
if (InStr(guiOutOfIframe5, "%"))
{
str := guiOutOfIframe5
s:=StrSplit(str,"%").2
var1 := s

guiOutOfIframe5 :=  " ""Gui" . GuiNumber . """ + [variables." . var1 . "]"

}
else
{
StringTrimLeft, A_LoopFieldOutFixCnavas, A_LoopField, 1
guiOutOfIframe5 :=  " " . """" . "Gui" . GuiNumber . A_LoopFieldOutFixCnavas . """"
}
StringTrimLeft, guiOutOfIframe5, guiOutOfIframe5, 1
StringTrimLeft, guiOutOfIframe52, guiOutOfIframe52, 1
isThereArecId := 0
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("r"))
{
guiOutOfIframeG := 1
guiOutOfIframe6 := A_LoopField
StringTrimLeft, guiOutOfIframe6, guiOutOfIframe6, 1
}
}

IframeId++


if (isThereArecId = 1)
{
guiOutOfIframe5 := """" . "Gui" . GuiNumber . "Iframe" . IframeId .  """"
}



IframeOut =
(
createCustomIframe(Gui%GuiNumber%, %guiOutOfIframe5%, "%out5%", "#333333", %guiOutOfIframe1%, %guiOutOfIframe2%, %guiOutOfIframe3%, %guiOutOfIframe4%, %guiOutOfIframe6%);
)



jsCode .= "`n" . IframeOut . "`n"

}




if (out3 = "player")
{







guiOutOfVideoNum := 0
guiOutOfVideoX := 0
guiOutOfVideoY := 0
guiOutOfVideoW := 0
guiOutOfVideoH := 0
guiOutOfVideoV := 0
guiOutOfVideoG := 0
Loop, 7
{
guiOutOfVideo%A_Index% := ""
}

guiOutOfVideo3 := "480"
guiOutOfVideo4 := "300"

isThereArecId := 1

dynamicGuiSet := 0
Loop, Parse, out4, " "
{
;MsgBox, |%A_LoopField%|

guiOutOfVideoNum++

if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("x"))
{
guiOutOfVideoX := 1
guiOutOfVideo1 := A_LoopField
if (InStr(guiOutOfVideo1, "%"))
{
str := guiOutOfVideo1
s:=StrSplit(str,"%").2
var1 := s

guiOutOfVideo1 :=  " variables." . var1
}
StringTrimLeft, guiOutOfVideo1, guiOutOfVideo1, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("y"))
{
guiOutOfVideoY := 1
guiOutOfVideo2 := A_LoopField
if (InStr(guiOutOfVideo2, "%"))
{
str := guiOutOfVideo2
s:=StrSplit(str,"%").2
var1 := s

guiOutOfVideo2 :=  " variables." . var1
}
StringTrimLeft, guiOutOfVideo2, guiOutOfVideo2, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("w"))
{
guiOutOfVideoW := 1
guiOutOfVideo3 := A_LoopField
if (InStr(guiOutOfVideo3, "%"))
{
str := guiOutOfVideo3
s:=StrSplit(str,"%").2
var1 := s

guiOutOfVideo3 :=  " variables." . var1
}
StringTrimLeft, guiOutOfVideo3, guiOutOfVideo3, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("h"))
{
guiOutOfVideoH := 1
guiOutOfVideo4 := A_LoopField
if (InStr(guiOutOfVideo4, "%"))
{
str := guiOutOfVideo4
s:=StrSplit(str,"%").2
var1 := s

guiOutOfVideo4 :=  " variables." . var1
}
StringTrimLeft, guiOutOfVideo4, guiOutOfVideo4, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("v"))
{
guiOutOfVideoV := 1
guiOutOfVideo5 := """" . "Gui" . GuiNumber . A_LoopField . """"
guiOutOfVideo52 := A_LoopField
dynamicGuiSet := 1
if (InStr(guiOutOfVideo5, "%"))
{
str := guiOutOfVideo5
s:=StrSplit(str,"%").2
var1 := s

guiOutOfVideo5 :=  " ""Gui" . GuiNumber . """ + [variables." . var1 . "]"

}
else
{
StringTrimLeft, A_LoopFieldOutFixCnavas, A_LoopField, 1
guiOutOfVideo5 :=  " " . """" . "Gui" . GuiNumber . A_LoopFieldOutFixCnavas . """"
}
StringTrimLeft, guiOutOfVideo5, guiOutOfVideo5, 1
StringTrimLeft, guiOutOfVideo52, guiOutOfVideo52, 1
isThereArecId := 0
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("g"))
{
guiOutOfVideoG := 1
guiOutOfVideo6 := A_LoopField
StringTrimLeft, guiOutOfVideo6, guiOutOfVideo6, 1
}
}




; 1 url
; 2 yt url
; 3 base64
typeOfAvideo := 0

if (InStr(out5, "https://") or InStr(out5, "http://") or InStr(out5, "www.") or InStr(out5, "ftp://"))
{
    ; One or more of the specified substrings are found in out5
    ;MsgBox, URL or FTP link detected in out5: %out5%

typeOfAvideo := 1

if (InStr(out5, "https://www.youtube.com/")) or (InStr(out5, "https://youtu.be/"))
{

typeOfAvideo := 2
if (InStr(out5, "https://www.youtube.com/"))
{
;
}
else
{
str := Trim(out5)
s:=StrSplit(str,"https://youtu.be/").2
out5 := "https://www.youtube.com/watch?v=" . s
}


}



}
else
{
    ; None of the specified substrings are found in out5
    ;MsgBox, No URL or FTP link detected in out5: %out5%

typeOfAvideo := 3

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
let base64VideoData%base64ImageNum% = "%base64out%"
)


base64VideoData .= base64 . "`n"


}



videoId++

if (isThereArecId = 1)
{
guiOutOfVideo5 := """" . "Gui" . GuiNumber . "Video" . videoId .  """"
}



if (typeOfAvideo = 1)
{
videoOut =
(

PlayVideoFromUrl(Gui%GuiNumber%, "%out5%", %guiOutOfVideo5%, %guiOutOfVideo1%, %guiOutOfVideo2%, %guiOutOfVideo3%, %guiOutOfVideo4%, false)

)

}
if (typeOfAvideo = 2)
{
videoOut =
(

PlayYoutubeVid(Gui%GuiNumber%, "%out5%", %guiOutOfVideo5%, %guiOutOfVideo1%, %guiOutOfVideo2%, %guiOutOfVideo3%, %guiOutOfVideo4%, false)

)

}
if (typeOfAvideo = 3)
{
videoOut =
(

PlayVideoFromBase64(Gui%GuiNumber%, base64VideoData%base64ImageNum%, %guiOutOfVideo5%, %guiOutOfVideo1%, %guiOutOfVideo2%, %guiOutOfVideo3%, %guiOutOfVideo4%, false)

)

}



;MsgBox, % rectangleOut

jsCode .= "`n" . videoOut . "`n"

}







if (out3 = "rectangle") or (out3 = "circle")
{
ifWeUseCanvasThenAddUpdateFunc1 =
(
updateRectangle(id, param1, param2, param3, param4);
redrawCanvas(); // Redraw the canvas with updated rectangles
)
ifWeUseCanvasThenAddUpdateFunc2 =
(
updateRectangleColor(id, param1);
redrawCanvas(); // Redraw the canvas with updated rectangles
)
ifWeUseCanvas := 1

rectangleOut := ""




guiOutOfRectangleNum := 0
guiOutOfRectangleX := 0
guiOutOfRectangleY := 0
guiOutOfRectangleW := 0
guiOutOfRectangleH := 0
guiOutOfRectangleV := 0
guiOutOfRectangleG := 0
Loop, 6
{
guiOutOfRectangle%A_Index% := ""
}
dynamicGuiSet := 0
isThereArecId := 1
Loop, Parse, out4, " "
{
;MsgBox, |%A_LoopField%|

guiOutOfRectangleNum++

if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("x"))
{
guiOutOfRectangleX := 1
guiOutOfRectangle1 := A_LoopField
if (InStr(guiOutOfRectangle1, "%"))
{
str := guiOutOfRectangle1
s:=StrSplit(str,"%").2
var1 := s

guiOutOfRectangle1 :=  " variables." . var1
}
StringTrimLeft, guiOutOfRectangle1, guiOutOfRectangle1, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("y"))
{
guiOutOfRectangleY := 1
guiOutOfRectangle2 := A_LoopField
if (InStr(guiOutOfRectangle2, "%"))
{
str := guiOutOfRectangle2
s:=StrSplit(str,"%").2
var1 := s

guiOutOfRectangle2 :=  " variables." . var1
}
StringTrimLeft, guiOutOfRectangle2, guiOutOfRectangle2, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("w"))
{
guiOutOfRectangleW := 1
guiOutOfRectangle3 := A_LoopField
if (InStr(guiOutOfRectangle3, "%"))
{
str := guiOutOfRectangle3
s:=StrSplit(str,"%").2
var1 := s

guiOutOfRectangle3 :=  " variables." . var1
}
StringTrimLeft, guiOutOfRectangle3, guiOutOfRectangle3, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("h"))
{
guiOutOfRectangleH := 1
guiOutOfRectangle4 := A_LoopField
if (InStr(guiOutOfRectangle4, "%"))
{
str := guiOutOfRectangle4
s:=StrSplit(str,"%").2
var1 := s

guiOutOfRectangle4 :=  " variables." . var1
}
StringTrimLeft, guiOutOfRectangle4, guiOutOfRectangle4, 1
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("v"))
{
guiOutOfRectangleV := 1
guiOutOfRectangle5 := """" . "Gui" . GuiNumber . A_LoopField . """"
guiOutOfRectangle52 := A_LoopField
dynamicGuiSet := 1
if (InStr(guiOutOfRectangle5, "%"))
{
str := guiOutOfRectangle5
s:=StrSplit(str,"%").2
var1 := s

guiOutOfRectangle5 :=  " ""Gui" . GuiNumber . """ + [variables." . var1 . "]"
}
else
{
StringTrimLeft, A_LoopFieldOutFixCnavas, A_LoopField, 1
guiOutOfRectangle5 :=  " " . """" . "Gui" . GuiNumber . A_LoopFieldOutFixCnavas . """"
}
StringTrimLeft, guiOutOfRectangle5, guiOutOfRectangle5, 1
StringTrimLeft, guiOutOfRectangle52, guiOutOfRectangle52, 1
isThereArecId := 0
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("g"))
{
guiOutOfRectangleG := 1
guiOutOfRectangle6 := A_LoopField
StringTrimLeft, guiOutOfRectangle6, guiOutOfRectangle6, 1
}
}

rectangleId++


if (isThereArecId = 1)
{
guiOutOfRectangle5 := """" . "Gui1Rectangle" . rectangleId .  """"
}



if (out3 = "circle")
{



rectangleOut =
(
// draw a circle dont look that is says drawRoundedRectangle look at the 6th parameter in function its for rounding the rectangle and since we are rounding it to the half of the width of the rectangle it will look like a circle
rectangles.push(drawRoundedRectangle(ctx, %guiOutOfRectangle1%, %guiOutOfRectangle2%, %guiOutOfRectangle3%, %guiOutOfRectangle4%, Round(%guiOutOfRectangle3% / 2), "#E5E5E5", %guiOutOfRectangle5%));
)
}
else
{
rectangleOut =
(
rectangles.push(drawRoundedRectangle(ctx, %guiOutOfRectangle1%, %guiOutOfRectangle2%, %guiOutOfRectangle3%, %guiOutOfRectangle4%, 3, "#E5E5E5", %guiOutOfRectangle5%));
)
}

;MsgBox, % rectangleOut

jsCode .= "`n" . rectangleOut . "`n"


}

if (out2 = "hide")
{

outJSshowNoMore =
(
Gui%GuiNumber%.style.display = "none";
)

jsCode .= "`n" . outJSshowNoMore . "`n"

}

if (out2 = "show") or (out2 = "move")
{



if (Trim(out3) = "")
{

outJSshowNoMore =
(
Gui%GuiNumber%.style.display = "block";
)

jsCode .= "`n" . outJSshowNoMore . "`n"

}
else
{

guiOutOfShowX := 0
guiOutOfShowY := 0
guiOutOfShowW := 0
guiOutOfShowH := 0
guiOutOfShowRound := 0

boderinGuiYes =
(
Gui%GuiNumber%.style.border = "2px solid white";
)
boderinGuiYesCan =
(
canvas.style.border = "2px solid white";
)
Loop, 4
{
guiOutOfShow%A_Index% := ""
}
Loop, Parse, out3, " "
{
if (SubStr(Trim(StrLower(A_LoopField)), 1, 7) = StrLower("-border"))
{
boderinGuiYes =
(
Gui%GuiNumber%.style.border = "";
)
boderinGuiYesCan =
(
canvas.style.border = "";
)
}
if (SubStr(Trim(StrLower(A_LoopField)), 1, 12) = StrLower("+WebsiteMode"))
{
isFullScren := 1
}
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


if (SubStr(Trim(StrLower(A_LoopField)), 1, 1) = StrLower("r"))
{

guiOutOfShowRound := A_LoopField
StringTrimLeft, guiOutOfShowRound, guiOutOfShowRound, 1


if (InStr(guiOutOfShowRound, "%"))
{
str := guiOutOfShowRound
s:=StrSplit(str,"%").2
var1 := s

guiOutOfShowRound =
(
" + variables.%var1% + "px
)

}
else
{
guiOutOfButton9 := guiOutOfButton9 . "px"
}

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









if (guiOutOfShowX = 1)
{
jsCode01Canvas =
(
canvas.style.left = "%guiOutOfShow1%px";
)
}
else
{
jsCode01Canvas =
(
canvas.style.left = (window.innerWidth - canvas.width) / 2 + "px";
)
}

if (guiOutOfShowY = 1)
{
jsCode02Canvas =
(
canvas.style.top = "%guiOutOfShow2%px";
)
}
else
{
jsCode02Canvas =
(
canvas.style.top = (window.innerHeight - canvas.height) / 2 + "px";
)
}

if (isFullScren = 1)
{
isFullScrenOnce++
if (isFullScrenOnce = 1)
{
FullScrenFixCode =
(
document.documentElement.setAttribute("style", "padding: 0; margin: 0;");
document.head.setAttribute("style", "padding: 0; margin: 0;");
document.body.setAttribute("style", "overflow-x: hidden;padding: 0; margin: 0;");
)
}
else
{
FullScrenFixCode := "`n"
}

}
else
{
FullScrenFixCode := "`n"
}


;MsgBox, % weUseCnanvasAtALL
if (weUseCnanvasAtALL = 1)
{
varOutJsCanvasFixTranspernat =
(
Gui1.style.backgroundColor = "transparent";
Gui1.style.zIndex = "100";
)


if (isFullScren = 1)
{
jsCode0 =
(

Gui%GuiNumber%.style.position = "absolute";
Gui%GuiNumber%.style.width = window.innerWidth + "px"; // Set the width
Gui%GuiNumber%.style.height = "%guiOutOfShow4%px"; // Set the height
Gui%GuiNumber%.style.color = "white";
Gui%GuiNumber%.style.fontSize = "15px";
Gui%GuiNumber%.style.padding = "0px";
Gui%GuiNumber%.style.borderRadius = "%guiOutOfShowRound%px";
Gui%GuiNumber%.style.fontFamily = "%fontName%, sans-serif"; // Specify your desired font here
Gui%GuiNumber%.style.zIndex = "%GuiNumber%00";


%varOutJsCanvasFixTranspernat%

document.body.appendChild(Gui%GuiNumber%); // Append the GUI window to the body
Gui%GuiNumber%.style.display = "block";

)
}
else
{
jsCode0 =
(

Gui%GuiNumber%.style.position = "absolute";
Gui%GuiNumber%.style.width = "%guiOutOfShow3%px"; // Set the width
Gui%GuiNumber%.style.height = "%guiOutOfShow4%px"; // Set the height
Gui%GuiNumber%.style.color = "white";
Gui%GuiNumber%.style.fontSize = "15px";
Gui%GuiNumber%.style.borderRadius = "%guiOutOfShowRound%px";
Gui%GuiNumber%.style.padding = "0px";
%boderinGuiYes%
Gui%GuiNumber%.style.zIndex = "%GuiNumber%00";
Gui%GuiNumber%.style.fontFamily = "%fontName%, sans-serif"; // Specify your desired font here

// Calculate center position
%jsCode01%
%jsCode02%


%varOutJsCanvasFixTranspernat%

document.body.appendChild(Gui%GuiNumber%); // Append the GUI window to the body
Gui%GuiNumber%.style.display = "block";

)
}



}
else
{

if (isFullScren = 1)
{
jsCode0 =
(

Gui%GuiNumber%.style.position = "absolute";
Gui%GuiNumber%.style.width = window.innerWidth + "px"; // Set the width
Gui%GuiNumber%.style.height = "%guiOutOfShow4%px"; // Set the height
Gui%GuiNumber%.style.background = "%guiColorShow%";
Gui%GuiNumber%.style.backgroundColor = "%guiColorShow%";
Gui%GuiNumber%.style.color = "white";
Gui%GuiNumber%.style.fontSize = "15px";
Gui%GuiNumber%.style.padding = "0px";
Gui%GuiNumber%.style.borderRadius = "%guiOutOfShowRound%px";
Gui%GuiNumber%.style.fontFamily = "%fontName%, sans-serif"; // Specify your desired font here
Gui%GuiNumber%.style.zIndex = "%GuiNumber%00";


%varOutJsCanvasFixTranspernat%

document.body.appendChild(Gui%GuiNumber%); // Append the GUI window to the body
Gui%GuiNumber%.style.display = "block";

)
}
else
{
jsCode0 =
(

Gui%GuiNumber%.style.position = "absolute";
Gui%GuiNumber%.style.width = "%guiOutOfShow3%px"; // Set the width
Gui%GuiNumber%.style.height = "%guiOutOfShow4%px"; // Set the height
Gui%GuiNumber%.style.background = "%guiColorShow%";
Gui%GuiNumber%.style.backgroundColor = "%guiColorShow%";
Gui%GuiNumber%.style.color = "white";
Gui%GuiNumber%.style.fontSize = "15px";
Gui%GuiNumber%.style.borderRadius = "%guiOutOfShowRound%px";
Gui%GuiNumber%.style.padding = "0px";
%boderinGuiYes%
Gui%GuiNumber%.style.fontFamily = "%fontName%, sans-serif"; // Specify your desired font here
Gui%GuiNumber%.style.zIndex = "%GuiNumber%00";

// Calculate center position
%jsCode01%
%jsCode02%


%varOutJsCanvasFixTranspernat%

document.body.appendChild(Gui%GuiNumber%); // Append the GUI window to the body
Gui%GuiNumber%.style.display = "block";

)
}

}

if (isFullScren = 1)
{
jsCode0Canvas =
(


// Create a canvas element dynamically
canvas = document.createElement("canvas");
canvas.id = "canvasId"; // Assign ID to the canvas element
canvas.style.background = "%guiColorShow%";
canvas.width = window.innerWidth;
canvas.height = "%guiOutOfShow4%"; // Set the height
canvas.style.borderRadius = "%guiOutOfShowRound%px";
canvas.style.backgroundColor = "%guiColorShow%"; // Set background color

// Get the 2D rendering context
ctx = canvas.getContext("2d");

// Center the canvas
canvas.style.position = "absolute";



// Append the canvas to the body
document.body.appendChild(canvas);

// Array to store information about rectangles
rectangles = [];

)
}
else
{
jsCode0Canvas =
(


// Create a canvas element dynamically
canvas = document.createElement("canvas");
canvas.id = "canvasId"; // Assign ID to the canvas element
canvas.style.background = "%guiColorShow%";
canvas.width = "%guiOutOfShow3%"; // Set the width
canvas.height = "%guiOutOfShow4%"; // Set the height
canvas.style.borderRadius = "%guiOutOfShowRound%px";
%boderinGuiYesCan%
canvas.style.backgroundColor = "%guiColorShow%"; // Set background color

// Get the 2D rendering context
ctx = canvas.getContext("2d");

// Center the canvas
canvas.style.position = "absolute";
%jsCode01Canvas%
%jsCode02Canvas%


// Append the canvas to the body
document.body.appendChild(canvas);

// Array to store information about rectangles
rectangles = [];

)
}

if (guiOutOfShow3 != "")
{
jsCode01CanvasW =
(
canvas.width = "%guiOutOfShow3%"; // Set the width
)
}

if (guiOutOfShow4 != "")
{
jsCode01CanvasH =
(
canvas.height = "%guiOutOfShow4%"; // Set the height
)
}

jsCode0Canvas2 =
(

%jsCode01CanvasW%
%jsCode01CanvasH%


%jsCode01Canvas%
%jsCode02Canvas%

// Append the canvas to the body
document.body.appendChild(canvas);
redrawCanvas();

)


if (weUseCnanvasAtALLEver = 1)
{
jsCode0 := jsCode0 . jsCode0Canvas2
}

if (weUseCnanvasAtALL = 1)
{
jsCode0 := jsCode0 . jsCode0Canvas
weUseCnanvasAtALL := 0
weUseCnanvasAtALLEver := 1
}




jsCode .= "`n" . jsCode0 . "`n" . FullScrenFixCode . "`n"
}
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
extractedText := StrReplace(extractedText, Chr(92), Chr(92) . Chr(92))
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
GuiControl("%out2%", "Gui%GuiNumber%%out3%, %guiOutOfMove1%, %guiOutOfMove2%, %guiOutOfMove3%, %guiOutOfMove4%);
)
;MsgBox, % out0
}


if (out2 = "focus")
{
out0 =
(
GuiControl("%out2%", "Gui%GuiNumber%%out3%);
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

if (out2 = "textide")
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

if (out2 = "picture")
{
out0 =
(
GuiControl("%out2%", "Gui%GuiNumber%%out3%, "%out4%");
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
else if (out1 == "OnMouseHold")
{
forJsCode =
(

 async function OnMouseHold(A_OnMouseHold)
         {
          variables.A_OnMouseHold = A_OnMouseHold

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
out3 := StrReplace(out3, "ArrowEnter", "Enter")
out4 := StrReplace(out4, "ArrowEnter", "Enter")

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
if !(SubStr(StrLower(str), 1, 16) = StrLower("rectangles.push("))
{

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
else
{
out1234567654 .= str . "`n"
}



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
        if (hold = 1 && holdText = A_LoopField)
        {
            ignore := 1
        }
        else
        {
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




Attw456543w45eqsubeotibebrawaaachi =
(

        // Attaching event listener to document
        document.addEventListener("mouseup", OnMouseRelease);
        document.addEventListener("touchend", OnTouchEnd);

        function OnMouseRelease(event) {
          // This function will be called when the mouse button is released
          // You can perform your desired actions here
          //console.log("Mouse released");
          // Call your main function after mouse release
          OnMouseClick(event);
        }

        function OnTouchEnd(event) {
          // This function will be called when the touch is lifted
          // You can perform your desired actions here
          //console.log("Touch ended");
          // Call your main function after touch ends
          OnMouseClick(event);
        }

)


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
str := StrReplace(str, "variables.A_MMMM", "BuildInVars(""A_MMMM"")")
str := StrReplace(str, "variables.A_MMM", "BuildInVars(""A_MMM"")")
str := StrReplace(str, "variables.A_MM", "BuildInVars(""A_MM"")")
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
str := StrReplace(str, "Attw456543w45eqsubeotibebrawaaachingeventlistenertodocumentaddEventListeneThisfunnctionaftertouchends768ds798y9z7s7xcfy8s7d9fcx", Attw456543w45eqsubeotibebrawaaachi)
str := StrReplace(str, "async function OnMouseClick(A_GuiControl)", "async function OnMouseClick()")

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

endpoint, request_data, %endpoint%
{
return request_data
}

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


varsOUT12345677777777 := ""
Loop, Parse, variables, `n, `r
{

if !(InStr(A_LoopField, "::"))
{
 varsOUT12345677777777 .= A_LoopField . "`n"
}

}

StringTrimRight, varsOUT12345677777777, varsOUT12345677777777, 1
variables := varsOUT12345677777777


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

%allEndponitsInPython%

)

if (DoWeHaveEndpoints = 1) {
    ; Check if the main Python file doesn't exist
    if !FileExist("server_" . filenameOfHTH . ".htpy") {
        ; If it doesn't exist, create it and append pythonCode to it
        FileAppend, % pythonCode, server_%filenameOfHTH%.htpy
    } else {
        ; If it exists, try appending to a numbered file
        Loop {
            ; Construct the filename with a numeric suffix using A_Index
            filename := "server_" . filenameOfHTH . " (" . A_Index . ").htpy"
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



if (doWeEvenDecAnyFuncHUH = 0)
{
jsCode := variables . onKeyPress . "`n`n" . jsCodeGui . "`n`n" . HotKeyCalledHotKyes . "`n`n" . jsCode
}
else
{
jsCode := variables . "`n`n" . funcs . "`n`n" . onKeyPress . "`n`n" . jsCodeGui . "`n`n" . HotKeyCalledHotKyes . "`n`n" . jsCode
}

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

      var lastKeyPressed = "";

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

      let lastInputTime = Date.now(); // Initialize with current timestamp
      let startTimestamp = Date.now(); // Initialize with current timestamp

      // Event listener to track user activity
      function resetIdleTimer() {
        lastInputTime = Date.now(); // Update last input time
      }

      document.addEventListener("mousemove", resetIdleTimer);
      document.addEventListener("keypress", resetIdleTimer);

      // Function to calculate time since last input event
      function A_TimeIdle() {
        return Date.now() - lastInputTime; // Calculate time difference
      }

      // Function to calculate tick count in milliseconds
      function A_TickCount() {
        return Date.now() - startTimestamp;
      }

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
            } else if (key === "enter") {
              if (event.key !== "Enter") {
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

        // Escape special characters in the 'find' string to be used literally
        const escapedFind = find.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");

        // Use replace method to replace all occurrences of 'find' with 'replaceWith'
        return originalString.replace(new RegExp(escapedFind, "g"), replaceWith);
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
  if (typeof input === 'string' && typeof numChars === 'number' && numChars >= 0) {
    return input.length > numChars ? input.substring(numChars) : '';
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
  if (typeof input === 'string' && typeof numChars === 'number' && numChars >= 0) {
    return input.length > numChars ? input.substring(0, input.length - numChars) : '';
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
          // Handle DOM elements
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
          } else if (action === "picture") {
            // Change the image source
            if (element instanceof HTMLImageElement) {
              element.src = param1;
            } else {
              console.error("Element is not an <img> tag, cannot change picture.");
            }
          } else if (action === "textide") {
            // Set value for Ace editor
            var editor = ace.edit(id); // Access the Ace editor instance using its ID
            if (editor && param1) {
              editor.session.setValue(param1);
            } else {
              console.error("Element is not an Ace editor or parameter is missing.");
            }
          }
        } else {
          // Handle canvas or non-existing element
          if (action === "move") {
            // Update position and size of the rectangle
            updateRectangle(id, param1, param2, param3, param4);
            redrawCanvas(); // Redraw the canvas with updated rectangles
          } else if (action === "color") {
            // Update color of the rectangle
            updateRectangleColor(id, param1);
            redrawCanvas(); // Redraw the canvas with updated rectangles
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

addFuncIfWeUseIt_MouseGetPos =
(

      var mouseX = 0;
      var mouseY = 0;

      document.addEventListener("mousemove", function (event) {
        mouseX = event.clientX;
        mouseY = event.clientY;
      });

      function MouseGetPos(coord) {
        if (coord === "x") {
          return mouseX;
        } else if (coord === "y") {
          return mouseY;
        } else {
          return null; // Invalid parameter
        }
      }

)

addFuncIfWeUseIt_SoundPlay =
(

           let audio = new Audio();
            let currentAudioUrl = null;

            function isBase64(str) {
                try {
                    return btoa(atob(str)) === str;
                } catch (err) {
                    return false;
                }
            }

            function SoundPlay(command, parameter) {
                switch (command) {
                    case "play":
                        if (typeof parameter === "string") {
                            if (isBase64(parameter)) {
                                // Parameter is a Base64-encoded string
                                let binaryString = atob(parameter);
                                let bytes = new Uint8Array(binaryString.length);

                                for (let i = 0; i < binaryString.length; i++) {
                                    bytes[i] = binaryString.charCodeAt(i);
                                }

                                let mimeType = "audio/mpeg"; // Default MIME type
                                // Determine MIME type based on audio data
                                // (You may need more sophisticated detection logic here)
                                if (parameter.includes("audio/wav")) {
                                    mimeType = "audio/wav";
                                } else if (parameter.includes("audio/mp3")) {
                                    mimeType = "audio/mpeg";
                                } else if (parameter.includes("audio/ogg")) {
                                    mimeType = "audio/ogg";
                                } else if (parameter.includes("audio/aac")) {
                                    mimeType = "audio/aac";
                                } else if (parameter.includes("audio/m4a")) {
                                    mimeType = "audio/mp4";
                                } else if (parameter.includes("audio/flac")) {
                                    mimeType = "audio/flac";
                                } else if (parameter.includes("audio/x-aiff")) {
                                    mimeType = "audio/x-aiff";
                                }
                                // Add more conditions for other audio formats...

                                let blob = new Blob([bytes.buffer], {
                                    type: mimeType,
                                });
                                let audioSrc = URL.createObjectURL(blob);

                                audio.src = audioSrc;
                                audio.play();
                                currentAudioUrl = audioSrc;
                            } else {
                                // Parameter is assumed to be a URL
                                audio.src = parameter;
                                audio.play();
                                currentAudioUrl = parameter;
                            }
                        } else {
                            console.error("Invalid parameter for play command");
                        }
                        break;
                    case "stop":
                        audio.pause();
                        audio.currentTime = 0;
                        break;
                    case "pause":
                        audio.pause();
                        break;
                    case "resume":
                        audio.play();
                        break;
                    case "mute":
                        audio.volume = 0;
                        break;
                    case "unmute":
                        audio.volume = 1;
                        break;
                    case "setVolume":
                        if (
                            typeof parameter === "number" &&
                            parameter >= 0 &&
                            parameter <= 100
                        `) {
                            audio.volume = parameter / 100;
                        } else {
                            console.error(
                                "Invalid volume value. Volume must be a number between 0 and 100",
                            `);
                        }
                        break;
                    default:
                        console.error("Invalid command specified");
                        break;
                }
            }

)

addFuncIfWeUseIt_StoreLocally =
(

      function StoreLocally(operation, saveLocation, data) {
        if (operation === "s") {
          // Save data to local storage under specified saveLocation
          localStorage.setItem(saveLocation, String(data));
          return true; // Indicate success
        } else if (operation === "d") {
          // Delete data from local storage under specified saveLocation
          localStorage.removeItem(saveLocation);
          return true; // Indicate success
        } else if (operation === "r") {
          // Retrieve data from local storage under specified saveLocation
          return localStorage.getItem(saveLocation) || null; // Return stored data or null if not found
        } else if (operation === "dALL") {
          // Delete all data from local storage (clear all keys)
          localStorage.clear();
          return true; // Indicate success
        } else if (operation === "e") {
          // Check if local storage is empty (no keys present)
          return localStorage.length === 0; // Return true if empty, false if not empty
        } else {
          console.error("Invalid operation specified.");
          return false; // Indicate failure
        }
      }

)


addFuncIfWeUseIt_createToggleSwitch =
(

      // Function to create a toggle switch with width and height
      function createToggleSwitch(parent, id, label, color, leftPos, topPos, width, height, switchFunction) {
        let toggleSwitch = document.createElement("div");
        toggleSwitch.className = "toggle-switch";
        toggleSwitch.id = id;
        toggleSwitch.dataset.id = id;
        toggleSwitch.dataset.isOn = "false";
        toggleSwitch.dataset.color = color; // Save color in dataset for use when toggled
        toggleSwitch.style.width = width + "px"; // Set width
        toggleSwitch.style.height = height + "px"; // Set height
        toggleSwitch.style.backgroundColor = "#ccc";
        toggleSwitch.style.borderRadius = height / 2 + "px"; // Make border radius proportional to height
        toggleSwitch.style.position = "absolute";
        toggleSwitch.style.left = leftPos + "px";
        toggleSwitch.style.top = topPos + "px";
        toggleSwitch.style.cursor = "pointer";
        toggleSwitch.style.transition = "background-color 0.3s ease";

        // Create knob for the toggle switch
        let knob = document.createElement("div");
        knob.className = "knob";
        knob.style.width = height - 4 + "px"; // Set knob width (slightly less than height)
        knob.style.height = height - 4 + "px"; // Set knob height (slightly less than height)
        knob.style.backgroundColor = "#fff";
        knob.style.borderRadius = "50`%";
        knob.style.position = "absolute";
        knob.style.top = "2px";
        knob.style.left = "2px";
        knob.style.transition = "transform 0.3s ease";

        toggleSwitch.appendChild(knob);
        parent.appendChild(toggleSwitch);

        // Create label for the toggle switch
        let toggleLabel = document.createElement("div");
        toggleLabel.textContent = label;
        toggleLabel.style.position = "absolute";
        toggleLabel.style.left = leftPos + width + 10 + "px"; // Position label relative to switch
        toggleLabel.style.top = topPos + 5 + "px";
        parent.appendChild(toggleLabel);

        // Toggle switch click event
        toggleSwitch.addEventListener("click", function () {
          let isOn = toggleSwitch.dataset.isOn === "true";
          toggleSwitch.dataset.isOn = String(!isOn); // Toggle the state

          const knob = toggleSwitch.querySelector(".knob");
          knob.style.transform = isOn ? "translateX(0)" : "translateX(" + (width - height + 4) + "px)"; // Move knob based on state

          const backgroundColor = isOn ? "#ccc" : toggleSwitch.dataset.color;
          toggleSwitch.style.backgroundColor = backgroundColor; // Update background color

          if (isOn == true) {
            isOn = "0";
          } else {
            isOn = "1";
          }

          // Call the switch function with toggle switch ID and state
          switchFunction(isOn);
        });
      }

)


addFuncIfWeUseIt_getUrlParams =
(

      function getUrlParams() {
        const queryString = window.location.search.substring(1); // Get the query string without the leading '?'
        const paramPairs = queryString.split("&"); // Split the query string into parameter key-value pairs

        // Array to store parameter values starting from the first key's value
        const paramValues = [];

        // Iterate over each parameter pair
        paramPairs.forEach((pair, index) => {
          const pairParts = pair.split("=");

          if (index === 0 && pairParts.length === 2) {
            // For the first parameter pair (index === 0), add the value directly
            const firstValue = decodeURIComponent(pairParts[1]);
            paramValues.push(firstValue);
          } else if (pairParts.length === 1) {
            // For subsequent parameter pairs (values without keys), add the value directly
            const value = decodeURIComponent(pairParts[0]);
            paramValues.push(value);
          }
        });

        // Join the parameter values into a single string separated by '&'
        const resultString = paramValues.join("&");

        return resultString;
      }

)

addFuncIfWeUseIt_reloadWithParams =
(

      function reloadWithParams(paramString) {
        // Parse the parameter string to extract individual parameter values
        const paramsArray = paramString.substring(1).split("&"); // Remove leading '?' and split by '&'

        // Construct an array to store valid parameter pairs
        const paramPairs = [];

        // Iterate over each parameter value
        paramsArray.forEach((value) => {
          // Check if the value is non-empty (to filter out any empty values)
          if (value.trim() !== "") {
            // Push the parameter value to paramPairs
            paramPairs.push(value); // No need to encode values here
          }
        });

        // Join the parameter pairs into a query string format
        const queryParams = paramPairs.join("&");

        // Construct the new URL with the parameters and reload the page
        const newUrl = ``${window.location.origin}${window.location.pathname}?${queryParams}``;
        window.location.href = newUrl;
      }

)


addFuncIfWeUseIt_PlayVideoFromBase64 =
(

      function PlayVideoFromBase64(parentElement, base64Data, id, x, y, width, height, autoplay) {
        // Create a container div for the video player
        const playerContainer = document.createElement("div");
        playerContainer.id = id; // Set the id attribute
        playerContainer.style.position = "absolute";
        playerContainer.style.left = ``${x}px``;
        playerContainer.style.top = ``${y}px``;
        playerContainer.style.width = ``${width}px``;
        playerContainer.style.height = ``${height}px``;

        // Create a <video> element for the video player
        const videoElement = document.createElement("video");
        videoElement.style.width = "100`%";
        videoElement.style.height = "100`%";
        videoElement.controls = true; // Show player controls

        // Convert Base64 string to Blob
        const blob = base64ToBlob(base64Data);

        // Create a Blob URL from the Blob object
        const blobUrl = URL.createObjectURL(blob);

        // Set the video source to the Blob URL
        videoElement.src = blobUrl;

        // Set autoplay attribute based on the autoplay parameter
        if (autoplay) {
          videoElement.autoplay = true;
        }

        // Append the video element to the player container
        playerContainer.appendChild(videoElement);

        // Append the player container to the specified parent element
        parentElement.appendChild(playerContainer);
      }

      // Function to convert Base64 string to Blob
      function base64ToBlob(base64Data) {
        const byteCharacters = atob(base64Data);
        const byteNumbers = new Array(byteCharacters.length);
        for (let i = 0; i < byteCharacters.length; i++) {
          byteNumbers[i] = byteCharacters.charCodeAt(i);
        }
        const byteArray = new Uint8Array(byteNumbers);
        return new Blob([byteArray]);
      }

)


addFuncIfWeUseIt_PlayVideoFromUrl =
(

      // Define the PlayVideoFromUrl function
      function PlayVideoFromUrl(parentElement, videoUrl, id, x, y, width, height, autoplay) {
        // Create a container div for the video player
        const playerContainer = document.createElement("div");
        playerContainer.id = id; // Set the id attribute
        playerContainer.style.position = "absolute";
        playerContainer.style.left = ``${x}px``;
        playerContainer.style.top = ``${y}px``;
        playerContainer.style.width = ``${width}px``;
        playerContainer.style.height = ``${height}px``;

        // Create a <video> element for the video player
        const videoElement = document.createElement("video");
        videoElement.style.width = "100`%";
        videoElement.style.height = "100`%";
        videoElement.controls = true; // Show player controls

        // Set the video source to the specified URL
        videoElement.src = videoUrl;

        // Set autoplay attribute based on the autoplay parameter
        if (autoplay) {
          videoElement.autoplay = true;
        }

        // Append the video element to the player container
        playerContainer.appendChild(videoElement);

        // Append the player container to the specified parent element
        parentElement.appendChild(playerContainer);
      }

)


addFuncIfWeUseIt_PlayYoutubeVid =
(

      function PlayYoutubeVid(parentElement, videoUrl, id, x, y, width, height, autoplay) {
        // Create a container div for the YouTube player
        const playerContainer = document.createElement("div");
        playerContainer.id = id; // Set the id attribute
        playerContainer.style.position = "absolute";
        playerContainer.style.left = ``${x}px``;
        playerContainer.style.top = ``${y}px``;
        playerContainer.style.width = ``${width}px``;
        playerContainer.style.height = ``${height}px``;

        // Extract video ID from the YouTube URL
        const videoId = extractVideoId(videoUrl);

        // Create an iframe element for the YouTube player
        const iframe = document.createElement("iframe");
        iframe.width = "100`%";
        iframe.height = "100`%";

        // Construct the YouTube video URL with autoplay and mute parameters
        let autoplayParams = autoplay ? "autoplay=1" : "autoplay=0";
        let muteParams = autoplay ? "mute=1" : "mute=0";
        iframe.src = ``https://www.youtube.com/embed/${videoId}?${autoplayParams}&${muteParams}``;
        iframe.frameBorder = "0";
        iframe.allowFullscreen = true; // Allow fullscreen mode

        // Append the iframe to the player container
        playerContainer.appendChild(iframe);

        // Append the player container to the specified parent element
        parentElement.appendChild(playerContainer);
      }

      // Function to extract video ID from YouTube URL
      function extractVideoId(url) {
        const videoIdRegex = /[?&]v=([^&]+)/;
        const match = url.match(videoIdRegex);
        return match && match[1] ? match[1] : "";
      }

)


addFuncIfWeUseIt_changeFavicon =
(

      async function changeFavicon(iconSource) {
        const head = document.head || document.getElementsByTagName("head")[0];

        // Remove existing favicon link element if it exists
        const existingFavicon = document.getElementById("dynamic-favicon");
        if (existingFavicon) {
          head.removeChild(existingFavicon);
        }

        // Create a new favicon link element
        const favicon = document.createElement("link");
        favicon.id = "dynamic-favicon";
        favicon.rel = "shortcut icon";

        try {
          let mimeType;

          // Determine if iconSource is a URL or a Base64 string
          if (isUrl(iconSource)) {
            // If iconSource is a URL, fetch the resource to get the MIME type
            const response = await fetch(iconSource);
            const buffer = await response.arrayBuffer();
            mimeType = getMimeTypeFromArrayBuffer(buffer);
            favicon.type = mimeType || "image/x-icon"; // Default to 'image/x-icon' if MIME type is not found
            favicon.href = iconSource;
          } else {
            // If iconSource is a Base64 string, convert it to a Blob
            const blob = b64toBlob(iconSource);
            mimeType = getMimeTypeFromBlob(blob);
            favicon.type = mimeType || "image/png"; // Default to 'image/png' if MIME type is not found
            favicon.href = URL.createObjectURL(blob);
          }

        // Get the current favicon element (if exists)
        const existingFavicon = document.querySelector('link[rel="icon"]');

        // Replace the current favicon with the new one
        if (existingFavicon) {
          // If a favicon exists, replace it
          document.head.removeChild(existingFavicon); // Remove the existing favicon
        }

          // Append the new favicon link element to the head
          document.head.appendChild(favicon);
        } catch (error) {
          console.error("Error changing favicon:", error);
        }
      }

      // Function to check if a string is a URL
      function isUrl(str) {
        try {
          new URL(str);
          return true;
        } catch (error) {
          return false;
        }
      }

      // Function to get MIME type from an ArrayBuffer
      function getMimeTypeFromArrayBuffer(buffer) {
        const view = new DataView(buffer);
        if (view.getUint16(0, false) == 0xffd8) {
          return "image/jpeg"; // JPEG format
        } else if (view.getUint32(0, false) == 0x89504e47) {
          return "image/png"; // PNG format
        } else if (view.getUint16(0, false) == 0x4949 || view.getUint16(0, false) == 0x4d4d) {
          return "image/tiff"; // TIFF format
        } else if (view.getUint16(0, false) == 0x424d) {
          return "image/bmp"; // BMP format
        }
        return null; // Unknown format
      }

      // Function to get MIME type from a Blob
      function getMimeTypeFromBlob(blob) {
        const url = URL.createObjectURL(blob);
        const img = new Image();

        img.onload = function () {
          URL.revokeObjectURL(url);
          // Clean up the Blob URL
        };

        img.src = url;

        // Return the MIME type detected by the browser
        return img.type || "image/png";
        // Default to 'image/png' if MIME type is not available
      }

      // Function to convert a Base64 string to a Blob
      function b64toBlob(b64Data) {
        const byteCharacters = atob(b64Data);
        const byteArrays = [];

        for (let i = 0; i < byteCharacters.length; i++) {
          byteArrays.push(byteCharacters.charCodeAt(i));
        }

        return new Blob([new Uint8Array(byteArrays)]);
      }

)


addFuncIfWeUseIt_OnKeyPress =
(

      var lastKeyPressed = "";

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

)

addFuncIfWeUseIt_GetKeyState =
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

)


addFuncIfWeUseIt_createCustomDropdown =
(

      // Function to create and populate the dropdown dynamically within a specified parent div
      function createCustomDropdown(parent, id, data, color, leftPos, topPos, width, height, onChangeFunction) {
        // Split the data string into an array of options
        const options = data.split("|").map((option) => option.trim());

        // Create a select element (dropdown)
        const selectElement = document.createElement("select");

        // Set attributes and styles for the select element
        selectElement.id = id;
        selectElement.style.width = width + "px";
        selectElement.style.height = height + "px";
        selectElement.style.left = leftPos + "px";
        selectElement.style.top = topPos + "px";
        selectElement.style.position = "absolute";
        selectElement.style.backgroundColor = color;
        selectElement.style.color = "white"; // Set text color to white
        selectElement.style.border = "none"; // Remove default border
        selectElement.style.borderRadius = "5px"; // Add border radius
        selectElement.style.padding = "5px"; // Add padding
        selectElement.style.cursor = "pointer"; // Change cursor on hover

        // Populate the dropdown with options
        options.forEach((optionText) => {
          const optionElement = document.createElement("option");
          optionElement.textContent = optionText;
          selectElement.appendChild(optionElement);
        });

        // Add event listener to handle option selection
        selectElement.addEventListener("change", function () {
          const selectedText = this.options[this.selectedIndex].textContent;
          onChangeFunction(selectedText);
        });

        // Append the dropdown to the specified parent element (Gui1 div)
        const parentElement = parent instanceof HTMLElement ? parent : document.getElementById(parent);
        if (parentElement) {
          parentElement.appendChild(selectElement);
        } else {
          console.error(``Parent element "${parent}" not found.``);
        }
      }

)


addFuncIfWeUseIt_StrLower =
(

      function StrLower(string) {
        return string.toLowerCase();
      }

)

addFuncIfWeUseIt_getDataFromAPI =
(

      async function getDataFromAPI(url) {
        try {
          const response = await fetch(url);
          if (!response.ok) {
            throw new Error("Network response was not ok");
          }
          const data = await response.json();
          return data;
        } catch (error) {
          console.error("Error fetching data:", error);
          return null;
        }
      }

)

addFuncIfWeUseIt_getDataFromJSON =
(

      function getDataFromJSON(jsonData, jsonPath) {
        const pathSegments = jsonPath.split("."); // Split the path into segments
        let currentData = jsonData; // Use jsonData directly (already an object)

        try {
          for (const segment of pathSegments) {
            if (currentData && typeof currentData === "object") {
              if (segment.includes("[") && segment.includes("]")) {
                // Handle array index notation e.g., "data[21].employee_name"
                const arrayIndex = segment.match(/\[(\d+)\]/); // Extract the array index
                if (arrayIndex) {
                  const arrayName = segment.substring(0, segment.indexOf("["));
                  const index = parseInt(arrayIndex[1]);
                  currentData = currentData[arrayName][index];
                } else {
                  return undefined; // Invalid array index notation
                }
              } else {
                // Handle regular object property notation e.g., "employee_name"
                currentData = currentData[segment];
              }
            } else {
              console.log("Invalid path segment or data type encountered.");
              return undefined;
            }
          }
        } catch (error) {
          console.error("Error accessing data:", error);
          return undefined;
        }

        return currentData;
      }

)

addFuncIfWeUseIt_createCheckbox =
(

      function createCheckbox(parent, id, label, isChecked, leftPos, topPos, checkboxFunction) {
        // Create checkbox container
        let checkboxContainer = document.createElement("div");
        checkboxContainer.style.position = "absolute";
        checkboxContainer.id = id;
        checkboxContainer.style.left = leftPos + "px";
        checkboxContainer.style.top = topPos + "px";
        parent.appendChild(checkboxContainer);

        // Create checkbox input element
        let checkboxInput = document.createElement("input");
        checkboxInput.type = "checkbox";

        checkboxInput.checked = isChecked;
        checkboxInput.style.marginRight = "8px"; // Spacing between checkbox and label
        checkboxInput.style.verticalAlign = "-2px"; // Align label vertically with checkbox
        checkboxContainer.appendChild(checkboxInput);

        // Create label for the checkbox
        let checkboxLabel = document.createElement("label");
        checkboxLabel.textContent = label;
        checkboxLabel.setAttribute("for", id); // Associate label with checkbox input
        checkboxContainer.appendChild(checkboxLabel);

        // Checkbox change event
        checkboxInput.addEventListener("change", function () {
          // Call the checkbox function with checkbox state
          checkboxFunction(checkboxInput.checked ? "1" : "0"); // Return "1" or "0" based on checkbox state
        });
      }

)

addFuncIfWeUseIt_createCustomIframe =
(

      function createCustomIframe(parentDiv, id, url, color, leftPos, topPos, width, height, round, onChangeFunction) {
        // Create a new iframe element
        const iframe = document.createElement("iframe");

        // Set iframe attributes
        iframe.id = id;
        iframe.src = url; // Set iframe source URL
        iframe.width = width;
        iframe.height = height;
        iframe.style.backgroundColor = color;
        iframe.style.border = "none";
        iframe.style.position = "absolute";
        iframe.style.left = leftPos + "px";
        iframe.style.top = topPos + "px";

        // Set border radius
        iframe.style.borderRadius = round + "px";

        // Set onChange event listener if provided
        if (typeof onChangeFunction === "function") {
          iframe.onload = function () {
            // Attach an event listener to the iframe's contentWindow for change events
            iframe.contentWindow.addEventListener("change", onChangeFunction);
          };
        }

        // Append the iframe to the specified parent div element
        parentDiv.appendChild(iframe);
      }

)

addFuncIfWeUseIt_OnMouseHold =
(

        function logMouseHoldStatus() {
          let isMouseDown = false;

          function handleMouseDown(event) {
            if (!isMouseDown) {
              isMouseDown = true;
              const holdCoords = ``${event.clientX}|${event.clientY}``;
              OnMouseHold(``hold|${holdCoords}``);
            }
          }

          function handleMouseUp(event) {
            if (isMouseDown) {
              isMouseDown = false;
              const releaseCoords = ``${event.clientX}|${event.clientY}``;
              OnMouseHold(``release|${releaseCoords}``);
            }
          }

          document.addEventListener("mousedown", handleMouseDown);
          document.addEventListener("mouseup", handleMouseUp);

          // Optional: Log mouse position continuously while mouse is held down
          document.addEventListener("mousemove", function (event) {
            if (isMouseDown) {
              const { clientX, clientY } = event;
              OnMouseHold(clientX + "|" + clientY);
            }
          });
        }

        // Call the function to start logging mouse hold status and sending notifications
        logMouseHoldStatus();

)

addFuncIfWeUseIt_AddIDE1 =
(

      function AddIDE(parent, xPos, yPos, w, h, id, font = 18, langName = "autohotkey", onChangeFunc, initialText = "") {
        var langTools = ace.require("ace/ext/language_tools");

        let Completer = {
          getCompletions: function (editor, session, pos, prefix, callback) {

            if (prefix.startsWith("p")) {
                // Continue executing if the prefix starts with "p"
            } else {
                // Return early if the prefix does not start with "p" and its length is not greater than 1
                if (prefix.length <= 1) {
                    callback(null, []); // Return an empty array of completions
                    return;
                }
            }

            let prefixLower = prefix.toLowerCase();
            let filteredTables = hth.filter(function (table) {
              return table.name.toLowerCase().startsWith(prefixLower);
            });
            // filteredTables.sort(function(a, b) {
            //     return a.name.length - b.name.length;
            // });
            let limitedTables = filteredTables; //.slice(-10);

            callback(
              null,
              limitedTables.map(function (table) {
                return {
                  caption: table.name,
                  value: table.name,
                };
              }`),
            `);
          },
        };
        let hth = [{ name: "#AllowSameLineComments" }, { name: "#ClipboardTimeout" }, { name: "#CommentFlag" }, { name: "#Delimiter" }, { name: "#DerefChar" }, { name: "#ErrorStdOut" }, { name: "#EscapeChar" }, { name: "#HotkeyInterval" }, { name: "#HotkeyModifierTimeout" }, { name: "#Hotstring" }, { name: "#If" }, { name: "#IfTimeout" }, { name: "#IfWinActive" }, { name: "#IfWinExist" }, { name: "#IfWinNotActive" }, { name: "#IfWinNotExist" }, { name: "#Include" }, { name: "#IncludeAgain" }, { name: "#InputLevel" }, { name: "#InstallKeybdHook" }, { name: "#InstallMouseHook" }, { name: "#KeyHistory" }, { name: "#LTrim" }, { name: "#MaxHotkeysPerInterval" }, { name: "#MaxMem" }, { name: "#MaxThreads" }, { name: "#MaxThreadsBuffer" }, { name: "#MaxThreadsPerHotkey" }, { name: "#MenuMaskKey" }, { name: "#NoEnv" }, { name: "#NoTrayIcon" }, { name: "#Persistent" }, { name: "#Requires" }, { name: "#SingleInstance" }, { name: "#UseHook" }, { name: "#Warn" }, { name: "#WinActivateForce" }, { name: "break" }, { name: "case" }, { name: "catch" }, { name: "continue" }, { name: "else" }, { name: "finally" }, { name: "for" }, { name: "gosub" }, { name: "goto" }, { name: "if" }, { name: "IfEqual" }, { name: "IfExist" }, { name: "IfGreater" }, { name: "IfGreaterOrEqual" }, { name: "IfInString" }, { name: "IfLess" }, { name: "IfLessOrEqual" }, { name: "IfMsgBox" }, { name: "IfNotEqual" }, { name: "IfNotExist" }, { name: "IfNotInString" }, { name: "IfWinActive" }, { name: "IfWinExist" }, { name: "IfWinNotActive" }, { name: "IfWinNotExist" }, { name: "Loop" }, { name: "return" }, { name: "switch" }, { name: "throw" }, { name: "try" }, { name: "until" }, { name: "while" }, { name: "__Call" }, { name: "__Delete" }, { name: "__Get" }, { name: "__New" }, { name: "__Set" }, { name: "ahk_class" }, { name: "ahk_exe" }, { name: "ahk_group" }, { name: "ahk_id" }, { name: "ahk_pid" }, { name: "and" }, { name: "base" }, { name: "ByRef" }, { name: "class" }, { name: "extends" }, { name: "false" }, { name: "Files" }, { name: "global" }, { name: "local" }, { name: "new" }, { name: "not" }, { name: "or" }, { name: "Parse" }, { name: "ParseInt" }, { name: "Read" }, { name: "Reg" }, { name: "static" }, { name: "true" }, { name: "A_AhkPath" }, { name: "A_AhkVersion" }, { name: "A_AppData" }, { name: "A_AppDataCommon" }, { name: "A_Args" }, { name: "A_AutoTrim" }, { name: "A_BatchLines" }, { name: "A_CaretX" }, { name: "A_CaretY" }, { name: "A_ComputerName" }, { name: "A_ComSpec" }, { name: "A_ControlDelay" }, { name: "A_CoordModeCaret" }, { name: "A_CoordModeMenu" }, { name: "A_CoordModeMouse" }, { name: "A_CoordModePixel" }, { name: "A_CoordModeToolTip" }, { name: "A_Cursor" }, { name: "A_DD" }, { name: "A_DDD" }, { name: "A_DDDD" }, { name: "A_DefaultGui" }, { name: "A_DefaultListView" }, { name: "A_DefaultMouseSpeed" }, { name: "A_DefaultTreeView" }, { name: "A_Desktop" }, { name: "A_DesktopCommon" }, { name: "A_DetectHiddenText" }, { name: "A_DetectHiddenWindows" }, { name: "A_EndChar" }, { name: "A_EventInfo" }, { name: "A_ExitReason" }, { name: "A_FileEncoding" }, { name: "A_FormatFloat" }, { name: "A_FormatInteger" }, { name: "A_Gui" }, { name: "A_GuiControl" }, { name: "A_GuiControlEvent" }, { name: "A_GuiEvent" }, { name: "A_GuiHeight" }, { name: "A_GuiWidth" }, { name: "A_GuiX" }, { name: "A_GuiY" }, { name: "A_Hour" }, { name: "A_IconFile" }, { name: "A_IconHidden" }, { name: "A_IconNumber" }, { name: "A_IconTip" }, { name: "A_Index" }, { name: "A_IPAddress1" }, { name: "A_IPAddress2" }, { name: "A_IPAddress3" }, { name: "A_IPAddress4" }, { name: "A_Is64bitOS" }, { name: "A_IsAdmin" }, { name: "A_IsCompiled" }, { name: "A_IsCritical" }, { name: "A_IsPaused" }, { name: "A_IsSuspended" }, { name: "A_IsUnicode" }, { name: "A_KeyDelay" }, { name: "A_KeyDelayPlay" }, { name: "A_KeyDuration" }, { name: "A_KeyDurationPlay" }, { name: "A_Language" }, { name: "A_LastKey" }, { name: "A_LastError" }, { name: "A_LineFile" }, { name: "A_LineNumber" }, { name: "A_ListLines" }, { name: "A_LoopField" }, { name: "A_LoopFileAttrib" }, { name: "A_LoopFileDir" }, { name: "A_LoopFileExt" }, { name: "A_LoopFileFullPath" }, { name: "A_LoopFileLongPath" }, { name: "A_LoopFileName" }, { name: "A_LoopFilePath" }, { name: "A_LoopFileShortName" }, { name: "A_LoopFileShortPath" }, { name: "A_LoopFileSize" }, { name: "A_LoopFileSizeKB" }, { name: "A_LoopFileSizeMB" }, { name: "A_LoopFileTimeAccessed" }, { name: "A_LoopFileTimeCreated" }, { name: "A_LoopFileTimeModified" }, { name: "A_LoopReadLine" }, { name: "A_LoopRegKey" }, { name: "A_LoopRegName" }, { name: "A_LoopRegSubKey" }, { name: "A_LoopRegTimeModified" }, { name: "A_LoopRegType" }, { name: "A_MDay" }, { name: "A_Min" }, { name: "A_MM" }, { name: "A_MMM" }, { name: "A_MMMM" }, { name: "A_Mon" }, { name: "A_MouseDelay" }, { name: "A_MouseDelayPlay" }, { name: "A_MSec" }, { name: "A_MyDocuments" }, { name: "A_Now" }, { name: "A_NowUTC" }, { name: "A_NumBatchLines" }, { name: "A_OSType" }, { name: "A_OSVersion" }, { name: "A_PriorHotkey" }, { name: "A_PriorKey" }, { name: "A_ProgramFiles" }, { name: "A_Programs" }, { name: "A_ProgramsCommon" }, { name: "A_PtrSize" }, { name: "A_RegView" }, { name: "A_ScreenDPI" }, { name: "A_ScreenHeight" }, { name: "A_ScreenWidth" }, { name: "A_ScriptDir" }, { name: "A_ScriptFullPath" }, { name: "A_ScriptHwnd" }, { name: "A_ScriptName" }, { name: "A_Sec" }, { name: "A_SendLevel" }, { name: "A_SendMode" }, { name: "A_Space" }, { name: "A_StartMenu" }, { name: "A_StartMenuCommon" }, { name: "A_Startup" }, { name: "A_StartupCommon" }, { name: "A_StoreCapsLockMode" }, { name: "A_StringCaseSense" }, { name: "A_Tab" }, { name: "A_Temp" }, { name: "A_ThisFunc" }, { name: "A_ThisHotkey" }, { name: "A_ThisLabel" }, { name: "A_ThisMenu" }, { name: "A_ThisMenuItem" }, { name: "A_ThisMenuItemPos" }, { name: "A_TickCount" }, { name: "A_TimeIdle" }, { name: "A_TimeIdleKeyboard" }, { name: "A_TimeIdleMouse" }, { name: "A_TimeIdlePhysical" }, { name: "A_TimeSincePriorHotkey" }, { name: "A_TimeSinceThisHotkey" }, { name: "A_TitleMatchMode" }, { name: "A_TitleMatchModeSpeed" }, { name: "A_UserName" }, { name: "A_WDay" }, { name: "A_WinDelay" }, { name: "A_WinDir" }, { name: "A_WorkingDir" }, { name: "A_YDay" }, { name: "A_Year" }, { name: "A_YWeek" }, { name: "A_YYYY" }, { name: "Clipboard" }, { name: "ClipboardAll" }, { name: "ComSpec" }, { name: "ErrorLevel" }, { name: "ProgramFiles" }, { name: "this" }, { name: "Abs" }, { name: "ACos" }, { name: "Array" }, { name: "Asc" }, { name: "ASin" }, { name: "ATan" }, { name: "Ceil" }, { name: "Chr" }, { name: "ComObjActive" }, { name: "ComObjArray" }, { name: "ComObjConnect" }, { name: "ComObjCreate" }, { name: "ComObject" }, { name: "ComObjError" }, { name: "ComObjFlags" }, { name: "ComObjGet" }, { name: "ComObjQuery" }, { name: "ComObjType" }, { name: "ComObjValue" }, { name: "Cos" }, { name: "DllCall" }, { name: "Exception" }, { name: "Exp" }, { name: "FileExist" }, { name: "FileOpen" }, { name: "Floor" }, { name: "Format" }, { name: "Func" }, { name: "getDataFromEndpoint" }, { name: "GetKeyName" }, { name: "GetKeySC" }, { name: "GetKeyState" }, { name: "GetKeyVK" }, { name: "Hotstring" }, { name: "Icon" }, { name: "IL_Add" }, { name: "IL_Create" }, { name: "IL_Destroy" }, { name: "InputHook" }, { name: "InStr" }, { name: "IsByRef" }, { name: "isConnectedToBackend" }, { name: "IsFunc" }, { name: "IsLabel" }, { name: "isMobileDevice" }, { name: "IsObject" }, { name: "Ln" }, { name: "LoadPicture" }, { name: "Log" }, { name: "LTrim" }, { name: "LV_Add" }, { name: "LV_Delete" }, { name: "LV_DeleteCol" }, { name: "LV_GetCount" }, { name: "LV_GetNext" }, { name: "LV_GetText" }, { name: "LV_Insert" }, { name: "LV_InsertCol" }, { name: "LV_Modify" }, { name: "LV_ModifyCol" }, { name: "LV_SetImageList" }, { name: "Max" }, { name: "MenuGetHandle" }, { name: "MenuGetName" }, { name: "Min" }, { name: "Mod" }, { name: "NumGet" }, { name: "NumPut" }, { name: "ObjAddRef" }, { name: "ObjBindMethod" }, { name: "ObjClone" }, { name: "ObjCount" }, { name: "ObjDelete" }, { name: "Object" }, { name: "ObjGetAddress" }, { name: "ObjGetBase" }, { name: "ObjGetCapacity" }, { name: "ObjHasKey" }, { name: "ObjInsert" }, { name: "ObjInsertAt" }, { name: "ObjLength" }, { name: "ObjMaxIndex" }, { name: "ObjMinIndex" }, { name: "ObjNewEnum" }, { name: "ObjPop" }, { name: "ObjPush" }, { name: "ObjRawGet" }, { name: "ObjRawSet" }, { name: "ObjRelease" }, { name: "ObjRemove" }, { name: "ObjRemoveAt" }, { name: "ObjSetBase" }, { name: "ObjSetCapacity" }, { name: "OnClipboardChange" }, { name: "OnError" }, { name: "OnExit" }, { name: "OnMessage" }, { name: "Ord" }, { name: "RegExMatch" }, { name: "RegExReplace" }, { name: "RegisterCallback" }, { name: "Round" }, { name: "RTrim" }, { name: "StoreLocally" }, { name: "SB_SetIcon" }, { name: "SB_SetParts" }, { name: "SB_SetText" }, { name: "Sin" }, { name: "Sqrt" }, { name: "StrGet" }, { name: "StrLen" }, { name: "StrLower" }, { name: "StrPut" }, { name: "StrReplace" }, { name: "StrSplit" }, { name: "SubStr" }, { name: "Tan" }, { name: "Title" }, { name: "Trim" }, { name: "TV_Add" }, { name: "TV_Delete" }, { name: "TV_Get" }, { name: "TV_GetChild" }, { name: "TV_GetCount" }, { name: "TV_GetNext" }, { name: "TV_GetParent" }, { name: "TV_GetPrev" }, { name: "TV_GetSelection" }, { name: "TV_GetText" }, { name: "TV_Modify" }, { name: "TV_SetImageList" }, { name: "VarSetCapacity" }, { name: "WinActive" }, { name: "WinExist" }, { name: "AutoTrim" }, { name: "BlockInput" }, { name: "Click" }, { name: "ClipWait" }, { name: "Control" }, { name: "ControlClick" }, { name: "ControlFocus" }, { name: "ControlGet" }, { name: "ControlGetFocus" }, { name: "ControlGetPos" }, { name: "ControlGetText" }, { name: "ControlMove" }, { name: "ControlSend" }, { name: "ControlSendRaw" }, { name: "ControlSetText" }, { name: "CoordMode" }, { name: "Critical" }, { name: "DetectHiddenText" }, { name: "DetectHiddenWindows" }, { name: "Drive" }, { name: "DriveGet" }, { name: "DriveSpaceFree" }, { name: "Edit" }, { name: "Endpoint" }, { name: "EnvAdd" }, { name: "EnvDiv" }, { name: "EnvGet" }, { name: "EnvMult" }, { name: "EnvSet" }, { name: "EnvSub" }, { name: "EnvUpdate" }, { name: "Exit" }, { name: "ExitApp" }, { name: "FileAppend" }, { name: "FileCopy" }, { name: "FileCopyDir" }, { name: "FileCreateDir" }, { name: "FileCreateShortcut" }, { name: "FileDelete" }, { name: "FileEncoding" }, { name: "FileGetAttrib" }, { name: "FileGetShortcut" }, { name: "FileGetSize" }, { name: "FileGetTime" }, { name: "FileGetVersion" }, { name: "FileInstall" }, { name: "FileMove" }, { name: "FileMoveDir" }, { name: "FileRead" }, { name: "FileReadLine" }, { name: "FileRecycle" }, { name: "FileRecycleEmpty" }, { name: "FileRemoveDir" }, { name: "FileSelectFile" }, { name: "FileSelectFolder" }, { name: "FileSetAttrib" }, { name: "FileSetTime" }, { name: "FormatTime" }, { name: "getDataFromAPI" }, { name: "getDataFromJSON" }, { name: "GetKeyState" }, { name: "getUrlParams" }, { name: "GroupActivate" }, { name: "GroupAdd" }, { name: "GroupClose" }, { name: "GroupDeactivate" }, { name: "Gui" }, { name: "GuiControl" }, { name: "GuiControlGet" }, { name: "Hotkey" }, { name: "ImageSearch" }, { name: "IniDelete" }, { name: "IniRead" }, { name: "IniWrite" }, { name: "Input" }, { name: "InputBox" }, { name: "KeyHistory" }, { name: "KeyWait" }, { name: "ListHotkeys" }, { name: "ListLines" }, { name: "ListVars" }, { name: "Menu" }, { name: "MouseClick" }, { name: "MouseClickDrag" }, { name: "MouseGetPos" }, { name: "MouseMove" }, { name: "MsgBox" }, { name: "OnExit" }, { name: "OutputDebug" }, { name: "Pause" }, { name: "PixelGetColor" }, { name: "PixelSearch" }, { name: "PostMessage" }, { name: "Process" }, { name: "Progress" }, { name: "Random" }, { name: "RegDelete" }, { name: "RegRead" }, { name: "RegWrite" }, { name: "Reload" }, { name: "reloadWithParams" }, { name: "Run" }, { name: "RunAs" }, { name: "RunWait" }, { name: "Send" }, { name: "SendEvent" }, { name: "SendInput" }, { name: "SendLevel" }, { name: "SendMessage" }, { name: "SendMode" }, { name: "SendPlay" }, { name: "SendRaw" }, { name: "SetBatchLines" }, { name: "SetCapsLockState" }, { name: "SetControlDelay" }, { name: "SetDefaultMouseSpeed" }, { name: "SetEnv" }, { name: "SetFormat" }, { name: "SetKeyDelay" }, { name: "SetMouseDelay" }, { name: "SetNumLockState" }, { name: "SetRegView" }, { name: "SetScrollLockState" }, { name: "SetStoreCapsLockMode" }, { name: "SetTimer" }, { name: "SetTitleMatchMode" }, { name: "SetWinDelay" }, { name: "SetWorkingDir" }, { name: "Shutdown" }, { name: "Sleep" }, { name: "Sort" }, { name: "SoundBeep" }, { name: "SoundGet" }, { name: "SoundGetWaveVolume" }, { name: "SoundPlay" }, { name: "SoundSet" }, { name: "SoundSetWaveVolume" }, { name: "SplashImage" }, { name: "SplashTextOff" }, { name: "SplashTextOn" }, { name: "SplitPath" }, { name: "StatusBarGetText" }, { name: "StatusBarWait" }, { name: "StringCaseSense" }, { name: "StringGetPos" }, { name: "StringLeft" }, { name: "StringLen" }, { name: "StringLower" }, { name: "StringMid" }, { name: "StringReplace" }, { name: "StringRight" }, { name: "StringSplit" }, { name: "StringTrimLeft" }, { name: "StringTrimRight" }, { name: "StringUpper" }, { name: "Suspend" }, { name: "SysGet" }, { name: "Thread" }, { name: "ToolTip" }, { name: "Transform" }, { name: "TrayTip" }, { name: "URLDownloadToFile" }, { name: "WinActivate" }, { name: "WinActivateBottom" }, { name: "WinClose" }, { name: "WinGet" }, { name: "WinGetActiveStats" }, { name: "WinGetActiveTitle" }, { name: "WinGetClass" }, { name: "WinGetPos" }, { name: "WinGetText" }, { name: "WinGetTitle" }, { name: "WinHide" }, { name: "WinKill" }, { name: "WinMaximize" }, { name: "WinMenuSelectItem" }, { name: "WinMinimize" }, { name: "WinMinimizeAll" }, { name: "WinMinimizeAllUndo" }, { name: "WinMove" }, { name: "WinRestore" }, { name: "WinSet" }, { name: "WinSetTitle" }, { name: "WinShow" }, { name: "WinWait" }, { name: "WinWaitActive" }, { name: "WinWaitClose" }, { name: "WinWaitNotActive" }];


)

addFuncIfWeUseIt_AddIDE2 =
(

        // Create a new div element for the editor
        var editorDiv = document.createElement("div");
        editorDiv.id = id;
        editorDiv.style.position = "absolute";
        editorDiv.style.left = xPos + "px";
        editorDiv.style.top = yPos + "px";
        editorDiv.style.width = w + "px";
        editorDiv.style.height = h + "px";
        editorDiv.style.fontSize = font + "px";

        // Append the editor div to the parent
        parent.appendChild(editorDiv);

        // Create a new editor instance inside the div
        var editor = ace.edit(id);
        editor.setTheme("ace/theme/monokai");
        editor.session.setMode("ace/mode/" + langName);
        // editor.setOptions({
        //   enableBasicAutocompletion: true,
        //   enableLiveAutocompletion: true,
        //   behavioursEnabled: false, // Disable auto-pairing of characters
        // });

        editor.setOptions({
          enableBasicAutocompletion: false,
          enableSnippets: false,
          enableLiveAutocompletion: true,
          behavioursEnabled: false,
          showPrintMargin: false,
        });

        langTools.setCompleters([]);
        langTools.addCompleter(Completer);

        // Set initial text if provided
        if (initialText) {
          editor.setValue(initialText, -1); // -1 to move cursor to the beginning
        }

        // Apply CSS styles for the editor
        var css = ``
          body {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            background-color: #1a1818;
            color: #ffffff;
            display: flex;
            flex-direction: column;
            align-items: center;
            height: 100vh;
            margin: 0;
          }

          .controls {
            display: flex;
            justify-content: center;
            gap: 1rem;
            margin: 1rem;
            padding: 1rem;
          }

          button {
            padding: 0.7rem;
            font-size: 1.2em;
            cursor: pointer;
            background-color: #bababa;
            color: #000000;
            border: none;
            border-radius: 0.2rem;
            transition: background-color 0.3s;
          }

          button:hover {
            background-color: #27ae60;
          }

          #${id} {
            width: ${w}px;
            height: ${h}px;
            font-size: 1em;
            border-radius: 0.3rem;
          }

          #result {
            margin-top: 1rem;
            font-size: 1.2em;
            color: #999c9a;
            font-weight: bold;
            text-align: center;
          }

          .ace-monokai .ace_marker-layer .ace_active-line {
            background-color: #103010 !important;
          }

          .ace-monokai {
            background-color: #121212 !important;
            color: #f8f8f2;
          }

          .ace-monokai .ace_gutter {
            background: #204020 !important;
            color: #cbcdc3 !important;
          }

          .ace-monokai .ace_gutter-active-line {
            background-color: transparent !important;
          }

          .ace-monokai .ace_entity.ace_name.ace_tag,
          .ace-monokai .ace_keyword,
          .ace-monokai .ace_meta.ace_tag,
          .ace-monokai .ace_storage {
            color: #40a0e0 !important;
          }

          .ace-monokai .ace_entity.ace_name.ace_function,
          .ace-monokai .ace_entity.ace_other,
          .ace-monokai .ace_entity.ace_other.ace_attribute-name,
          .ace-monokai .ace_variable {
            color: #ff80df !important;
          }

          .ace-monokai .ace_comment {
            color: #40d080 !important;
          }

          .ace-monokai .ace_string {
            color: #ffa0a0 !important;
          }

          .ace-monokai .ace_punctuation,
          .ace-monokai .ace_punctuation.ace _tag {
            color: #ffa0a0 !important;
          }

          *::-webkit-scrollbar {
            width: 1em;
          }

          *::-webkit-scrollbar-track {
            box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
          }

          *::-webkit-scrollbar-thumb {
            background-color: darkgrey;
            outline: 1px solid slategrey;
          }
        ``;

        var style = document.createElement("style");
        style.type = "text/css";
        if (style.styleSheet) {
          style.styleSheet.cssText = css;
        } else {
          style.appendChild(document.createTextNode(css));
        }
        document.head.appendChild(style);

        // Bind change event listener to the editor
        editor.getSession().on("change", function () {
          var code = editor.getValue();
          if (typeof onChangeFunc === "function") {
            onChangeFunc(code);
          }
        });
      }

)


addFuncIfWeUseIt_StrSplit =
(

function StrSplit(inputStr, delimiter, num) {
    // Check if inputStr is a valid string
    if (typeof inputStr !== 'string') {
        return ''; // Return empty string for invalid input
    }

    // Split the input string based on the delimiter
    const parts = inputStr.split(delimiter);

    // Return the part specified by the num parameter (1-based index)
    if (num > 0 && num <= parts.length) {
        return parts[num - 1]; // Return the specified part (0-based index)
    } else {
        return ''; // Return an empty string if num is out of range
    }
}

)

addFuncIfWeUseIt_RegExReplace =
(

      // Function to simulate AutoHotkey's RegExReplace in JavaScript
      function RegExReplace(inputStr, regexPattern, replacement) {
          // Create a regular expression object using the provided pattern
          const regex = new RegExp(regexPattern, 'g'); // 'g' flag for global match

          // Use the replace() method to perform the regex replacement
          const resultStr = inputStr.replace(regex, replacement);

          // Return the modified string
          return resultStr;
      }

)


addFuncIfWeUseIt_runPyCode =
(

        async function runPyCode(code) {
            return new Promise((resolve, reject) => {
                const checkReady = () => {
                    if (window.runPythonCode) {
                        resolve(window.runPythonCode(code));
                    } else {
                        setTimeout(checkReady, 100);
                    }
                };
                checkReady();
            });
        }

)

addFuncIfWeUseIt_runHTML =
(


      function runHTML(parent, id, scale, leftPos, topPos, width, height, HTMLcode) {
        // Calculate the scale based on the actual width and height of the iframe
        const scaleX = width / window.innerWidth;
        const scaleY = height / window.innerHeight;
        const scaleFactor = Math.min(scaleX, scaleY);

        // Calculate the scaled width and height to maintain aspect ratio
        const scaledWidth = Math.floor(window.innerWidth * scaleFactor);
        const scaledHeight = Math.floor(window.innerHeight * scaleFactor);

        // Calculate offsets to center the content
        const offsetX = Math.floor((width - scaledWidth) / 2);
        const offsetY = Math.floor((height - scaledHeight) / 2);

        // Create iframe element
        let iframeElement = document.createElement("iframe");

        // Set attributes
        iframeElement.id = id;
        iframeElement.style.position = "absolute";
        iframeElement.style.left = leftPos + offsetX + "px";
        iframeElement.style.top = topPos + offsetY + "px";
        iframeElement.style.width = window.innerWidth + "px"; // Set the iframe's viewport width
        iframeElement.style.height = window.innerHeight + "px"; // Set the iframe's viewport height
        iframeElement.style.transformOrigin = "top left";
        iframeElement.style.transform = ``scale(${scaleFactor})``;

        // Set srcdoc attribute to load content
        iframeElement.srcdoc = HTMLcode;

        // Append iframe to parent element
        parent.appendChild(iframeElement);
      }


)


addFuncIfWeUseIt_SortLikeAHK =
(

function SortLikeAHK(varName, options = "") {
    let delimiter = '\n'; // Default delimiter
    let delimiterIndex = options.indexOf('D');

    if (delimiterIndex !== -1) {
        let delimiterChar = options[delimiterIndex + 1];
        delimiter = delimiterChar === '' ? ',' : delimiterChar;
    }

    let items = varName.split(new RegExp(delimiter === ',' ? ',' : '\\' + delimiter));

    // Remove empty items and trim whitespace
    items = items.filter(item => item.trim() !== '');

    // Apply sorting based on options
    if (options.includes('N')) {
        // Numeric sort
        items.sort((a, b) => parseInt(a, 10) - parseInt(b, 10));
    } else if (options.includes('Random')) {
        // Random sort
        for (let i = items.length - 1; i > 0; i--) {
            const j = Math.floor(Math.random() * (i + 1));
            [items[i], items[j]] = [items[j], items[i]];
        }
    } else {
        // Default alphabetical sort
        items.sort((a, b) => {
            const keyA = options.includes('C') ? a : a.toLowerCase();
            const keyB = options.includes('C') ? b : b.toLowerCase();
            if (keyA < keyB) return -1;
            if (keyA > keyB) return 1;
            return 0;
        });
    }

    // Reverse if 'R' option is present
    if (options.includes('R')) {
        items.reverse();
    }

    // Remove duplicates if 'U' option is present
    if (options.includes('U')) {
        const seen = new Map();
        items = items.filter(item => {
            const key = options.includes('C') ? item : item.toLowerCase();
            if (!seen.has(key)) {
                seen.set(key, item);
                return true;
            }
            return false;
        });
    }

    // Join the sorted items back into a string
    const sortedVar = items.join(delimiter === ',' ? ',' : '\n');

    return sortedVar;
}

)


allFuncThatWeNeedToUse := ""
ifWeUseAddIDEWeWillAddTheLinkInTheHTMLfile := ""
ifWeUseMsgboxWeWillAddTheLinkInTheHTMLfile := ""
if (Instr(jsCode, "showCustomMessageBox(")) or (Instr(jsCode, "showCustomMessageBox ("))
{
allFuncThatWeNeedToUse .= addFuncIfWeUseIt_showCustomMessageBox . "`n"
ifWeUseMsgboxWeWillAddTheLinkInTheHTMLfile =
(
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
)
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
if (Instr(jsCode, "MouseGetPos(")) or (Instr(jsCode, "MouseGetPos ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_MouseGetPos . "`n"
}
if (Instr(jsCode, "SoundPlay(")) or (Instr(jsCode, "SoundPlay ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_SoundPlay . "`n"
}
if (Instr(jsCode, "StoreLocally(")) or (Instr(jsCode, "StoreLocally ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_StoreLocally . "`n"
}
if (Instr(jsCode, "createToggleSwitch(")) or (Instr(jsCode, "createToggleSwitch ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_createToggleSwitch . "`n"
}
if (Instr(jsCode, "getUrlParams(")) or (Instr(jsCode, "getUrlParams ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_getUrlParams . "`n"
}
if (Instr(jsCode, "reloadWithParams(")) or (Instr(jsCode, "reloadWithParams ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_reloadWithParams . "`n"
}
if (Instr(jsCode, "PlayVideoFromBase64(")) or (Instr(jsCode, "PlayVideoFromBase64 ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_PlayVideoFromBase64 . "`n"
}
if (Instr(jsCode, "PlayVideoFromUrl(")) or (Instr(jsCode, "PlayVideoFromUrl ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_PlayVideoFromUrl . "`n"
}
if (Instr(jsCode, "PlayYoutubeVid(")) or (Instr(jsCode, "PlayYoutubeVid ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_PlayYoutubeVid . "`n"
}
if (Instr(jsCode, "changeFavicon(")) or (Instr(jsCode, "changeFavicon ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_changeFavicon . "`n"
}
if (Instr(jsCode, "OnKeyPress(")) or (Instr(jsCode, "OnKeyPress ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_OnKeyPress . "`n"
}
if (Instr(jsCode, "GetKeyState(")) or (Instr(jsCode, "GetKeyState ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_GetKeyState . "`n"
}
if (Instr(jsCode, "createCustomDropdown(")) or (Instr(jsCode, "createCustomDropdown ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_createCustomDropdown . "`n"
}
if (Instr(jsCode, "StrLower(")) or (Instr(jsCode, "StrLower ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_StrLower . "`n"
}
if (Instr(jsCode, "getDataFromAPI(")) or (Instr(jsCode, "getDataFromAPI ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_getDataFromAPI . "`n"
}
if (Instr(jsCode, "getDataFromJSON(")) or (Instr(jsCode, "getDataFromJSON ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_getDataFromJSON . "`n"
}
if (Instr(jsCode, "createCheckbox(")) or (Instr(jsCode, "createCheckbox ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_createCheckbox . "`n"
}
if (Instr(jsCode, "createCustomIframe(")) or (Instr(jsCode, "createCustomIframe ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_createCustomIframe . "`n"
}
if (Instr(jsCode, "StrSplit(")) or (Instr(jsCode, "StrSplit ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_StrSplit . "`n"
}
if (Instr(jsCode, "RegExReplace(")) or (Instr(jsCode, "RegExReplace ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_RegExReplace . "`n"
}
if (Instr(jsCode, "runHTML(")) or (Instr(jsCode, "runHTML ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_runHTML . "`n"
}
if (Instr(jsCode, "SortLikeAHK(")) or (Instr(jsCode, "SortLikeAHK ("))
{
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_SortLikeAHK . "`n"
}
if (Instr(jsCode, "AddIDE(")) or (Instr(jsCode, "AddIDE ("))
{
ifWeUseAddIDEWeWillAddTheLinkInTheHTMLfile =
(

<!-- Include Ace Editor CDN -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ace/1.32.2/ace.js" integrity="sha512-JLIRlxWh96sND3uUgI2RVHZJpgkWHg3+xoUY8XkgTPKpqRaqdk7zD/ck/XHXFSMW84o6GrP67dlqN3b98NB/yA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ace/1.4.12/ext-language_tools.js" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

)
    allFuncThatWeNeedToUse .= addFuncIfWeUseIt_AddIDE1 . "`n" . addFuncIfWeUseIt_AddIDE2 . "`n"
}
regularOrBrythonBodyINNIT := "<body>"
if (Instr(jsCode, "runPyCode(")) or (Instr(jsCode, "runPyCode ("))
{
ifWeUseBrythonWeWillAddTheLinkInTheHTMLfile =
(

        <script src="https://cdn.jsdelivr.net/npm/brython@3.10.5/brython.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/brython@3.10.5/brython_stdlib.js"></script>

)

regularOrBrythonBodyINNIT =
(
    <body onload="brython()">
        <script type="text/python">
            import io
            import sys
            from browser import document, window

            def runPythonCode(code):
                try:
                    # Redirect stdout to capture output
                    sys.stdout = io.StringIO()
                    exec(code)
                    # Get the captured output
                    output = sys.stdout.getvalue()
                    # Reset stdout
                    sys.stdout = sys.__stdout__
                    return output
                except Exception as e:
                    return f"Error: {str(e)}"

            # Expose the runPythonCode function to the browser's window object
            window.runPythonCode = runPythonCode
        </script>



)

allFuncThatWeNeedToUse .= addFuncIfWeUseIt_runPyCode . "`n"
}
    allFuncThatWeNeedToUseOnMouseHold := ""
if (Instr(jsCode, "OnMouseHold(")) or (Instr(jsCode, "OnMouseHold ("))
{
    allFuncThatWeNeedToUseOnMouseHold := addFuncIfWeUseIt_OnMouseHold . "`n"
}


addFuncIfWeUseIt_AllCanvasFunctions =
(

      // Function to draw a rectangle with rounded corners on the canvas
      function drawRoundedRectangle(ctx, x, y, width, height, radius, fillColor, id) {
        // Draw the rounded rectangle
        ctx.fillStyle = fillColor;
        ctx.beginPath();
        ctx.moveTo(x + radius, y);
        ctx.arcTo(x + width, y, x + width, y + height, radius);
        ctx.arcTo(x + width, y + height, x, y + height, radius);
        ctx.arcTo(x, y + height, x, y, radius);
        ctx.arcTo(x, y, x + width, y, radius);
        ctx.closePath();
        ctx.fill();

        // Return the rectangle information
        return { id: id, x: x, y: y, width: width, height: height, radius, fillColor: fillColor };
      }

      // Function to update the position and size of a rectangle
      function updateRectangle(id, x, y, width, height) {
        const index = rectangles.findIndex((rectangle) => rectangle.id === id);
        if (index !== -1) {
          rectangles[index].x = x;
          rectangles[index].y = y;
          rectangles[index].width = width;
          rectangles[index].height = height;
        }
      }

      // Function to update the color of a rectangle
      function updateRectangleColor(id, color) {
        const index = rectangles.findIndex((rectangle) => rectangle.id === id);
        if (index !== -1) {
          rectangles[index].fillColor = color;
        }
      }

      // Function to redraw all rectangles on the canvas
      function redrawCanvas() {
        ctx.clearRect(0, 0, canvas.width, canvas.height); // Clear the canvas
        rectangles.forEach((rectangle) => {
          drawRoundedRectangle(ctx, rectangle.x, rectangle.y, rectangle.width, rectangle.height, rectangle.radius, rectangle.fillColor, rectangle.id);
        });
      }

)

if (ifWeUseCanvas = 1)
{
allFuncThatWeNeedToUse .= addFuncIfWeUseIt_AllCanvasFunctions . "`n"
}



upCode1 =
(
<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>%filenameOfHTH%</title>
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
    %ifWeUseMsgboxWeWillAddTheLinkInTheHTMLfile%

    %ifWeUseAddIDEWeWillAddTheLinkInTheHTMLfile%

    %ifWeUseBrythonWeWillAddTheLinkInTheHTMLfile%

  </head>
  %regularOrBrythonBodyINNIT%
    <script>

      %TextData%

      %base64ImageData%

      %base64soundList%

      %base64iconList%

      %base64VideoData%

      // JavaScript equivalent code with variables

      function changeFaviconAtTheBeginning(faviconUrl) {
        // Create a new favicon link element
        const newFavicon = document.createElement("link");
        newFavicon.rel = "icon";
        newFavicon.href = faviconUrl;

        // Get the current favicon element (if exists)
        const existingFavicon = document.querySelector('link[rel="icon"]');

        // Replace the current favicon with the new one
        if (existingFavicon) {
          // If a favicon exists, replace it
          document.head.removeChild(existingFavicon); // Remove the existing favicon
        }

        // Append the new favicon to the head
        document.head.appendChild(newFavicon);
      }

      // Call the function with the desired favicon URL
      changeFaviconAtTheBeginning("https://i.ibb.co/Jpty1B8/305182938-1a0efe63-726e-49ca-a13c-d0ed627f2ea7.png");

      %allFuncThatWeNeedToUse%

)

upCode2 =
(

      // Single async function to structure the entire script
      async function runScript() {
        // Declare and assign a variable

        %allFuncThatWeNeedToUseOnMouseHold%

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

lastJscodeFixYAAAAAA := ""
Loop, Parse, jsCode, `n, `r
{
if (A_LoopField = "      ")
{

}
else
{
lastJscodeFixYAAAAAA .= A_LoopField . "`n"
}
}

StringTrimRight, lastJscodeFixYAAAAAA, lastJscodeFixYAAAAAA, 1

jsCode := lastJscodeFixYAAAAAA

jsCode := RegExReplace(RegExReplace(jsCode, "^\h+$"), "\n\v+", "`n`r")

jsCode := StrReplace(jsCode, "`r", "`n")


if (webHTH = 1)
{
FileAppend, %jsCode%, %param3NameOfwebHTHfile%
ExitApp
}
else
{
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

}
Return

#if






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
