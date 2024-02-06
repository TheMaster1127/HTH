"This is a new project called AHK-to-js."

This is only for AutoHotKey V1.

This project is still in development.

This is a transpiler from AHK to JS with HTML in a full HTML file.

This tries to simulate AHK inside a browser on ANY device.

Documentation coming soon. Just one thing: if you want to try it now, after an `IfMsgBox` at the end, add `} ; end of ifmsgbox`

Example:
```ahk
IfMsgBox, Yes
{
	
}
else
{
	
} ; end of ifmsgbox

```
or
```ahk
IfMsgBox, Yes
{
	
} ; end of ifmsgbox

```
You need to add AHK code in `AHKcode.ahk` then run `AHK to js.ahk` and you get `temp.html`.

So far we can do:
- Functions
- If, else, else if
- Random
- Sleep
- Msgbox 
- OutputDebug = console.log in JS
- Loop
- Loop, Parse
- you can do var++
- you need to do var := 0 this was an example you can't do `var = something` also we only have `var := .= += -= *=`
- you can add comments in AHK like normal but sometimes it might translate the code in the comments idk don't trust comments
- StringTrimRight
- StringTrimLeft

Some of them haven't been tested but should work:
- Abs
- ACos
- ASin
- ATan
- Ceil
- Cos
- Exp
- Floor
- Ln
- Log
- Round
- Sin
- Sqrt
- Tan
- Chr
- InStr
- RegExMatch
- RegExReplace
- StrLen
- StrSplit
- Format
- Ord
- SubStr
- Trim
- StrReplace
- Mod
- Asc
