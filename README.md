
---

# AHK-to-js

**AHK-to-js** is a transpiler from AutoHotkey (AHK) to JavaScript (JS) with HTML in a full HTML file. It aims to simulate AHK inside a browser on any device.

**Note:**
- This project is specifically for AutoHotKey V1.
- AHK-to-js is still in development. 
- Documentation coming soon. 
- Just one thing: if you want to try it now, after an `IfMsgBox` at the end, add `} ; end of ifmsgbox`

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

## Usage

To use AHK-to-js:

1. Ensure you have AutoHotKey V1 installed. You can download it from [here](https://www.autohotkey.com/download/ahk-install.exe).
2. Add your AHK code in `AHKcode.ahk`.
3. Run `AHK to js.ahk`.
4. You'll get `temp.html` as output.

So far, AHK-to-js supports:

- Functions
- If, else, else if
- Random
- Sleep
- Msgbox 
- OutputDebug (equivalent to `console.log` in JS)
- Loop
- Loop, Parse
- Increment (e.g., `var++`)
- Assignment operators (`:=`, `.=`, `+=`, `-=`, `*=`)
- Comments (Note: Comments might be translated in some cases)

Some features that haven't been fully tested but should work include:

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

## Platform Compatibility

- AutoHotKey only runs on Windows.

---
