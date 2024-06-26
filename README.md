![icon](https://github.com/TheMaster1127/AHK-to-js/assets/134737935/1a0efe63-726e-49ca-a13c-d0ed627f2ea7)

# HTH: HeavenToHell

HTH, which stands for HeavenToHell, is a dynamically typed, transpiled high-level programming language designed for simplicity, ease of use, and versatility. Inspired by the syntax of AutoHotkey, HTH offers a user-friendly environment for beginners to learn programming and build web applications quickly and easily.

With HTH, developers can write code in a straightforward and intuitive syntax, making it accessible even to those with little to no programming experience. The language is dynamically typed, allowing for flexibility in variable declarations and reducing the need for explicit type annotations.

One of the key features of HTH is it's transpilation process, which converts HTH code into JavaScript and embeds it into an HTML file. This enables applications built with HTH to be run on any device with a web browser, providing portability and accessibility.

HTH simplifies GUI development by eliminating the need for complex initialization, allowing developers to create user interfaces quickly and easily. Additionally, HTH streamlines backend connectivity with it's built-in function for sending and retrieving data from specified endpoints.

## Overall, HTH is a powerful yet approachable programming language that empowers beginners to learn programming and build web applications with ease. it's simplicity, portability, and comprehensive documentation make it a valuable tool for developers of all skill levels.

### Pros of HTH

1. **Ease of Use:** HTH is extremely beginner-friendly, with a simple and intuitive syntax that makes it easy for newcomers to learn and understand.

2. **Portability:** The ability to compile or transpile HTH code into an HTML file means that applications built with HTH can be easily carried and run on any device with a web browser, making it highly portable.

3. **Simplicity of Syntax:** HTH offers a straightforward and minimalistic syntax, making it easy for developers to write and understand code without unnecessary complexity.

4. **GUI Development:** HTH simplifies GUI development by eliminating the need for complex initialization, allowing developers to create user interfaces quickly and easily.

5. **Backend Connectivity:** HTH streamlines backend connectivity with it's built-in function called `getDataFromEndpoint`, enabling developers to easily send and retrieve data from a specified endpoint with just one function call.

6. **Comprehensive Documentation:** HTH provides comprehensive documentation that not only explains how the language works but also covers programming concepts and best practices, making it a valuable resource for developers of all skill levels.

7. **Variable Concatenation:** Variables in HTH are seamlessly stored as objects in the transpiled JavaScript code, allowing for easy concatenation and manipulation without the need for explicit variable declarations, enhancing code readability and flexibility.

**Note:**

- This project is specifically inspired from AutoHotKey V1 and it's syntax.
- Documentation here: [HTH Documentation](https://github.com/TheMaster1127/HTH/wiki)

## Usage

### To use HTH HeavenToHell:

The best IDE for HTH: https://github.com/TheMaster1127/SciTE4HTH

#### HTH v1

1. Ensure you have AutoHotKey V1 installed (Unless you wanna run the HTH.exe file). You can download AutoHotKey from [here](https://www.autohotkey.com/download/ahk-install.exe).
2. Add your HTH code in a `.hth` file.
3. Open the cmd in the directory of the HTH.exe or HTH.ahk Transpiler
4. You can run `HTH filename.hth` or `HTH.ahk filename.hth` or `HTH.exe filename.hth`
5. You'll get `index.html` as output. You can open it, and you should see the website. Also if you use the function `getDataFromEndpoint` anywhere in the code HTH will generate a `server.py` file (ONLY in HTH v1) for better backend connectivity. You will need to install Python and also a Python library called Flask in order to run the generated Python backend.

#### HTH v2

1. Ensure you have the latest Python verson installed. You can download Python from [here](https://www.python.org/).
2. Add your HTH code in a `.hth` file.
3. Open the cmd in the directory of the HTH.py Transpiler
4. You can run `python filename.hth`, `python3 filename.hth`, or `python -m filename.hth`. If none of these work, please ask ChatGPT for help or consult someone else.
5. You'll get `index.html` as output. You can open it, and you should see the website.

## Platform Compatibility HTH v1

- HTH v1 is compatible with Windows and can also run on Linux with the assistance of wine a program that can run most exe files on linux using wine.
- HTH only transpiles using Windows or Linux with wine since the transpiler is written in AutoHotKey and we need to run it as an exe in windows and linux with wine or .ahk in windows. Mac users STAY AWAY from HTH!!!

## Platform Compatibility HTH v2

- HTH v2 is compatible with all devices, including computers, phones, Windows, Linux, and even browsers. Anything capable of running Python and a modern browser can be used to code and execute HTH. You can use this website to code and run HTH v2 [here](https://themaster1127.github.io/HTH/).

## Editors

This is the best editor for HTH https://github.com/TheMaster1127/SciTE4HTH

---

A simplified documentation here, but you can check the documentation here: [HTH Documentation](https://github.com/TheMaster1127/HTH/wiki)

For coding style, you should use Allman Style since functions won't be recognized here is an example:

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

So far, HTH supports:

- Gui - Buttons, Text, Edit, Picture, Toggle, Rectangle, Circle, Player, DropDownList, Iframe, IDE
- GuiContol
- Hotkeys but simple like you can still do almost all combinations like Ctrl+Alt+Shift+AlmostAnyKey or Shift+Up or just even one key

```ahk
!+^g::
Msgbox, You Clicked Ctrl+Alt+Shift+G

; We MUST put a Return with a capital letter R at the beginning of the word 'Return' otherwise it will not work. This is ONLY for the end of any label or hotkey.
Return
```

- Functions
- If, else, else if
- Random
- Sleep
- Msgbox
- FileRead it will hardcode the text from the path in the HTH script
- FileAppend it will download the file one time next time it will be a new file also you can only do for example: `FileAppend, %yourVar%, FileName.txt` you cant put vars in the filename argument
- SetTimer Note: if you put a msgbox in the timer it will not stop the execution.
- gosub
- labels here is a label:

```ahk
; We will go the label
gosub, Label1

; We put return in lowercase to stop the code executing after the gosub otherwise it will go to the label twice.
return
Label1:
MsgBox, we are in Label1

; We MUST put a Return with a capital letter R at the beginning of the word 'Return' otherwise it will not work. This is ONLY for the end of any label or hotkey.
Return
```

- InputBox can only pass 2 parameters here is an example:

```ahk
InputBox, OutputVar, Title

; please don't add more parameters or commas ","
```

- OnKeyPress: here is an example:

```ahk
OnKeyPress:
Msgbox, You Pressed %A_ThisHotkey%

; We MUST put a Return with a capital letter R at the beginning of the word 'Return' otherwise it will not work. This is ONLY for the end of any label or hotkey.
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
- Variables and Arrays
- Run, Reload and ExitApp
- #Include (only HTH v1)
- Simple dynamically function calls. Example: `func%num%()` cant do `%num%func()` also not `func%num%name()` you can only have one `%var%` at the end.
- Assignment operators (`:=`, `.=`, `+=`, `-=`, `*=`)
- Comments dont use comments in the same line as the code (Note: Comments might be translated in some cases)
- Sort
- runPyCode and runHTML
- PlaySound
- MouseGetPos and OnMouseClick
- Title and Icon
- StoreLocally
- getUrlParams and reloadWithParams
- getDataFromAPI and getDataFromJSON
- getDataFromEndpoint(data, endpoint) this function allows you to get and send data to or from an endpoint. It will also return data. ONLY if you are running a backend which will be generated in a python file in the same dir!
- isMobileDevice will check if it's a mobile device no need for parameters
- isConnectedToBackend will checks if the webpage is using a web address starting with 'http://' or 'https://', which usually means it's connected to a server. It returns 'true' if it is connected, and 'false' if it's not.
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
- SubStr
- Trim
- StrReplace
- Mod
- Asc
- ParseInt
- StrLower

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

You should check the documentation for all the details here: [HTH Documentation](https://github.com/TheMaster1127/HTH/wiki)

---
