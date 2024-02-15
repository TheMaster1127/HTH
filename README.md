
---

![image-removebg-removebg-preview-removebg-preview](https://github.com/TheMaster1127/AHK-to-js/assets/134737935/806a3203-abf6-42f0-b7c6-00a427e5bdad)


# AHK-to-js

**AHK-to-js** is a transpiler from AutoHotkey (AHK) to JavaScript (JS) that puts it all in a full HTML file. It aims to simulate AHK inside a browser on almost any device.

**Note:**
- This project is specifically for AutoHotKey V1.
- AHK-to-js is still in development. 
- Documentation coming soon. 

## Usage

To use AHK-to-js:

1. Ensure you have AutoHotKey V1 installed. You can download it from [here](https://www.autohotkey.com/download/ahk-install.exe).
2. Add your AHK code in `AHKcode.ahk`.
3. Run `AHK to js.ahk`.
4. You'll get `temp.html` as output.
5. Open for edit `temp.html` coppy the full file do `Ctrl+A` then `Ctrl+C`
6. Open `PrettierFormatter.html`
7. Format the code and then put it it back in `temp.html`
8. Open the `temp.html`

For coding style, you should use Allman style since functions won't be recognized here is an example:

Do this:

```ahk
nameOfFunc(a, b)
{
return a + b
}
```
Not this:

```ahk
nameOfFunc(a, b) {
return a + b
}
```

Also, `return` must be in lowercase.

So far, AHK-to-js supports:

- Gui - Buttons, Text, Edit and Picture - which will encode a base64 in the HTML file so you won't need the original picture anymore
- GuiContol
- Hotkyes but simple like you can still do almost all combinations like Ctrl+Alt+Shift+AlmostAnyKey or Shift+Up or just even one key
```ahk
!+^g::
Msgbox, You Clicked Ctrl+Alt+Shift+G

; We MUST put a Return with a capital letter R at the beginning of the word 'Return' otherwise it will not work. This is ONLY for the end of any label or hotkey. This is not the same case in real AutoHotkey, but here we need to do that.
Return
```
- Functions
- If, else, else if
- Random
- Sleep
- Msgbox
- FileAppend it will download the file one time next time it will be a new file also you can only do for example: `FileAppend, %yourVar%, FileName.txt` you cant put vars in the filename argument 
- SetTimer Note: if you put a msgbox in the timer it will not stop the execution which is not the same as in real AutoHotKey
- gosub
- lables here is a lable:
```ahk
; We will go the label
gosub, Label1

; We put return in lowercase to stop the code executing after otherwise; otherwise, it will go to the label twice.
return
Label1:
MsgBox, we are in Label1

; We MUST put a Return with a capital letter R at the beginning of the word 'Return' otherwise it will not work. This is ONLY for the end of any label or hotkey. This is not the same case in real AutoHotkey, but here we need to do that.
Return
```
- InputBox can only pass 2 or 3 parameters here is an example:

```ahk
InputBox, OutputVar, We will only see this title in AutoHotKey, And this will be seen as the only thing in js and this will be the text in ahk

; also you can do it like this
InputBox, OutputVar, And this will be seen as the only thing in js and in ahk this will be the title and the text of the InputBox 
; please don't add more parameters or commas ","
```
- OnKeyPress: here is an example:
```ahk
This is not in AutoHotKey this is custom feature
OnKeyPress:
Msgbox, You Pressed %A_ThisHotkey%

; We MUST put a Return with a capital letter R at the beginning of the word 'Return' otherwise it will not work. This is ONLY for the end of any label or hotkey. This is not the same case in real AutoHotkey, but here we need to do that.
Return
```
- IfMsgBox after an `IfMsgBox` at the end, add `} ; end of ifmsgbox`

Example:
```ahk
MsgBox, 36, Title Here, Yes or No
IfMsgBox, Yes
{
	MsgBox, You clicked on Yes	
} ; end of ifmsgbox

```
or
```ahk
MsgBox, 36, Title Here, Yes or No
IfMsgBox, Yes
{
	MsgBox, You clicked on Yes	
}
else
{
	MsgBox, You clicked on No	
} ; end of ifmsgbox
```

- OutputDebug (equivalent to `console.log` in JS)
- Loop
- Loop, Parse
- Increment (e.g., `var++`)
- Simple dynamically function calls. Example: `func%num%()` cant do `%num%func()` also not `func%num%name()` you can only have one `%var%` at the end.
- Assignment operators (`:=`, `.=`, `+=`, `-=`, `*=`)
- Comments dont use comments in the same line as the code (Note: Comments might be translated in some cases)

Some features haven't been fully tested but should work include:

- getDataFromEndpoint(data, endpoint, method) this custom function allows you to get and send data to or from an endpoint. It can also return data. ONLY if have a backend!
- isMobileDevice will check if its a mobile device no need for perimeters
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
- GetKeyState
- StrLen
- StrSplit
- Format
- Ord
- SubStr
- Trim
- StrReplace
- Mod
- Asc

Built-in Variables
- A_Index
- A_LoopField
- A_LastKey retrieves the last key pressed by the user on the page
- A_ThisHotkey retrieves the key pressed only inside a label called OnKeyPress:
- A_ScreenWidth
- A_ScreenHeight
- A_GuiControl
- A_TimeIdle
- A_TickCount
- A_NowUTC
- A_Now
- A_YYYY
- A_MM
- A_DD
- A_MMMM
- A_MMM
- A_DDDD
- A_DDD
- A_Hour
- A_Min
- A_Sec
- A_Space
- A_Tab
- A_IsTranspiled in js it will be set to 1 in ahk its will be blank so you can do somting like:
```ahk
if (A_IsTranspiled = "")
{
; do something if its

 not transpiled
}
else
{
; do something if its transpiled
}
```

## Platform Compatibility
 
- AutoHotKey only runs on Windows.

---
