# HTH: HeavenToHell Programming Language Documentation <a id="hth"></a>

## Table of Contents

1. [Usage and Syntax](#usage-and-syntax)
2. [Features](#features)
3. [Backend and Python](#backend-and-python)
4. [Editor for Code](#editor-for-code)
5. [Recommendations](#recommendations)
6. [Script Showcase](#script-showcase)

---

## Usage and Syntax <a id="usage-and-syntax"></a>

[Go back](#hth)

This section provides an overview of the usage and syntax of the HTH programming language.

---

## Features <a id="features"></a>

[Go back](#hth)

Explore the various features offered by the HTH programming language in this section.

### Table of Contents

1. [GUI](#gui)
2. [GuiControl](#guicontrol)
3. [Hotkeys](#hotkeys)
4. [Functions](#functions)
5. [If, else, else if](#if-else-else-if)
6. [Random](#random)
7. [Sleep](#sleep)
8. [Msgbox](#msgbox)
9. [FileRead](#fileread)
10. [FileAppend](#fileappend)
11. [SetTimer](#settimer)
12. [Labels](#labels)
13. [Gosub](#gosub)
14. [InputBox](#inputbox)
15. [OnKeyPress](#onkeypress)
16. [Return/return](#return)
17. [IfMsgBox](#ifmsgbox)
18. [OutputDebug](#outputdebug)
19. [Loop](#loop)
20. [Loop, Parse](#loop-parse)
21. [Variables](#variables)
22. [Simple dynamically function calls](#simple-dynamically-function-calls)
23. [Assignment operators](#assignment-operators)
24. [Comments](#comments)
25. [getDataFromEndpoint](#getdatafromendpoint)
26. [isMobileDevice](#ismobiledevice)
27. [isConnectedToBackend](#isconnectedtobackend)
28. [Math Functions](#math-functions)
29. [Build-in Functions](#build-in-functions)
30. [Build-in Variables](#build-in-variables)

---

### GUI <a id="gui"></a>

[Go back](#features)

The GUI feature in HTH allows for the creation of graphical user interfaces with elements such as buttons, text, edit fields, and pictures. Pictures can be encoded as base64 in the HTML file, eliminating the need for the original picture file.

### Gui Command

The `Gui` command creates and manages windows and controls. Such windows can be used as data entry forms or custom user interfaces.

#### Syntax:

```ahk
Gui, SubCommand, Value1, Value2, Value3
```

Aslo you can do

```ahk
Gui 2: SubCommand, Value1, Value2, Value3
```

```ahk
Gui 3: SubCommand, Value1, Value2, Value3
```

but now you have to use `num:` anywhere even the GuiConrol for example

```ahk
buttonSwitch1 := 0
buttonSwitch2 := 0

Gui 2: Show, x210 w500 h500
Gui 2: Add, Button, x10 y10 w300 h50 vtheButton gButton1, This is some text

Gui 3: Show, x750 w500 h500
Gui 3: Add, Button, x10 y10 w300 h50 vtheButton gButton2, This is some text
return

Button1:
buttonSwitch1++
if (buttonSwitch1 = 1)
{
GuiControl 2: Move, theButton, x10 y300 w150 h40
}
else
{
GuiControl 2: Move, theButton, x10 y10 w300 h50
buttonSwitch1 := 0
}
Return

Button2:
buttonSwitch2++
if (buttonSwitch2 = 1)
{
GuiControl 3: Move, theButton, x10 y300 w150 h40
}
else
{
GuiControl 3: Move, theButton, x10 y10 w300 h50
buttonSwitch2 := 0
}
Return
```

and so on but dont do `1:` since it's the defalut one.

The `SubCommand`, `Value1`, `Value2`, and `Value3` parameters are dependent upon each other, and their usage is described below.

### Table of Contents

1. [SubCommands](#gui-subcommands)
2. [Controls](#gui-controls)
3. [Examples](#gui-examples)

---

### SubCommands <a id="gui-subcommands"></a>

[Go Back](#gui)

This section provides a detailed explanation of the available `SubCommands` for the `Gui` command.

#### Add

```ahk
; Add a text control
Gui, Add, Text, x20 y20 w100 h20, This is a text control

; or

; Add a button control
Gui, Add, Button, x20 y50 w100 h30, Click me

; and more
```

#### Color

```ahk
; Set the background color of the GUI window
Gui, Color, cWhite


; Set the background color of the GUI window
Gui, Color, c121212
```

#### Font

```ahk
; Set the font of the text control
Gui, Font, s22
```

---

### Controls <a id="gui-controls"></a>

[Go Back](#gui)

This section provides information about the controls that can be used within the `Gui` command to create various elements in the graphical user interface.

1. Text - Static Text element
2. Button - Button you can click
3. Edit - Will crete a place to enter text
4. Pictire - Will display a Picture. Pictures can be encoded as base64 in the HTML file, eliminating the need for the original picture file.

---

### Examples <a id="gui-examples"></a>

[Go Back](#gui)

This section provides examples of using the `Gui` command to create graphical user interfaces.

Make sure to put the `Gui, Show` command on top of your script.

Example 1

```ahk
Gui, Font, s20
Gui, Show, w500 h700
Gui, Add, Text, x10 y10 w150 h30, First name:
Gui, Add, Edit, x10 y40 w150 h30 gEdit1 vFirstName, First Name...
Gui, Add, Text, x10 y100 w150 h30 , Last name:
Gui, Add, Edit, x10 y130 w150 h30 gEdit2 vLastName, Last Name...
Gui, Add, Button, x10 y200 w155 h45 gButtonOK, Send
return

; You need to get the text from the edit
Edit1:
FirstName := A_GuiControl
Return

; You need to get the text from the edit
Edit2:
LastName := A_GuiControl
Return

; When you press the button
ButtonOK:
MsgBox, % "You entered " . FirstName . " " . LastName . "."
Return
```

Example 2

```ahk
; You can pass vars as w and h

Gui 2: Show, w%A_ScreenWidth% h%A_ScreenHeight%
Gui 2: Add, Text, x10 y10 w150 h30, This is text

; or you can do

w := 500
h := 700
Gui, Show, w%w% h%h%
Gui, Add, Text, x10 y10 w150 h30, This is text
return
```

Example 3

```ahk
; Lest use Loops to made a 3x3 button grid

; you can also change those values
rows := 3
columns := 3

; if one button is w140 h40

w := 20 + (150 * rows)
h := 20 + (50 * columns)

Gui 2: Show, w%w% h%h%

x := 10
y := 10
ButtonNum := 0
Loop, %rows%
{
Loop, %columns%
{
ButtonNum++
NameOfButton := "Button" . ButtonNum
Gui 2: Add, Button, x%x% y%y% w140 h40 gButton, %NameOfButton%
y := y + 50
}
x := x + 150
y := 10
}
return


Button:
MsgBox, You clicked on %A_GuiControl%
Return
```

---

### GuiControl <a id="gui-control"></a>

[Go back](#features)

---

### Hotkeys <a id="hotkeys"></a>

[Go back](#features)

---

### Functions <a id="functions"></a>

[Go back](#features)

---

### If, else, else if <a id="if-else-else-if"></a>

[Go back](#features)

---

### Random <a id="random"></a>

[Go back](#features)

---

### Sleep <a id="sleep"></a>

[Go back](#features)

---

### Msgbox <a id="msgbox"></a>

[Go back](#features)

---

### FileRead <a id="fileread"></a>

[Go back](#features)

---

### FileAppend <a id="fileappend"></a>

[Go back](#features)

---

### SetTimer <a id="settimer"></a>

[Go back](#features)

---

### Labels <a id="labels"></a>

[Go back](#features)

---

### Gosub <a id="gosub"></a>

[Go back](#features)

---

### InputBox <a id="inputbox"></a>

[Go back](#features)

---

### OnKeyPress <a id="onkeypress"></a>

[Go back](#features)

---

### Return/return <a id="return"></a>

[Go back](#features)

---

### IfMsgBox <a id="ifmsgbox"></a>

[Go back](#features)

---

### OutputDebug <a id="outputdebug"></a>

[Go back](#features)

---

### Loop <a id="loop"></a>

[Go back](#features)

---

### Loop, Parse <a id="loop-parse"></a>

[Go back](#features)

---

### Variables <a id="variables"></a>

[Go back](#features)

---

### Increment <a id="increment"></a>

[Go back](#features)

---

### Simple dynamically function calls <a id="simple-dynamically-function-calls"></a>

[Go back](#features)

---

### Assignment operators <a id="assignment-operators"></a>

[Go back](#features)

---

### Comments <a id="comments"></a>

[Go back](#features)

---

### getDataFromEndpoint <a id="getdatafromendpoint"></a>

[Go back](#features)

---

[Go back](#features)

### isMobileDevice <a id="ismobiledevice"></a>

[Go back](#features)

---

### isConnectedToBackend <a id="isconnectedtobackend"></a>

[Go back](#features)

---

### Math Functions <a id="math-functions"></a>

[Go back](#features)

A collection of mathematical functions available in HTH.

1. [Abs](#abs)
2. [ACos](#acos)
3. [ASin](#asin)
4. [ATan](#atan)
5. [Ceil](#ceil)
6. [Cos](#cos)
7. [Exp](#exp)
8. [Floor](#floor)
9. [Ln](#ln)
10. [Log](#log)
11. [Round](#round)
12. [Sin](#sin)
13. [Sqrt](#sqrt)
14. [Tan](#tan)

---

## Explanation of Math Functions

### Abs <a id="abs"></a>

[Go back](#math-functions)

**Abs**: Returns the absolute value of a number.

#### Syntax:

```ahk
result := Abs(number)
```

#### Parameters:

- _number_: The number for which you want to find the absolute value.

#### Return Value:

- Returns the absolute value of the input number.

#### Example:

```ahk
absValue := Abs(-5)
MsgBox, The absolute value of -5 is %absValue%
```

---

### ACos <a id="acos"></a>

[Go back](#math-functions)

**ACos**: Returns the arccosine (in radians) of a number.

#### Syntax:

```ahk
result := ACos(number)
```

#### Parameters:

- _number_: The number for which you want to find the arccosine.

#### Return Value:

- Returns the arccosine of the input number in radians.

#### Example:

```ahk
arcCos := ACos(0.5)
MsgBox, The arccosine of 0.5 is %arcCos%
```

---

### ASin <a id="asin"></a>

[Go back](#math-functions)

**ASin**: Returns the arcsine (in radians) of a number.

#### Syntax:

```ahk
result := ASin(number)
```

#### Parameters:

- _number_: The number for which you want to find the arcsine.

#### Return Value:

- Returns the arcsine of the input number in radians.

#### Example:

```ahk
arcSin := ASin(0.5)
MsgBox, The arcsine of 0.5 is %arcSin%
```

---

### ATan <a id="atan"></a>

[Go back](#math-functions)

**ATan**: Returns the arctangent (in radians) of a number.

#### Syntax:

```ahk
result := ATan(number)
```

#### Parameters:

- _number_: The number for which you want to find the arctangent.

#### Return Value:

- Returns the arctangent of the input number in radians.

#### Example:

```ahk
arcTan := ATan(0.5)
MsgBox, The arctangent of 0.5 is %arcTan%
```

---

### Ceil <a id="ceil"></a>

[Go back](#math-functions)

**Ceil**: Returns the smallest integer greater than or equal to a number.

#### Syntax:

```ahk
result := Ceil(number)
```

#### Parameters:

- _number_: The number for which you want to find the smallest integer greater than or equal to.

#### Return Value:

- Returns the smallest integer greater than or equal to the input number.

#### Example:

```ahk
ceiled := Ceil(4.3)
MsgBox, The smallest integer greater than or equal to 4.3 is %ceiled%
```

---

### Cos <a id="cos"></a>

[Go back](#math-functions)

**Cos**: Returns the cosine of an angle (in radians).

#### Syntax:

```ahk
result := Cos(angle)
```

#### Parameters:

- _angle_: The angle (in radians) for which you want to find the cosine.

#### Return Value:

- Returns the cosine of the input angle.

#### Example:

```ahk
cosValue := Cos(0)
MsgBox, The cosine of 0 radians is %cosValue%
```

---

### Exp <a id="exp"></a>

[Go back](#math-functions)

**Exp**: Returns the value of E raised to the power of a number.

#### Syntax:

```ahk
result := Exp(number)
```

#### Parameters:

- _number_: The exponent to which E is raised.

#### Return Value:

- Returns E raised to the power of the input number.

#### Example:

```ahk
expValue := Exp(2)
MsgBox, E raised to the power of 2 is %expValue%
```

---

### Floor <a id="floor"></a>

[Go back](#math-functions)

**Floor**: Returns the largest integer less than or equal to a number.

#### Syntax:

```ahk
result := Floor(number)
```

#### Parameters:

- _number_: The number for which you want to find the largest integer less than or equal to.

#### Return Value:

- Returns the largest integer less than or equal to the input number.

#### Example:

```ahk
floored := Floor(4.9)
MsgBox, The largest integer less than or equal to 4.9 is %floored%
```

---

### Ln <a id="ln"></a>

[Go back](#math-functions)

**Ln**: Returns the natural logarithm of a number.

#### Syntax:

```

hth
result := Ln(number)
```

#### Parameters:

- _number_: The number for which you want to find the natural logarithm.

#### Return Value:

- Returns the natural logarithm of the input number.

#### Example:

```ahk
lnValue := Ln(2.71828)
MsgBox, The natural logarithm of 2.71828 is %lnValue%
```

---

### Log <a id="log"></a>

[Go back](#math-functions)

**Log**: Returns the logarithm of a number to a specified base.

#### Syntax:

```ahk
result := Log(number)
```

#### Parameters:

- _number_: The number for which you want to find the natural logarithm.

#### Return Value:

- Returns the natural logarithm of the input number.

#### Example:

```ahk
logValue := Log(100)
MsgBox, The natural logarithm of 100 is %logValue%
```

---

### Round <a id="round"></a>

[Go back](#math-functions)

**Round**: Returns the nearest integer to a number.

#### Syntax:

```ahk
result := Round(number)
```

#### Parameters:

- _number_: The number to be rounded.

#### Return Value:

- Returns the nearest integer to the input number.

#### Example:

```ahk
rounded := Round(4.6)
MsgBox, The nearest integer to 4.6 is %rounded%
```

---

### Sin <a id="sin"></a>

[Go back](#math-functions)

**Sin**: Returns the sine of an angle (in radians).

#### Syntax:

```ahk
result := Sin(angle)
```

#### Parameters:

- _angle_: The angle (in radians) for which you want to find the sine.

#### Return Value:

- Returns the sine of the input angle.

#### Example:

```ahk
sinValue := Sin(0)
MsgBox, The sine of 0 radians is %sinValue%
```

---

### Sqrt <a id="sqrt"></a>

[Go back](#math-functions)

**Sqrt**: Returns the square root of a number.

#### Syntax:

```ahk
result := Sqrt(number)
```

#### Parameters:

- _number_: The number for which you want to find the square root.

#### Return Value:

- Returns the square root of the input number.

#### Example:

```ahk
sqrtValue := Sqrt(9)
MsgBox, The square root of 9 is %sqrtValue%
```

---

### Tan <a id="tan"></a>

[Go back](#math-functions)

**Tan**: Returns the tangent of an angle (in radians).

#### Syntax:

```ahk
result := Tan(angle)
```

#### Parameters:

- _angle_: The angle (in radians) for which you want to find the tangent.

#### Return Value:

- Returns the tangent of the input angle.

#### Example:

```ahk
tanValue := Tan(0)
MsgBox, The tangent of 0 radians is %tanValue%
```

---

### Build-in Functions <a id="build-in-functions"></a>

[Go back](#features)

A collection of Build-in Function available in HTH.

1. [Chr](#chr)
2. [InStr](#instr)
3. [RegExMatch](#regexmatch)
4. [GetKeyState](#getkeystate)
5. [StrLen](#strlen)
6. [Ord](#ord)
7. [SubStr](#substr)
8. [Trim](#trim)
9. [StrReplace](#strreplace)
10. [Mod](#mod)
11. [Asc](#asc)

---

## Explanation of Build-in Functions

### Chr <a id="chr"></a>

[Go back](#build-in-functions)

**Chr**: Returns the character corresponding to a specified ASCII code.

#### Syntax:

```ahk
result := Chr(asciiCode)
```

#### Parameters:

- _asciiCode_: The ASCII code for which you want to retrieve the corresponding character.

#### Return Value:

- Returns the character corresponding to the input ASCII code.

#### Example:

```ahk
character := Chr(65)
MsgBox, The character corresponding to ASCII code 65 is %character%
```

---

### InStr <a id="instr"></a>

[Go back](#build-in-functions)

**InStr**: Returns the position of the first occurrence of a substring within a string.

#### Syntax:

```ahk
result := InStr(haystack, needle)
```

#### Parameters:

- _haystack_: The string in which you want to search for the substring.
- _needle_: The substring you want to find within the haystack.

#### Return Value:

- Returns the position (index) of the first occurrence of the substring within the string. Returns 0 if the substring is not found.

#### Example:

```ahk
position := InStr("Hello World", "World")
MsgBox, The position of `"World`" in `"Hello World`" is %position%
```

---

### RegExMatch <a id="regexmatch"></a>

[Go back](#build-in-functions)

**RegExMatch**: Searches a string using a regular expression pattern and returns the position and length of the match.

#### Syntax:

```ahk
result := RegExMatch(subject, regexPattern, outputArray)
```

#### Parameters:

- _subject_: The string you want to search using the regular expression pattern.
- _regexPattern_: The regular expression pattern to match against the string.
- _outputArray_: (Optional) An array to store the position and length of the match.

#### Return Value:

- Returns the position of the match within the string. If outputArray is provided, it also stores the position and length of the match in the specified array.

#### Example:

```ahk
matchPosition := RegExMatch("Hello World", "World", matchArray)
MsgBox, The position of the match is %matchPosition%
```

---

### GetKeyState <a id="getkeystate"></a>

[Go back](#build-in-functions)

**GetKeyState**: Retrieves the state of a key.

#### Syntax:

```ahk
result := GetKeyState(keyName, mode)
```

#### Parameters:

- _keyName_: The name of the key whose state you want to retrieve.
- _mode_: The mode in which to retrieve the key state.
  `U` for Up and `D` for Down aka pressed

#### Return Value:

- Returns the state of the specified key.

#### Example:

```ahk
SetTimer, code, 1
return

code:

if (GetKeyState("Up", "D"))
{
MsgBox, The Up key is Down exiting the subroutine
SetTimer, code, Off
}
Return
```

---

### StrLen <a id="strlen"></a>

[Go back](#build-in-functions)

**StrLen**: Returns the length of a string.

#### Syntax:

```ahk
result := StrLen(string)
```

#### Parameters:

- _string_: The string for which you want to find the length.

#### Return Value:

- Returns the length of the input string.

#### Example:

```ahk
length := StrLen("Hello World")
MsgBox, The length of the string is %length%
```

---

### Ord <a id="ord"></a>

[Go back](#build-in-functions)

**Ord**: Returns the ASCII code of the first character in a string.

#### Syntax:

```ahk
result := Ord(string)
```

#### Parameters:

- _string_: The string from which you want to retrieve the ASCII code of the first character.

#### Return Value:

- Returns the ASCII code of the first character in the input string.

#### Example:

```ahk
asciiCode := Ord("A")
MsgBox, The ASCII code of `"A`" is %asciiCode%
```

---

### SubStr <a id="substr"></a>

[Go back](#build-in-functions)

**SubStr**: Returns a substring from a string.

#### Syntax:

```ahk
result := SubStr(string, startPos, length)
```

#### Parameters:

- _string_: The string from which you want to extract a substring.
- _startPos_: The starting position of the substring.
- _length_: (Optional) The length of the substring to extract.

#### Return Value:

- Returns the extracted substring.

#### Example:

```ahk
substring := SubStr("Hello World", 7)
MsgBox, The substring is %substring%
```

---

### Trim <a id="trim"></a>

[Go back](#build-in-functions)

**Trim**: Removes leading and trailing whitespace from a string.

#### Syntax:

```ahk
result := Trim(string)
```

#### Parameters:

- _string_: The string from which you want to remove leading and trailing whitespace.

#### Return Value:

- Returns the string with leading and trailing whitespace removed.

#### Example:

```ahk
trimmedString := Trim("  Hello World  ")
MsgBox, The trimmed string is %trimmedString%
```

---

### StrReplace <a id="strreplace"></a>

[Go back](#build-in-functions)

**StrReplace**: Replaces occurrences of a substring within a string.

#### Syntax:

```ahk
result := StrReplace(string, find, replace)
```

#### Parameters:

- _string_: The string in which you want to replace occurrences of a substring.
- _find_: The substring you want to replace.
- _replace_: The replacement string.

#### Return Value:

- Returns the modified string with occurrences of the substring replaced.

#### Example:

```ahk
modifiedString := StrReplace("Hello World", "World", "Universe")
MsgBox, The modified string is %modifiedString%
```

---

### Mod <a id="mod"></a>

[Go back](#build-in-functions)

**Mod**: Returns the remainder of a division operation.

#### Syntax:

```ahk
result := Mod(dividend, divisor)
```

#### Parameters:

- _dividend_: The number to be divided.
- _divisor_: The number by which to divide the dividend.

#### Return Value:

- Returns the remainder of the division operation.

#### Example:

```ahk
remainder := Mod(10, 3)
MsgBox, The remainder of dividing 10 by 3 is %remainder%
```

---

### Asc <a id="asc"></a>

[Go back](#build-in-functions)

**Asc**: Returns the ASCII code of a character.

#### Syntax:

```ahk
result := Asc(character)
```

#### Parameters:

- _character_: The character for which you want to retrieve the ASCII code.

#### Return Value:

- Returns the ASCII code of the input character.

#### Example:

```ahk
asciiCode := Asc("A")
MsgBox, The ASCII code of `"A`" is %asciiCode%
```

---

### Build-in Variables <a id="build-in-variables"></a>

[Go back](#features)

Build-in Variables provided by HTH for various purposes.

1. [A_Index](#a_index)
2. [A_LoopField](#a_loopfield)
3. [A_LastKey](#a_lastkey)
4. [A_ThisHotkey](#a_thishotkey)
5. [A_ScreenWidth](#a_screenwidth)
6. [A_ScreenHeight](#a_screenheight)
7. [A_GuiControl](#a_guicontrol)
8. [A_TimeIdle](#a_timeidle)
9. [A_TickCount](#a_tickcount)
10. [A_Now](#a_now)
11. [A_YYYY](#a_yyyy)
12. [A_MM](#a_mm)
13. [A_DD](#a_dd)
14. [A_MMMM](#a_mmmm)
15. [A_MMM](#a_mmm)
16. [A_DDDD](#a_dddd)
17. [A_DDD](#a_ddd)
18. [A_Hour](#a_hour)
19. [A_Min](#a_min)
20. [A_Sec](#a_sec)
21. [A_Space](#a_space)
22. [A_Tab](#a_tab)

---

## Explanation of Build-in Variables

### A_Index <a id="a_index"></a>

[Go back](#build-in-variables)

**A_Index**: Contains the number of the current loop iteration in a loop.

#### Example:

```ahk
Loop, 5
{
    MsgBox, Loop iteration: %A_Index%
}
```

---

### A_LoopField <a id="a_loopfield"></a>

[Go back](#build-in-variables)

**A_LoopField**: Contains the contents of the current field (column) in a loop that is iterating over a delimited file or string.

#### Example:

```ahk
var1 := "apple,banana,orange"

Loop, Parse, var1, `,
{
    MsgBox, Current field: %A_LoopField%
}
```

---

### A_LastKey <a id="a_lastkey"></a>

[Go back](#build-in-variables)

**A_LastKey**: Contains the last key pressed by the user on the page.

#### Example:

```ahk
Sleep, 2000
; Meanwhile press a key
MsgBox, Last key pressed: %A_LastKey%
```

---

### A_ThisHotkey <a id="a_thishotkey"></a>

[Go back](#build-in-variables)

**A_ThisHotkey**: Retrieves the key pressed only inside a label called OnKeyPress.

#### Example:

```ahk
OnKeyPress:
MsgBox, The key pressed inside OnKeyPress: %A_ThisHotkey%
Return
```

---

### A_ScreenWidth <a id="a_screenwidth"></a>

[Go back](#build-in-variables)

**A_ScreenWidth**: Contains the width of the screen in pixels.

#### Example:

```ahk
MsgBox, Screen width: %A_ScreenWidth% pixels
```

---

### A_ScreenHeight <a id="a_screenheight"></a>

[Go back](#build-in-variables)

**A_ScreenHeight**: Contains the height of the screen in pixels.

#### Example:

```ahk
MsgBox, Screen height: %A_ScreenHeight% pixels
```

---

### A_GuiControl <a id="a_guicontrol"></a>

[Go back](#build-in-variables)

**A_GuiControl**: Contains the text of the last control used in a GUI.

#### Example:

```ahk
Gui, Show, h500 w500
Gui, Add, Button, x10 y10 w150 h40 gButtonPress, Press Me
return

ButtonPress:
MsgBox, Last control used: %A_GuiControl%
Return
```

---

### A_TimeIdle <a id="a_timeidle"></a>

[Go back](#build-in-variables)

**A_TimeIdle**: Contains the time in milliseconds that has elapsed since the last input from the user.

#### Example:

```ahk
Sleep, 1500
; Meanwhile move you mouse or press some key or do nothing
MsgBox, Time idle: %A_TimeIdle% milliseconds
```

---

### A_TickCount <a id="a_tickcount"></a>

[Go back](#build-in-variables)

**A_TickCount**: Contains the number of milliseconds elapsed since January 1, 1970, 00:00:00 UTC.

#### Example:

```ahk
StartTime := A_TickCount

; code here
Sleep, 1500

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
```

---

### A_Now <a id="a_now"></a>

[Go back](#build-in-variables)

**A_Now**: Contains the current local time in "Month/Day/Year, Hour:Minute:Second AM/PM" format.

#### Example:

```ahk
MsgBox, Current local time: %A_Now%
```

---

### A_YYYY <a id="a_yyyy"></a>

[Go back](#build-in-variables)

**A_YYYY**: Contains the current year in four digits.

#### Example:

```ahk
MsgBox, Current year: %A_YYYY%
```

---

### A_MM <a id="a_mm"></a>

[Go back](#build-in-variables)

**A_MM**: Contains the current month in two digits.

#### Example:

```ahk
MsgBox, Current month: %A_MM%
```

---

### A_DD <a id="a_dd"></a>

[Go back](#build-in-variables)

**A_DD**: Contains the current day of the month in two digits.

#### Example:

```ahk
MsgBox, Current day: %A_DD%
```

---

### A_MMMM <a id="a_mmmm"></a>

[Go back](#build-in-variables)

**A_MMMM**: Contains the full name of the current month.

#### Example:

```ahk
MsgBox, Full name of current month: %A_MMMM%
```

---

### A_MMM <a id="a_mmm"></a>

[Go back](#build-in-variables)

**A_MMM**: Contains the abbreviated name of the current month.

#### Example:

```ahk
MsgBox, Abbreviated name of current month: %A_MMM%
```

---

### A_DDDD <a id="a_dddd"></a>

[Go back](#build-in-variables)

**A_DDDD**: Contains the full name of the current day of the week.

#### Example:

```ahk
MsgBox, Full name of current day: %A_DDDD%
```

---

### A_DDD <a id="a_ddd"></a>

[Go back](#build-in-variables)

**A_DDD**: Contains the abbreviated name of the current day of the week.

#### Example:

```ahk
MsgBox, Abbreviated name of current day: %A_DDD%
```

---

### A_Hour <a id="a_hour"></a>

[Go back](#build-in-variables)

**A_Hour**: Contains the current hour in two digits (24-hour format).

#### Example:

```ahk
MsgBox, Current hour: %A_Hour%
```

---

### A_Min <a id="a_min"></a>

[Go back](#build-in-variables)

**A_Min**: Contains the current minute in two digits.

#### Example:

```ahk
MsgBox, Current minute: %A_Min%
```

---

### A_Sec <a id="a_sec"></a>

[Go back](#build-in-variables)

**A_Sec**: Contains the current second in two digits.

#### Example:

```ahk
MsgBox, Current second: %A_Sec%
```

---

### A_Space <a id="a_space"></a>

[Go back](#build-in-variables)

**A_Space**: Represents the space key.

#### Example:

```ahk
MsgBox, Hello%A_Space%man
```

---

### A_Tab <a id="a_tab"></a>

[Go back](#build-in-variables)

**A_Tab**: Represents the tab key.

#### Example:

```ahk
;Press F12 in your browser to see the result in the console of your browser.
OutPutdebug, |%A_Tab%Hello man|
```

---

## Backend and Python <a id="backend-and-python"></a>

[Go back](#hth)

Learn about the backend architecture and Python integration in the HTH programming language here.

---

## Editor for Code <a id="editor-for-code"></a>

[Go back](#hth)

Discover the recommended code editor for working with the HTH programming language.

---

## Recommendations <a id="recommendations"></a>

[Go back](#hth)

Get helpful recommendations for optimizing your experience with the HTH programming language.

---

## Script Showcase <a id="script-showcase"></a>

[Go back](#hth)

View a showcase of programs created using the HTH programming language, demonstrating its capabilities.

```

```
