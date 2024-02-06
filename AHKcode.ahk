
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


