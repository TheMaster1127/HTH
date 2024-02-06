---

# AHK-to-js

![GitHub repo size](https://img.shields.io/github/repo-size/TheMaster1127/AHK-to-js)
![GitHub contributors](https://img.shields.io/github/contributors/TheMaster1127/AHK-to-js)
![GitHub stars](https://img.shields.io/github/stars/TheMaster1127/AHK-to-js?style=social)
![GitHub forks](https://img.shields.io/github/forks/TheMaster1127/AHK-to-js?style=social)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

**AHK-to-js** is a transpiler from AutoHotkey (AHK) to JavaScript (JS) with HTML in a full HTML file. It aims to simulate AHK inside a browser on any device.

**Note:**
- This project is specifically for AutoHotKey V1.
- AHK-to-js is still in development. Documentation is coming soon.

## Usage

To use AHK-to-js:

1. Ensure you have AutoHotKey V1 installed. You can download it from [here](https://www.autohotkey.com/download/ahk-install.exe).
2. Add your AHK code in `AHKcode.ahk`.
3. Run `AHK to js.ahk`.
4. You'll get `temp.html` as output.

## Example

```ahk
IfMsgBox, Yes
{
    ; Your code here
}
else
{
    ; Your code here
} ; end of ifmsgbox
```

## Supported Features

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

- Abs, ACos, ASin, ATan
- Ceil, Cos, Exp, Floor, Ln, Log, Round, Sin, Sqrt, Tan
- Chr, InStr, RegExMatch, RegExReplace, StrLen, StrSplit, Format, Ord
- SubStr, Trim, StrReplace, Mod, Asc

## Platform Compatibility

- AutoHotKey only runs on Windows.

---
