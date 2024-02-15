
FileRead, data, C:\Users\The_M\OneDrive\Desktop\GitHub Projects\AHK-to-js\AHK-to-js\data.txt
wordNum := 0
Loop, Parse, data, " "
{
wordNum%A_Index% := A_LoopField
wordNum++
}

Random, ran, 1, %wordNum%

endText := ""
getNextWordNum := 1

startWord := wordNum%ran%
;MsgBox, % startWord
endText .= startWord . " "

Loop, 6
{
getNextWord := 0
nextWordsNum := 0
Loop, Parse, data, " "
{
if (getNextWord > 0)
{
nextWordsNum++
nextWord%nextWordsNum% := A_LoopField
}
if (A_LoopField = startWord)
{
getNextWord++
}
}

Random, ran, 1, %nextWordsNum%
endText .= nextWord%ran% . " "
startWord := nextWord%ran%
}
StringTrimRight, endText, endText, 1
;MsgBox, |%endText%|

indexWord := 0
Loop, Parse, data, " "
{
indexWord++
howLongWord%indexWord% := 0
Loop, Parse, A_LoopField
{
howLongWord%indexWord%++
}
}


checkLenWords := 0
Loop, % indexWord
{
if (howLongWord%A_Index% >= checkLenWords)
{
checkLenWords := howLongWord%A_Index%
}
}
;MsgBox, % checkLenWords
checkLenWords := checkLenWords + 1

;text := "hello man is some text lets see if you can type fast then you can see how fast can you typed and ist done"
text := endText
if (isMobileDevice())
{
text := "Ahk is the best"
}
else
{
text := "AHK is the Best"

}

howMany := 0
Loop, Parse, text
{
howMany++
}
howManyWords := 0
Loop, Parse, text, " "
{
howManyWords++
}


x := 10
y := 10

borderX := Floor(A_ScreenWidth / 2)



w2 := borderX
;MsgBox, % borderX
w := borderX + 20

byWhatSizeBorderX := (14 + 3) * checkLenWords
;MsgBox, % byWhatSizeBorderX
Gui, Font, s18
Loop, Parse, text
{

v := "l" . A_Index
Gui, Add, Text, x%x% y%y% w%w2% h300 v%v%, %A_LoopField%

x := x + 14 + 3
if (x >= borderX - byWhatSizeBorderX) && (A_LoopField = " ")
{
y := y + 50
x := 10
}


}

Gui, Show, h600 w%w%
Gui, Add, Picture, x300 y300 vImage1, 20240213205549.png
if (isMobileDevice())
{
Gui, Add, Edit, x10 y300 gEdit vEdit1, Type Here...
}
Gui, Add, Button, x10 y360 gNew, New
pos := 0



varWrong := 0
varRight := 0


onceTimerStart := 0
done := 0
IsBackspace := 0
comeFromEdit := 0
return

New:
Reload
Return

Edit:
comeFromEdit := 1
;MsgBox, % A_GuiControl
EditText := A_GuiControl
Loop, Parse, EditText
{
EditText := A_LoopField
}
gosub, OnKeyPress
Return



Backspace::

IsBackspace := 1
gosub, OnKeyPress
IsBackspace := 0
Return


OnKeyPress:
if (isMobileDevice())
{
if (comeFromEdit = 1)
{
AThisHotkey := EditText
}
else
{
AThisHotkey := A_ThisHotkey
}
}
else
{
AThisHotkey := A_ThisHotkey
}

if (done = 0)
{
onceTimerStart++
if (onceTimerStart = 1)
{
StartTime := A_TickCount
}



if (IsBackspace = 1) && (pos >= 0)
{
if (pos = 0)
{
return
}
v := "l" . pos
GuiControl, Font, %v%, cffffff
pos--

varWrong--
if (varWrong <= 0)
{
varWrong := 0
}
IsBackspace := 0
return
}

pos++


; Get the character at the specified position
char := SubStr(text, pos, 1)
;MsgBox, %char% %A_ThisHotkey%


v := "l" . pos
if (char = AThisHotkey)
{

varRight++

GuiControl, Font, %v%, c00ff08
}
else
{
varWrong++
GuiControl, Font, %v%, cff1e00
}
OutputDebug, Character at position %pos% : %char%

if (pos = howMany)
{
ElapsedTime := A_TickCount - StartTime


ms := ElapsedTime
timeTookInMS := ms
; Calculate the components
hours := Floor(ms / 3600000)
ms := Mod(ms, 3600000)
minutes := Floor(ms / 60000)
ms := Mod(ms, 60000)
seconds := Floor(ms / 1000)
milliseconds := Mod(ms, 1000)

; Display the result
ElapsedTime123 := ""
ElapsedTime123 .= hours . "h " . minutes . "m " . seconds . "s " . milliseconds . "ms"


percentage := Round((varRight / (varWrong + varRight)) * 100)

msgCorrct := "You are " . percentage . "%" . " correct"


words := howManyWords


;MsgBox, % timeTookInMS
; Convert milliseconds to minutes
timeTookInMin := timeTookInMS / 60000

; Calculate words per minute (WPM)
WPM := (words / timeTookInMin)

WPM := Floor(WPM)

MsgBox, done in %ElapsedTime123% and %msgCorrct%`nWords per minute: %WPM%
done := 1
}
}

Return



!L::
ExitApp
Return
