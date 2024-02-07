

StartTime := A_TickCount

MsgBox, % A_Min
Sleep, 420
MsgBox, % A_TimeIdle
MsgBox, % A_TickCount


var := "hey whats up"

FileAppend, %var%, file.txt



gosub, man



if (A_IsTranspiled = 1)
{
; do something if its transpiled
MsgBox, Yes
}
else
{
; do something if its not transpiled
MsgBox, No
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; random numbers whit no repetition
N := 10
MIN := 1
MAX := 10


Loop, % N
{
i := A_Index
loop
{
Random, R, %MIN%, %MAX%
j := Index_%R%

if (j >= 1) && (j <= i - 1)
{
if (R_%j% = R)
{
continue
}
}

Index_%R% := i
R_%i% := R
break
}
}

nnn := 1
outTestRanNums := ""
Loop, % N
{
	; add name here
    hello%nnn% := R_%nnn%
	outTestRanNums .= R_%nnn% . " "
    nnn++
}
StringTrimRight, outTestRanNums, outTestRanNums, 1
MsgBox, %outTestRanNums%
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




hi1()
{
MsgBox, 1
}

hi2()
{
MsgBox, 2
}

hi3()
{
MsgBox, 3
}

hi4()
{
MsgBox, 4
}

hi5()
{
MsgBox, 5
}

hi6()
{
MsgBox, 6
}

hi7()
{
MsgBox, 7
}

hi8()
{
MsgBox, 8
}

hi9()
{
MsgBox, 9
}

hi10()
{
MsgBox, 10
}

hi := "hi" . hello1

%hi%()






isPalindrome(word)
{
word := Trim(word)

normalWord := word

; get the lenght of the word
wordLen := 0
Loop, Parse, word
{
wordLen++
}
ReversedWord := ""
Loop, % wordLen
{
last := ""
Loop, Parse, word
{
last := A_LoopField
}
StringTrimRight, word, word, 1

ReversedWord .= last
} ; end of Loop, % wordLen
;MsgBox, % ReversedWord

if (normalWord = ReversedWord)
{
return "true"
}
else
{
return "false"
}


} ;  end of func


; tests

testWords := "bob, hello, racecar"
testWords := StrReplace(testWords, ", ", "|")
Loop, Parse, testWords, "|"
{


MsgBox, % isPalindrome(A_LoopField)

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
ElapsedTime123 .= hours . "h " . minutes . "m " . seconds . "s " . milliseconds . "ms"

MsgBox, % ElapsedTime123


ExitApp

return

man:
MsgBox, hi
Return
