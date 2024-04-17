# HTH: HeavenToHell Programming Language Documentation <a id="hth"></a>

## Table of Contents

1. [Usage and Syntax](#usage-and-syntax)
2. [Features](#features)
3. [Backend and Python](#backend-and-python)
4. [Editors for Code](#editors-for-code)
5. [Script Showcase](#script-showcase)

---

## Usage and Syntax <a id="usage-and-syntax"></a>

[Go back](#hth)

This section provides an overview of the usage and syntax of the HTH programming language.

### Coding Style: Allman Style

In HeavenToHell (HTH) programming, it is crucial to adhere to the Allman coding style to ensure code readability and avoid errors. The Allman style dictates placing curly braces on their own lines, and failure to follow this style may result in errors during execution.

#### Example of Allman Style:

```ahk
nameOfFunc(a, b)
{
    return a + b
}
```

### Note:

- **MUST**: Use the Allman style consistently throughout your HTH code.
- **WILL**: Failure to use the Allman style may lead to errors during execution.

Adhering to the Allman coding style not only helps maintain clean and organized code but also ensures compatibility and error-free execution in HTH programming.

### Syntax Overview

In HeavenToHell (HTH), the coding style follows the Allman style, where curly braces are placed on their own lines. Additionally, comments are denoted by a semicolon `;` for single-line comments and by using semicolon `;` for each line in multi-line comments. There are no block comments.

#### Variables and Data Types

In HTH, variables are declared and assigned using the Allman style, and variable names follow the same conventions as in AutoHotkey. Here's how you declare and assign variables:

```ahk
myNumber := 42
myString := "Hello, World!"
isFlagSet := true
```

HTH supports various data types, including numeric, string, and boolean types.

#### Control Structures

Control structures in HTH, including conditional statements and loops, follow the Allman style as well.

##### If-Else Statements

```ahk
if (condition)
{
    ; Code block executed if condition is true
}
else
{
    ; Code block executed if condition is false
}
```

##### Loops

```ahk
Loop
{
    ; Code block to be repeated
}
```

#### Functions

Functions in HTH are declared using the Allman style, and return statements are in lowercase. Here's how you declare and define functions:

```ahk
nameOfFunc(a, b)
{
    return a + b
}
```

#### Comments

Comments in HTH are denoted by a semicolon `;` for single-line comments and are placed on their own lines for multi-line comments.

```ahk
; This is a single-line comment

; This is
; a multi-line comment
```

### Usage Overview

HTH is designed for simplicity and ease of use, following the Allman coding style throughout the language. It is suitable for various applications, including web development, scripting, and learning programming concepts.

### Example Usage

Here's an example demonstrating the usage of variables, control structures, and functions in HTH:

```ahk
myNumber := 42
myString := "Hello, World!"

if (myNumber > 0)
{
    MsgBox, % "Number is positive: " . myNumber
}
else
{
    MsgBox, % "Number is non-positive: " . myNumber
}

nameOfFunc := nameOfFunc(3, 4)
MsgBox, % "Result of nameOfFunc: " . nameOfFunc
```

WARNING: NEVER NAME A VARIABLE THE SAME NAME AS A FUNCTION NAME

### Conclusion

HTH follows the Allman coding style for consistency and readability. Its simplicity and versatility make it suitable for various programming tasks.

---

## Features <a id="features"></a>

[Go back](#hth)

Explore the various features offered by the HTH programming language in this section.

### Table of Contents

1. [GUI](#gui)
2. [GuiControl](#guicontrol)
3. [Hotkeys](#hotkeys)
4. [Functions](#hth-functions)
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
21. [Variables and Arrays](#variablesandarrays)
22. [Run, Reload and ExitApp](#run-reload-and-exitapp)
23. [#Include](#include)
24. [Comments](#hth-comments)
25. [PlaySound](#play-sound)
26. [GetMousePos and OnMouseClick](#getmousepos-and-onmouseclick)
27. [Title and Icon](#title-and-icon)
28. [StoreLocally](#store-locally)
29. [getUrlParams and reloadWithParams](#geturlparams-and-reloadwithparams)
30. [getDataFromAPI and getDataFromJSON](#getdatafromapi-and-getdatafromjson)
31. [getDataFromEndpoint](#getdatafromendpoint)
32. [isMobileDevice](#ismobiledevice)
33. [isConnectedToBackend](#isconnectedtobackend)
34. [Math Functions](#math-functions)
35. [Build-in Functions](#build-in-functions)
36. [Build-in Variables](#build-in-variables)

---

### GUI <a id="gui"></a>

[Go back](#features)

The GUI feature in HTH allows for the creation of graphical user interfaces with elements such as buttons, text, edit fields, and pictures. Pictures will be encoded as base64 in the HTML file, eliminating the need for the original picture file.

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

### SubCommands <a id="gui-subcommands"></a>

[Go Back](#gui)

This section provides a detailed explanation of the available `SubCommands` for the `Gui` command.

#### Hide

```ahk
Gui, Show, w500 h500
Gui, Add, Text, x20 y20 w100 h20, This is a text control

Sleep, 2000

Gui, Hide

Sleep, 3000

Gui, Show

; or

Gui 2: Show, w500 h500
Gui 2: Add, Text, x20 y20 w100 h20, This is a text control

Sleep, 2000

Gui 2: Hide

Sleep, 3000

Gui 2: Show
```

#### Move

```ahk
Gui, Show, w500 h500
Gui, Add, Text, x20 y20 w100 h20, This is a text control

Sleep, 2000

Gui, Move, x50 y50

Sleep, 3000

Gui, Move, x500 y500

; or

Gui 2: Show, w500 h500
Gui 2: Add, Text, x20 y20 w100 h20, This is a text control

Sleep, 2000

Gui 2: Move, x50 y50

Sleep, 3000

Gui 2: Move, x500 y500
```

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

; or

Color := "ff0000"
Gui, Color, c%Color%

; or

randomColor := ranColor()
Gui, Color, c%randomColor%
; to append a new color you need to do Gui, Show, <and must put something here like w500 h500 or yours otherwize it will not work>
Gui, Show, w500 h500

ranColor()
{
Random, red, 0, 255
Random, green, 0, 255
Random, blue, 0, 255

; Convert each component to hexadecimal and concatenate
hexDigits := "0123456789ABCDEF"
hexRed := SubStr(hexDigits, Floor(red / 16) + 1, 1) . SubStr(hexDigits, Mod(red, 16) + 1, 1)
hexGreen := SubStr(hexDigits, Floor(green / 16) + 1, 1) . SubStr(hexDigits, Mod(green, 16) + 1, 1)
hexBlue := SubStr(hexDigits, Floor(blue / 16) + 1, 1) . SubStr(hexDigits, Mod(blue, 16) + 1, 1)

hexColor := hexRed . hexGreen . hexBlue

;MsgBox, % "Random Color: " . hexColor

return hexColor
}
```

#### Font

```ahk
; Set the font size of the text control
; s = size
Gui, Font, s22

; or

Size := "22"
Gui, Font, s%Size%

; Set the font name of the text control
; f = font
Gui, Font, fCourier

; or

Font := "Courier"
Gui, Font, f%Font%
```

#### -Border

```ahk
; Removes the border of a Gui window
Gui, Font, s20
Gui, Show, x10 y10 w500 h500
Gui, Add, Text, x10 y10 w300 h50, Gui 1

Gui 2: Show, -Border x610 y10 w500 h500
Gui 2: Add, Text, x10 y10 w300 h50, Gui 2
Sleep, 1500

; We need to add '-Border' anytime you move or show, even if you show it after a hide; otherwise, the border will be back.
Gui 2: Move, -Border x810 y10 w500 h500
```

We also have these new parameters for the Button and Edit ONLY:

- c = color
- bg = background color
- f = font name
- r = radius
- -Border = removes the border around the button or the edit
- gr- = gradient
  Gradients are smooth color transitions used in design. You can make them easily [here](https://cssgradient.io/). Just pick colors and settings, then copy the CSS code for your website. It's a quick way to add style! Just don't copy the last semicolon `;`.
  Here's how it might look like:

```ahk
gr := "linear-gradient(90deg, rgba(131,58,180,1) 0%, rgba(253,29,29,1) 50%, rgba(252,176,69,1) 100%)"

; or

Gui, Color, gr-linear-gradient(90deg, rgba(131,58,180,1) 0%, rgba(253,29,29,1) 50%, rgba(252,176,69,1) 100%)

; or

Gui, Color, gr-%gr%

;also

Gui, Add, Button, x10 y10 w140 h40 gr-%gr%

; or

Gui, Add, Edit, x10 y10 w140 h40 gr-%gr%
```

here is an example for all these new parameters for the Button and Edit:

```ahk
gr := getRanGr()

Gui, Color, gr-%gr%
Gui, Show, +websiteMode w%A_ScreenWidth% h%A_ScreenHeight%

color1 := "121212"
color2 := "ffffff"
bgColor := "303030"
fontName := "Courier"
bgGR := "linear-gradient(90deg, rgba(131,58,180,1) 0%, rgba(253,29,29,1) 50%, rgba(252,176,69,1) 100%)"
rad := 20
ff := "    type here"

boxW := 200 + 200 + 15
boxH := 30 + 30 + 20

BoxMiddleX := (A_ScreenWidth - boxW) / 2
BoxMiddleY := (A_ScreenHeight - boxH) / 2

editX1 := 0 + BoxMiddleX
editX2 := 210 + BoxMiddleX
editY1 := 0 + BoxMiddleY
editY2 := 0 + BoxMiddleY

buttonX1 := 30 + BoxMiddleX
buttonX2 := 250 + BoxMiddleX
buttonY1 := 42 + BoxMiddleY
buttonY2 := 42 + BoxMiddleY

Gui, Font, s20
Gui, Add, Edit, x%editX1% y%editY1% w200 h30 gr-%bgGR% cffffff fCourier -border bg%bgColor% r%rad% gEdit1, %ff%
Gui, Font, s17
Gui, Add, Button, x%buttonX1% y%buttonY1% w140 h40 -border fCourier c%color2% bg%bgColor% r%rad% gButton1, Button1

Gui, Font, s20
Gui, Add, Edit, x%editX2% y%editY2% w200 h30 cffffff -border bg303030 r20 gEdit2, %ff%
Gui, Font, s17
Gui, Add, Button, x%buttonX2% y%buttonY2% w140 h40 f%fontName% -border gr-%bgGR% c%color1% bg303030 r20 gButton2, Button2
return

Edit1:
text1 := A_GuiControl
Return

Edit2:
text2 := A_GuiControl
Return

Button1:
MsgBox, % text1
Return

Button2:
MsgBox, % text2
Return

getRanGr()
{
Loop, 9
{
Random, ran%A_Index%, 0, 255
}
Random, deg, 1, 360

ranGR := "linear-gradient(" . deg . "deg, "
ranGR .= "rgba(" . ran1 . "," . ran2 . "," . ran3 . "," . 1 . ") 0%, rgba(" . ran4 . "," . ran5 . "," . ran6 . "," . 1 . ") 50%, rgba(" . ran7
ranGR .= "," . ran8 . "," . ran9 . "," . 1 . ") 100%)"
return ranGR
}
```

### Controls <a id="gui-controls"></a>

[Go Back](#gui)

This section provides information about the controls that can be used within the `Gui` command to create various elements in the graphical user interface.

1. Text - Static Text element
2. Button - Button you can click
3. Edit - Will crete a place to enter text
4. Pictire - Will display a Picture. Pictures can be encoded as base64 in the HTML file, eliminating the need for the original picture file.
5. Toggle - GUI element, allowing users to toggle settings on and off using a convenient toggle slider.
6. Rectangle - Gui element to draw a rectangle
7. Circle - Gui element to draw a Circle
8. Video - Integrated a flexible video player using Gui, Add, Player, ... capable of displaying:
9. DropDownList - Adds a DropDownList control (`Gui, Add, DropDownList`) to a GUI window and make a lable (`gMyDropDown`) to capture the selected option from a list of predefined choices (`Option1|Option2|Option3`).

- YouTube videos: Simply provide the YouTube video URL to play directly within the application.
- URL videos: Play videos from any accessible URL, supporting various video formats.
- Local machine videos: Upload videos from your local machine by specifying a path, which will be encoded in a base64 string embedded in the html output.

```ahk
ranGR := getRanGr()
once := 0
Gui, Font, fCourier
Gui, Color, gr-%ranGR%
Gui, Show, +WebsiteMode w%A_ScreenWidth% h3700

; 1. Text - Text element
Gui, Add, Text, x10 y10 w200 h20, This is a text element

; 2. Edit - Will create a place to enter text
Gui, Add, Edit, x10 y40 w200 h25 r10 bg121212 cffffff gEdit1, Type here...

; 3. Button - Button you can click

; Create a GUI window and add a centered button
Gui, Add, Button, x10 y80 w100 h30 r20 -Border cffffff bg121212 gButton1, Click Me

; 4. Picture - Will display a Picture. You can provide a link or it can be encoded as base64 in the HTML file.
; url
Gui, Add, Picture, x10 y120 w200 h150, https://hd.wallpaperswide.com/thumbs/windows_xp_original-t2.jpg
; a path form your computer
Gui, Add, Picture, x10 y120 w200 h150, C:/path/to/your/your.png

; 5. Toggle - GUI element, allowing users to toggle settings on and off using a convenient toggle slider.
; toggle it on upon loading using on
Gui, Add, Toggle, x10 y280 gToggle1 vS1 on

; 6. Rectangle - GUI element to draw a rectangle
Gui, Add, Rectangle, x10 y320 w100 h50 vRect1
; you can change the color here
GuiControl, Font, Rect1, cff0000

; 7. Circle - GUI element to draw a Circle
Gui, Add, Circle, x120 y320 w50 h50 vCircle1
; you can change the color here
GuiControl, Font, Circle1, cff0000

; 8. Video - Integrated a video player using Gui, Add, Player
; from YouTube
Gui, Add, Player, x10 y380 w400 h300, https://www.youtube.com/watch?v=someyturl

; or

; form a url
Gui, Add, Player, x10 y380 w400 h300, https://www.somewebsite.com/somevideo.mp4

; or

; form your computer
Gui, Add, Player, x10 y380 w400 h300, C:/path/to/your/your.mp4

; 9. DropDownList - Adds a DropDownList control (`Gui, Add, DropDownList`) to a GUI window and make a lable (`gMyDropDown`) to capture the selected option from a list of predefined choices (`Option1|Option2|Option3`).

Gui, Add, DropDownList, x250 y10 gMyDropDown, Option1|Option2|Option3

Gui, Color, c121212
Gui 2: Show, -Border w500 h500

Gui 2: Add, Button, x10 y10 w140 h40 gButton2, Button 2
return

Button2:
MsgBox, You cliked Button 2
Return

Toggle1:
    toggle1value := A_GuiControl
    once++
    if (once > 1)
    {
        MsgBox, % toggle1value
    }
Return

Edit1:
    textFormEditBox := A_GuiControl
Return

Button1:
    MsgBox, % textFormEditBox
Return

MyDropDown:
    MsgBox, You selected %A_GuiControl%
Return

getRanGr()
{
Loop, 9
{
Random, ran%A_Index%, 0, 255
}

Random, deg, 1, 360

ranGR := "linear-gradient(" . deg . "deg, "
ranGR .= "rgba(" . ran1 . "," . ran2 . "," . ran3 . "," . 1 . ") 0%, rgba(" . ran4 . "," . ran5 . "," . ran6 . "," . 1 . ") 50%, rgba(" . ran7
ranGR .= "," . ran8 . "," . ran9 . "," . 1 . ") 100%)"
return ranGR
}
```

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

w := 10 + (150 * rows)
h := 10 + (50 * columns)

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

Example 4

```ahk
Gui, Show, w500 h700
onceTS1 := 0
errorSelectAobject := 0
DropList1Choise := ""
Gui, Add, Toggle, x10 y10 gTS1 vTS1 on, Wanna turn it on?
Gui, Add, DropDownList, x210 y10 h30 gDropList1 vds1 on, Select a object|sdefgh|aesdrgfh|awesdrfgh|szdf|sd
Gui, Add, Button, x10 y50 w140 h40 gButton1 vButton1, Save changes
Gui, Add, Picture, x10 y150 vImage1, https://i.ibb.co/Jpty1B8/305182938-1a0efe63-726e-49ca-a13c-d0ed627f2ea7.png
Sleep, 1500
GuiControl, Move, Image1, x50 y190
Sleep, 1500
GuiControl, Picture, Image1, https://trackmania.exchange/maps/screenshot/normal/165572
return

Button1:
	if (errorSelectAobject = 1) or (DropList1Choise = "")
	{
		MsgBox, You havent select anything from the drop list
		return
	}
	MsgBox, Oh you whent whit the %DropList1Choise%
Return

DropList1:
	if (A_GuiControl = "Select a object")
	{
		MsgBox, 48, , You cannot select this since this is the name of the list!
		errorSelectAobject := 1
		return
	}
	else
	{
		errorSelectAobject := 0
		MsgBox, You clciked %A_GuiControl%
		DropList1Choise := A_GuiControl
	}
Return

TS1:
	onceTS1++
	if (onceTS1 > 1)
	{
		if (A_GuiControl = 1)
		{
			A_GuiControl1 := "On"
		}
		else
		{
			A_GuiControl1 := "Off"
		}
		MsgBox, its %A_GuiControl1%
	}
Return
```

---

### GuiControl <a id="guicontrol"></a>

[Go back](#features)

The `GuiControl` function in HeavenToHell (HTH) serves as a versatile tool for manipulating graphical user interface (GUI) elements with ease and precision. This function empowers HTH developers to dynamically adjust the properties and behaviors of GUI elements based on specific actions.

#### Syntax:

```ahk
GuiControl, Action, ControlID, Param1, Param2, Param3, Param4
```

#### Parameters:

- `Action`: Specifies the action to be performed on the GUI control. Supported actions include:

  - `Move`: Move and resize the control.
  - `Focus`: Set focus on the control.
  - `Text`: Set the text content of the control.
  - `Picture`: Changes the image of the specified ID to a different image, provided that ONLY a URL is valid.
  - `Hide`: Hide the control.
  - `Show`: Show the control.
  - `Enable`: Enable the control.
  - `Disable`: Disable the control.
  - `Font`: Set the font size or color of the control.

- `ControlID`: The unique identifier of the GUI control to be manipulated.

- `Param1`, `Param2`, `Param3`, `Param4`: Additional parameters required for specific actions, as follows:
  - For `Move`: `Param1` is the new X-coordinate, `Param2` is the new Y-coordinate, `Param3` is the new width, and `Param4` is the new height of the control.
  - For `Text`: `Param1` is the new text content of the control.
  - For `Font`: `Param1` is the new font size in pixels and the new color in hexadecimal format (cRRGGBB).

#### Actions:

- `Move`: Moves and resizes the specified control to the provided coordinates and dimensions.

- `Focus`: Sets focus on the specified control, if applicable.

- `Text`: Sets the text content of the specified control to the provided value.

- `Picture`: Changes the image of the specified ID to a different image, provided that ONLY a URL is valid.

- `Hide`: Hides the specified control from view.

- `Show`: Shows the specified control, making it visible.

- `Enable`: Enables the specified control, allowing user interaction.

- `Disable`: Disables the specified control, preventing user interaction.

- `Font`: Sets the font size or the color of the specified control to the provided value.

#### Example Usage:

```ahk
; Move and resize a control with ID "myButton"
GuiControl, Move, myButton, 100, 100, 150, 50

; Set focus on an input field with ID "usernameInput"
GuiControl, Focus, usernameInput

; Changes the text content of a control or text with ID "infoLabel"
GuiControl, Text, infoLabel, Hello, World!

; Hide a control or text with ID "Button3"
GuiControl, Hide, Button3

; Show a control or text bar with ID "Button3"
GuiControl, Show, Button3

; Disable a button with ID "Button3"
GuiControl, Disable, Button3

; Enable a button with ID "Button3"
GuiControl, Enable, Button3

; Set the font size of a control or text with ID "Element2"
; s = to size
GuiControl, Font, Element2, s16

; c = to color
; Set the color of a control or text with ID "Text1"
GuiControl, Font, Text1, cFF0000
```

```ahk
Gui, Show, w500 h700
Gui, Add, Picture, x10 y150 vImage1, https://i.ibb.co/Jpty1B8/305182938-1a0efe63-726e-49ca-a13c-d0ed627f2ea7.png
Sleep, 1500
GuiControl, Move, Image1, x50 y190
Sleep, 1500
GuiControl, Picture, Image1, https://trackmania.exchange/maps/screenshot/normal/165572
```

#### Note:

- Ensure that the specified `ControlID` exists within the GUI environment before invoking `GuiControl`.
- The availability of certain actions may depend on the type of control specified by `ControlID`. Ensure compatibility with the intended control type.
- Parameters such as coordinates, dimensions, font size, and color are specified in pixels or hexadecimal format, as appropriate.
- Take advantage of `GuiControl` to dynamically update and manipulate GUI elements based on user interaction or application logic, enhancing the interactivity and usability of your HTH applications.

---

### Hotkeys <a id="hotkeys"></a>

[Go back](#features)

The `Hotkeys` feature in HeavenToHell (HTH) allows users to define custom keyboard shortcuts that trigger specific subroutines within their applications. With `Hotkeys`, developers can enhance user experience by providing convenient shortcuts for commonly used functions or commands.

#### Syntax:

```ahk
Key::
; Subroutine code
Return
```

#### Parameters:

- `Key`: Specifies the key or key combination that triggers the action. It can include modifiers such as `!` for Alt, `^` for Ctrl, and `+` for Shift. Additionally, it can include any combination of arrow keys (Up, Down, Left, Right).

#### Example Usage:

```ahk
!^+H::
MsgBox, You pressed Alt+Ctrl+Shift+H
Return
```

```ahk
Enter::
; If we have a MsgBox inside this subroutine, we need to sleep for 10 ms otherwise the Enter key will close the MsgBox immediately.
Sleep, 10
MsgBox, You pressed Enter
Return
```

#### Note:

- Users can define multiple hotkeys by repeating the `Key::` syntax with different key combinations and subroutine codes.
- Hotkeys can be used to perform various actions, such as executing functions, displaying messages, or triggering specific events within the application.

#### Additional Hotkeys:

```ahk
; Up arrow key
Up::
; Subroutine code
Return

; Down arrow key
Down::
; Subroutine code
Return

; Left arrow key
Left::
; Subroutine code
Return

; Right arrow key
Right::
; Subroutine code
Return

; Space key
Space::
; Subroutine code
Return

; Backspace key
Backspace::
; Subroutine code
Return
```

The `Hotkeys` feature in HTH provides users with a simple and efficient way to define custom keyboard shortcuts that execute specific subroutines, enabling developers to create more interactive and user-friendly applications. By leveraging hotkeys, developers can enhance productivity and streamline user interactions, contributing to an improved overall user experience.

---

### Functions <a id="hth-functions"></a>

[Go back](#features)

In HeavenToHell (HTH), functions are indispensable for organizing and structuring code efficiently. By encapsulating reusable blocks of code, functions enhance modularity, readability, and maintainability. Adhering to the Allman Style coding convention is crucial for defining functions in HTH, ensuring clarity and consistency in code formatting.

#### Syntax:

```ahk
nameOfFunc(param1, param2, ...)
{
    ; Function body
    return result
}
```

#### Warning:

Ensure that the opening curly brace `{` is placed on a new line when defining functions in HeavenToHell (HTH). Failure to adhere to this convention will result in errors, and the function will not be recognized.

#### Parameters:

- `nameOfFunc`: The name of the function, following the Allman Style convention.
- `param1`, `param2`, ...: Parameters that the function accepts for processing.

#### Example:

```ahk
sum(a, b)
{
    return a + b
}
```

#### Note:

- Consistent indentation and spacing within the function body enhance code readability.
- All functions in HTH are similar to JavaScript's scope, allowing them to be accessed from anywhere within the script.
- You can't declare function inside a function

### Simple Dynamically Function Calls

In HeavenToHell (HTH), simple dynamically function calls provide a convenient way to execute functions based on dynamically generated names or values. This feature enhances flexibility and reduces redundancy in code, allowing for efficient function invocation.

#### Syntax:

To perform a simple dynamically function call in HTH, use the following syntax:

```ahk
func%num%()
```

Where `%num%` represents a dynamically generated value or variable. It's important to note that only one `%var%` can be used at the end of the function name, and it must be placed at the end of the function name.

#### Example:

```ahk
; Define dynamic functions
func1()
{
    print("This is function 1")
}

func2()
{
    print("This is function 2")
}

; Dynamically call functions based on a variable value
num := 1
; Calls func1()
func%num%()

num := 2
; Calls func2()
func%num%()
```

In this example, the functions `func1` and `func2` are defined. By using a variable `num`, different functions can be dynamically called based on its value. The `%num%` placeholder in the function name is replaced by the value of `num` during execution, allowing for dynamic function invocation.

Simple dynamically function calls in HTH enable developers to streamline code execution, especially in scenarios where function names or values are generated dynamically.

#### Usage:

Functions serve various purposes, such as mathematical calculations, data processing, and executing specific actions based on input parameters. Consider the following example illustrating the usage of a function to calculate the sum of two numbers:

```ahk
; Define the sum function
sum(a, b)
{
    return a + b
}

; Call the sum function with arguments
result := sum(5, 10)

; Display the result
MsgBox, The sum is: %result%
```

In this example, the `sum` function takes two parameters `a` and `b`, adds them together, and returns the result. The function is called with arguments `5` and `10`, and the returned result is displayed using a message box.

Functions in HTH empower developers to structure code effectively and promote code reuse. By following the Allman Style convention and leveraging global function scope, developers can create well-organized and maintainable scripts in HeavenToHell.

---

### If, else, else if <a id="if-else-else-if"></a>

[Go back](#features)

The `If`, `else`, and `else if` statements in HeavenToHell (HTH) are fundamental control structures used for making decisions and executing different blocks of code based on specified conditions. These statements provide the ability to create branching logic within scripts, enabling developers to implement conditional behavior.

#### Syntax:

```ahk
if (condition)
{
    ; Code to execute if the condition is true
}
else if (anotherCondition)
{
    ; Code to execute if the first condition is false and this condition is true
}
else
{
    ; Code to execute if all preceding conditions are false
}
```

#### Parameters:

- `condition`: A Boolean expression that evaluates to either true or false.
- `anotherCondition`: An additional Boolean expression used in `else if` statements.

#### Example:

```ahk
; Example demonstrating the usage of if, else if, and else statements

x := 10

if (x > 10)
{
    MsgBox, x is greater than 10
}
else if (x < 10)
{
    MsgBox, x is less than 10
}
else
{
    MsgBox, x is equal to 10
}
```

#### Advanced Usage:

In addition to simple comparisons, HTH supports various logical operators such as `&&` (logical AND), `||` (logical OR), `and`, `or`, and negation `!` (logical NOT). These operators can be combined to form complex conditional expressions.

```ahk
; Example demonstrating the usage of logical operators in conditional expressions

var1 := 3
var2 := 5

if (var1 = 3) && (var2 = 5) or (var2 != 6)
{
    MsgBox, Condition is true
}
else
{
    MsgBox, Condition is false
}
```

Additionally, functions can be used within conditional statements to evaluate conditions dynamically. The `!` operator can be used to negate the result of a function call.

```ahk
; Example demonstrating the usage of function calls and negation in conditional statements

if !(collision())
{
    MsgBox, No collision detected
}
else
{
    MsgBox, Collision detected
}
```

In this example, the `collision` function is called within the `if` statement, and its return value is negated using the `!` operator. If the result of the `collision` function is false (indicating no collision), the message "No collision detected" is displayed. Otherwise, if a collision is detected, the message "Collision detected" is displayed.

#### Note:

- It's important to properly use parentheses to ensure the desired evaluation order when combining logical operators.
- Functions can be called within conditional statements to evaluate conditions dynamically, providing flexibility in script behavior.

The `If`, `else if`, and `else` statements, along with logical operators, provide powerful tools for implementing conditional logic in HeavenToHell (HTH) scripts. By combining these features, developers can create dynamic and responsive applications capable of handling various scenarios and user inputs effectively.

---

### Random <a id="random"></a>

[Go back](#features)

The `Random` feature in HeavenToHell (HTH) enables developers to generate random numbers within specified ranges. This functionality is particularly useful for scenarios where randomness is required, such as in game development, simulations, or randomized algorithms.

#### Syntax:

```ahk
Random, OutputVar, Min, Max
```

#### Parameters:

- `OutputVar`: The variable to store the generated random number.
- `Min`: The minimum value of the range (inclusive).
-
- `Max`: The maximum value of the range (inclusive).

#### Example:

```ahk
; Generate a random number between 1 and 100
Random, randomNumber, 1, 100

; Display the generated random number
MsgBox, Random number: %randomNumber%
```

or

```ahk
var1 := 1
var2 := 100

Random, OutputVar, %var1%, %var2%
; Display the generated random number
MsgBox, Random number: %OutputVar%
```

#### Usage:

The `Random` feature provides a simple yet effective way to introduce randomness into HTH scripts. Whether it's for generating random numbers for game mechanics, simulating probabilistic events, or implementing randomized algorithms, the `Random` function offers flexibility and versatility in handling randomization requirements.

With the `Random` feature in HeavenToHell (HTH), developers can easily incorporate randomness into their scripts, adding an element of unpredictability and dynamism to their applications. Whether it's for game development, simulations, or other scenarios requiring randomness, the `Random` function offers a straightforward solution for generating random numbers within specified ranges.

---

### Sleep <a id="sleep"></a>

[Go back](#features)

The `Sleep` feature in HeavenToHell (HTH) allows developers to introduce delays or pauses in their scripts, which can be useful for various purposes such as controlling the timing of actions, implementing animations, or simulating real-time behavior.

#### Syntax:

```ahk
Sleep, Delay
```

#### Parameters:

- `Delay`: The duration of the pause in milliseconds. This can be an integer or a variable containing the desired delay duration.

#### Example:

```ahk
; Pause script execution for 2 seconds (2000 milliseconds)
Sleep, 2000
```

#### Usage:

The `Sleep` function is commonly used when precise timing is required between consecutive actions in a script. By specifying the desired delay duration, developers can control the pace of script execution, ensuring that actions occur at the intended times.

```ahk
; Example of using Sleep in a script
; This script waits for 3 seconds, then displays a message box
Sleep, 3000
MsgBox, Three seconds have passed!
```

In this example, the `Sleep` function is used to pause the script execution for 3000 milliseconds (3 seconds) before displaying a message box.

#### Note:

- Be mindful of using excessive `Sleep` statements, as they can introduce unnecessary delays and impact script performance.

The `Sleep` function in HeavenToHell (HTH) provides a simple yet effective way to introduce pauses or delays in scripts, allowing developers to control the timing of actions and create more dynamic and interactive applications. Whether it's for controlling animations, simulating real-time behavior, or implementing precise timing in script execution, the `Sleep` function offers versatility and flexibility in managing script flow and timing.

---

### Msgbox <a id="msgbox"></a>

[Go back](#features)

The `MsgBox` function in HeavenToHell (HTH) displays a small window containing text and one or more buttons, allowing developers to interact with users and present information effectively.

#### Syntax:

```ahk
MsgBox, Text
MsgBox, Options, Title, Text, Timeout
```

#### Parameters:

- `Text`: The text displayed inside the message box to instruct the user or present information.

- `Options`: Indicates the type of message box and the possible button combinations. If blank or omitted, it defaults to 0. See the tables below for allowed values.

- `Title`: The title of the message box window.

- `Timeout` (optional): Timeout in seconds. If specified, the message box will be automatically closed after the specified duration.

#### Options for the Options parameter:

The `Options` parameter can be a combination (sum) of values from the following groups:

- **Button Types:**

  - 0: OK (default)
  - 1: OK/Cancel
  - 2: (removed)
  - 3: OK/No/Cancel
  - 4: OK/No
  - 5: OK/Cancel

- **Icon Types:**

  - 16: Stop (Error icon)
  - 32: Question (Question mark icon)
  - 48: Warning (Warning point icon)
  - 64: Information (Information icon)

- **Default Button:**
  - 0: First button is default (default)
  - 256: Second button is default
  - 512: Third button is default

#### Note:

- The `MsgBox` function allows developers to create informative and interactive message boxes, providing users with necessary instructions or information.
- The timeout parameter, if specified, automatically closes the message box after the specified duration, improving user experience and script flow.

#### Examples:

```ahk
; Display a simple message box with text "Hello, World!"
MsgBox, Hello, World!

; Display a message box with custom options, title, and text
MsgBox, 4, Important Message, This is an important message!

; Display a message box with timeout (5 seconds) and custom text
MsgBox, , Warning, This message will self-destruct in 5 seconds., 5

; display varables
var1 := "hello man"
MsgBox, % var1

; display varables + text
var1 := "hello man"
MsgBox, % var1 . " how are you"

;another example
; Title: Question Text: Do you wnat to leave? Buttons: OK/No Icon: Question Default Button: 2nd Timeout: 5 sec
; to get 292 we have OK/No = 4 + Icon Question = 32 + Default Button: 2nd = 256 so 4+32+256 = 292
MsgBox, 292, Question, Do you wnat to leave?, 5
IfMsgBox, OK
{
MsgBox, You clicked OK
}
else
{
MsgBox, You clicked No
} ; end of ifmsgbox

;another example
var4 := 7
var5 := 10
if (var5 > var4)
{
; Title: Error Text: % "var5 is " . var5 . " which is more than var4. var4 is " . var4 Buttons: OK Icon: Error Default Button: 1st Timeout: 10 sec
; to get 16 we have OK = 0 + Icon Error = 16 + Default Button: 1st = 0 so 0+16+0 = 16
MsgBox, 16, Error, % "var5 is " . var5 . " which is more than var4. var4 is " . var4, 10
}
```

By combining values from these groups, developers can customize the appearance and behavior of message boxes to suit their specific requirements.

The `MsgBox` function in HeavenToHell (HTH) provides developers with a versatile tool for creating informative and interactive message boxes, enhancing user experience and facilitating communication between the script and the user. Whether it's for displaying important messages, requesting user input, or providing notifications, the `MsgBox` function offers flexibility and convenience in implementing various messaging scenarios within HTH scripts.

---

### FileRead <a id="fileread"></a>

[Go back](#features)

---

The `FileRead` feature in HeavenToHell (HTH) allows you to read the contents of a file into a variable within your script ONLY UPON TRANSPILATION. It's important to note that when using `FileRead`, you must provide the filename as a literal string without using variables directly in the filename argument.

#### Syntax:

```ahk
FileRead, OutputVar, FileName
```

#### Parameters:

- `OutputVar`: The variable to store the contents of the file.
- `FileName`: The name of the file to read. This must be specified as a literal string without using variables directly in the filename argument.

#### Example:

```ahk
; Read text content from the specified file
FileRead, FileContent, FileName.txt

; Display the content of the file
MsgBox, %FileContent%
```

#### Note:

- Ensure that the filename is provided as a literal string without using variables directly in the filename argument.
- The contents of the file are read into the specified variable (`OutputVar`), allowing you to manipulate or display the file contents as needed within your script.

By following these guidelines, you can effectively use the `FileRead` feature in HeavenToHell (HTH) to read text content from external files and incorporate it into your script.

---

### FileAppend <a id="fileappend"></a>

[Go back](#features)

---

The `FileAppend` feature in HeavenToHell (HTH) enables you to append text content to a file. Since HTH runs within a browser environment and cannot directly save files to the device, using `FileAppend` will trigger a file download in the browser instead of directly modifying files on the device.

#### Syntax:

```ahk
FileAppend, %TextToAppend%, FileName
```

#### Parameters:

- `TextToAppend`: The text content to append to the file.
- `FileName`: The name of the file to which the text will be appended. This must be specified as a literal string without using variables directly in the filename argument.

#### Example:

```ahk
; Append text content to the specified file
text := "hello man"
FileAppend, %text%, FileName.txt
```

#### Note:

- Since HTH runs within a browser environment and cannot directly save files to the device, using `FileAppend` will trigger a file download in the browser instead of directly modifying files on the device.
- Ensure that the filename is provided as a literal string without using variables directly in the filename argument.
- The specified `TextToAppend` will be appended to the end of the file specified by `FileName`.

With the `FileAppend` feature in HeavenToHell (HTH), you can easily trigger file downloads in the browser by appending text content to files, facilitating tasks such as logging, data collection, and file management within your scripts.

---

### SetTimer <a id="settimer"></a>

[Go back](#features)

In HeavenToHell (HTH), the `SetTimer` command is used to create and control timers within the script. Timers allow developers to execute specific actions or functions at regular intervals, providing a mechanism for scheduling tasks and automating processes.

#### Syntax:

```ahk
SetTimer, LabelName, Option
```

#### Parameters:

- `LabelName`: The name of the label or subroutine to be executed when the timer elapses.
- `Option`: Specifies the interval and state of the timer. It can take one of the following values:
  - `Interval`: Specifies the interval in milliseconds at which the timer should elapse and trigger the execution of the specified label or subroutine.
  - `On`: Starts or enables the timer.
  - `Off`: Stops or disables the timer.

#### Example 1: Starting a Timer

```ahk
; Start the timer with an interval of 2000 milliseconds (2 seconds)
SetTimer, TimerLabel, 2000

; After some time or based on certain conditions, turn off the timer

; Wait for 10 seconds
Sleep, 10000

; Stop the timer
SetTimer, TimerLabel, Off

return
; Define a label to be executed by the timer
TimerLabel:
    ; Perform actions or execute code here
    MsgBox, Timer elapsed! This is a recurring message.
Return
```

#### Example 2: Stopping a Timer

```ahk
; Start the timer with an interval of 2000 milliseconds (2 seconds)
SetTimer, TimerLabel, 2000

; After some time or based on certain conditions, turn off the timer

; Wait for 5 seconds
Sleep, 5000

; Stop the timer
SetTimer, TimerLabel, Off

; Later, based on other conditions or user interaction, turn the timer back on

; Wait for 5 seconds
Sleep, 5000

; Restart the timer
SetTimer, TimerLabel, On

return
; Define a label to be executed by the timer
TimerLabel:
    ; Perform actions or execute code here
    MsgBox, Timer elapsed! This is a recurring message.
Return
```

#### Note:

- Timers in HTH typically involve setting up a label or subroutine to be executed at specified intervals using the `SetTimer` command.
- The `Option` parameter determines the behavior of the timer:
  - When `Interval` is specified, the timer will elapse at the specified interval and trigger the execution of the specified label or subroutine.
  - When `On` is specified, the timer is started or enabled, allowing it to trigger at the specified interval.
  - When `Off` is specified, the timer is stopped or disabled, preventing it from triggering until it is re-enabled using the `On` option.

#### Usage:

Timers are commonly used in scripts to perform periodic tasks, such as checking for updates, refreshing data, or triggering specific actions at regular intervals. By utilizing timers, developers can automate repetitive tasks and improve the efficiency and responsiveness of their scripts and applications.

#### Important Note:

- When using timers, ensure that the specified label or subroutine is defined and contains the necessary code to be executed when the timer elapses.
- Use caution when enabling or disabling timers dynamically during script execution to avoid unintended behavior or conflicts with other script logic.

The `SetTimer` command in HTH provides a flexible and powerful way to incorporate timed events and automation into scripts, enabling developers to create more dynamic and responsive applications. By leveraging timers, developers can enhance the functionality and usability of their scripts by scheduling tasks and executing actions at specified intervals.

---

### Labels <a id="labels"></a>

[Go back](#features)

Labels in HeavenToHell (HTH) serve as markers within the script to designate specific sections of code for execution. They are commonly used in conjunction with `Gosub` commands to redirect the script flow to the labeled sections.

#### Syntax:

Labels are defined using a colon `:` followed by the label name.

Example:

```ahk
LabelName:
    ; Code to be executed within the label
```

#### Usage:

Labels are typically used in conjunction with `Gosub` commands to direct the script flow to the labeled section. The `Gosub` command is used to call a subroutine defined by a label.

#### Example:

```ahk
; We will go to the label
gosub, Label1

; Use lowercase return to stop code execution after the label
return

Label1:
    MsgBox, We are in Label1
    ; Use uppercase Return to end the label
    Return
```

In this example, the script invokes the `Gosub` command to execute the code within the `Label1` section. Once the execution of the labeled code is complete, the script continues execution after the `Gosub` command.

#### Note:

- Labels provide a means to organize and structure the script flow, making it easier to manage and maintain complex scripts.
- Always use an uppercase `Return` at the end of a label to signify its termination, ensuring proper script execution.
- Labels are often utilized in combination with conditional statements and loops to control the flow of the script based on certain conditions or criteria.

For more information on `Return`, refer to [Return/return](#return).

---

### Gosub <a id="gosub"></a>

[Go back](#features)

In HeavenToHell (HTH), the `Gosub` command is used to call a subroutine defined by a label within the script. Subroutines are sections of code marked by labels, and the `Gosub` command redirects the script flow to execute the code within the specified subroutine.

#### Syntax:

```ahk
Gosub, Target
```

#### Parameters:

- `Target`: The name of the label marking the subroutine to be executed.

#### Usage:

The `Gosub` command is commonly used to organize code into manageable sections and facilitate code reuse by invoking specific subroutines as needed.

#### Example:

Consider the following example demonstrating the usage of the `Gosub` command:

```ahk
; Define a label marking the start of the subroutine
Subroutine1:
    MsgBox, This is Subroutine 1
    Return

; Define another label marking the start of another subroutine
Subroutine2:
    MsgBox, This is Subroutine 2
    Return

; Main script execution begins here
MsgBox, Main script execution started

; Call Subroutine1 using Gosub
Gosub, Subroutine1

; Continue main script execution after Subroutine1
MsgBox, Back to main script execution

; Call Subroutine2 using Gosub
Gosub, Subroutine2

; Continue main script execution after Subroutine2
MsgBox, Script execution completed
```

#### Output:

```
Main script execution started
This is Subroutine 1
Back to main script execution
This is Subroutine 2
Script execution completed
```

In this example, the `Gosub` command is used to call two different subroutines (`Subroutine1` and `Subroutine2`) defined by labels within the script. The script flow is redirected to execute the code within each subroutine, and after the execution of each subroutine, the script continues execution from where the `Gosub` command was called.

#### Note:

- Subroutines defined by labels provide a way to organize code into logical sections and improve code readability and maintainability.
- Always use an uppercase `Return` at the end of a subroutine to signify its termination, ensuring proper script execution.
- The `Gosub` command is typically used within conditional statements, loops, or other control structures to direct the script flow based on certain conditions or criteria.

---

### InputBox <a id="inputbox"></a>

[Go back](#features)

The `InputBox` feature in HeavenToHell (HTH) allows developers to prompt users for input through a dialog box. This functionality is particularly useful for gathering user information or accepting user-defined values during script execution.

#### Syntax:

```ahk
InputBox, OutputVar, Title
```

#### Parameters:

- `OutputVar`: The variable where the input provided by the user will be stored.
- `Title`: The title or caption of the input dialog box displayed to the user.

#### Example:

```ahk
; Prompt the user to enter their name
InputBox, UserName, Please enter your name

; Display a message box with the entered name
MsgBox, Hello, %UserName%! Welcome to HeavenToHell.
```

#### Note:

- The `InputBox` command accepts only two parameters: `OutputVar` and `Title`.
- Avoid using additional parameters or commas in the command.
- Variables cannot be used as titles for the input dialog box.

The `InputBox` feature in HeavenToHell (HTH) provides a simple yet effective way to gather user input during script execution, enabling developers to create interactive applications and scripts with ease.

---

### OnKeyPress <a id="onkeypress"></a>

[Go back](#features)

In HeavenToHell (HTH), the `OnKeyPress` event is triggered when the user presses a normal key on the keyboard. This event provides a way to capture and respond to keypress events within the script.

#### Syntax:

```ahk
OnKeyPress:
    ; Code to be executed when a key is pressed
    MsgBox, You Pressed %A_ThisHotkey%
Return
```

#### Usage:

The `OnKeyPress` event allows developers to define specific actions or behaviors to be performed in response to user keystrokes. This can include displaying messages, performing calculations, updating variables, or triggering other events within the script.

#### Example:

```ahk
OnKeyPress:
    ; Display a message indicating the key pressed by the user
    MsgBox, You Pressed %A_ThisHotkey%
Return
```

In this example, the `OnKeyPress` event is used to capture keypress events. When a key is pressed, a message box is displayed indicating the key that was pressed using the `%A_ThisHotkey%` variable, which contains the name of the hotkey or key combination pressed by the user.

#### Note:

- Ensure to include a `Return` statement with a capital letter "R" at the end of the `OnKeyPress` event block to signify its completion and prevent further execution of the script.
- The `OnKeyPress` event can be used to create custom keyboard shortcuts, implement keyboard-based navigation, or handle user input in various interactive applications developed using HeavenToHell.

The `OnKeyPress` event in HTH provides a versatile mechanism for responding to user keystrokes and enhancing the interactivity of scripts and applications. By capturing and processing keypress events, developers can create dynamic and responsive user experiences within their scripts.

---

### Return/return <a id="return"></a>

[Go back](#features)

The `Return` command in HeavenToHell (HTH) serves distinct purposes based on its context within the script. It's crucial to differentiate between the uppercase `Return` and lowercase `return` to ensure proper script functionality and execution control.

#### 1. Uppercase `Return` at the End of Labels, Subroutines, and Hotkeys:

When concluding a label, subroutine, or hotkey block, use the uppercase `Return` at the end to signify its termination. This ensures clarity in script structure and prevents unexpected behavior.

Example:

```ahk
Label1:
    ; Code for Label1
    if (var1 = 5)
    {
        ; Use lowercase return to stop label execution any further
        return
    }
    ; Use uppercase Return to end the label
    Return
```

#### 2. Lowercase `return` to Stop Code Execution:

Place lowercase `return` anywhere in the script to halt code execution after its occurrence. This is particularly useful when you want to prevent the script from proceeding further under certain conditions.

Example:

```ahk
If (condition)
{
    ; Code to be executed if the condition is met

    ; Use lowercase return to stop code execution
    return
}

; Code that should only run if the condition is not met
```

#### 3. Lowercase `return` in Functions:

Inside functions, utilize lowercase `return` to exit the function and return a value if necessary. This maintains consistency in coding style within the context of functions.

Example:

```ahk
sum(a, b)
{
    ; Function body
    return a + b
}
```

By understanding and applying these conventions, developers can manage script flow effectively, ensure proper termination of blocks, and enhance code readability in HeavenToHell scripts.

---

### IfMsgBox <a id="ifmsgbox"></a>

[Go back](#features)

The `IfMsgBox` command in HeavenToHell (HTH) enables conditional execution of code based on the user's response to a previous `MsgBox` command. This feature is particularly useful for implementing interactive dialogs and handling user input within scripts.

#### Syntax:

```ahk
IfMsgBox, ButtonName
{
    ; Code to be executed if the specified button was pressed
} ; end of ifmsgbox
```

#### Parameters:

- `ButtonName`: One of the following strings representing which button the user pressed in the most recent `MsgBox` command:
  - `No`
  - `OK`
  - `Cancel`

#### WARNING:

**IMPORTANT:** Ensure to include `} ; end of ifmsgbox` at the end of each `IfMsgBox` block to properly terminate the conditional statement. Failure to do so will lead to an error in the script execution.

#### Example:

```ahk
; Prompt the user with a message box
MsgBox, 36, Title Here, OK or No

; Check the user's response
IfMsgBox, OK
{
    MsgBox, You clicked on OK
} ; end of ifmsgbox
```

#### Example with `else`:

```ahk
; Prompt the user with a message box
MsgBox, 36, Title Here, OK or No

; Check the user's response
IfMsgBox, OK
{
    MsgBox, You clicked on OK
}
else
{
    MsgBox, You clicked on No
} ; end of ifmsgbox
```

#### Usage:

The `IfMsgBox` command is used to determine which button the user pressed in response to a previous `MsgBox` command. Based on the user's selection, the script can execute different actions or perform specific tasks.

By incorporating `IfMsgBox` into scripts, developers can create interactive dialogues, prompt users for input, and respond dynamically based on user choices, enhancing the interactivity and usability of their applications in HeavenToHell (HTH) environments.

---

### OutputDebug <a id="outputdebug"></a>

[Go back](#features)

The `OutputDebug` feature in HeavenToHell (HTH) provides a method for sending debug messages to the console output during script execution. This functionality is invaluable for debugging and troubleshooting scripts, allowing developers to inspect variable values, track program flow, and identify potential issues.

#### Syntax:

```ahk
OutputDebug, Message
```

#### Parameters:

- `Message`: The message to be output to the console for debugging purposes.

#### Example:

```ahk
; Output a debug message to the console
OutputDebug, Debugging information: Variable1=%Variable1%, Variable2=%Variable2%
```

#### Usage:

The `OutputDebug` command is typically used for displaying informative messages, variable values, or status updates during script execution. These messages are compiled to `console.log` statements when the script is compiled to JavaScript, making it easier to debug and diagnose issues in scripts running in various environments.

#### Note:

The output generated by `OutputDebug` can be viewed in the browser console. To access the browser console, typically press F12 in any browser and navigate to the console tab. This allows developers to monitor the debug messages and analyze script behavior during execution.

By leveraging the `OutputDebug` feature, developers can streamline the debugging process, identify and resolve errors more efficiently, and ensure the smooth operation of their scripts in HeavenToHell (HTH) environments.

---

### Loop <a id="loop"></a>

[Go back](#features)

The `Loop` feature in HeavenToHell (HTH) provides a mechanism for repeating a block of code a specified number of times or until a certain condition is met. This functionality is essential for automating repetitive tasks, iterating over data structures, and implementing various control flow structures within scripts.

#### Syntax:

```ahk
Loop, Count
{
    ; Code block to be repeated
}
```

or

```ahk
Loop
{
    ; Code block to be repeated until a condition is met
    if (condition)
    {
        ; Code to execute if the condition is true
        break
    }
}
```

#### Parameters:

- `Count`: Optional. Specifies the number of iterations to execute the loop. If omitted, the loop will continue indefinitely until a `break` statement or other termination condition is encountered.

#### Example 1: Looping a Specific Number of Times

```ahk
; Loop 5 times and display a message
Loop, 5
{
    MsgBox, Iteration %A_Index%
}
```

#### Output 1:

```
Iteration 1
Iteration 2
Iteration 3
Iteration 4
Iteration 5
```

#### Example 2: Looping Until a Condition is Met

```ahk
; Loop until a condition is met
Loop
{
    ; Code block to be repeated
    if (A_Index >= 5)
    {
        ; Exit the loop if the condition is true
        break
    }
}
```

In this example, the loop continues indefinitely until the condition `A_Index >= 5` is met. Once the condition is true, the loop terminates using the `break` statement.

#### Note:

- The loop variable `A_Index` contains the current iteration index within the loop.
- The `break` statement can be used to exit the loop prematurely based on a specific condition.
- The `Loop` feature provides flexibility in controlling the flow of execution within scripts, allowing for both fixed iteration counts and dynamic termination conditions.

The `Loop` feature in HeavenToHell (HTH) offers a versatile mechanism for iterating over code blocks, enabling developers to automate repetitive tasks and implement various control flow structures within their scripts.

---

### Loop, Parse <a id="loop-parse"></a>

[Go back](#features)

The `Loop, Parse` feature in HeavenToHell (HTH) facilitates the parsing of strings into separate elements based on a specified delimiter. This functionality is particularly useful for breaking down and processing data stored in delimited formats.

#### Syntax:

```ahk
Loop, Parse, InputString, Delimiters, OmitChars
{
    ; Action to be performed for each parsed element
    ; A_Index contains the current loop iteration index
    ; A_LoopField contains the current parsed element
}
```

#### Parameters:

- `InputString`: The string to be parsed.
- `Delimiters`: A string containing one or more characters used as delimiters for parsing. By default, if no delimiters are specified, each character in the input string will be treated as a separate element.
- `OmitChars`: Optional. A string containing one or more characters to be omitted during parsing.

#### Example 1: Parse Each Character

```ahk
; Example input string
inputString := "Hello World"

; Parse the input string character by character
Loop, Parse, inputString
{
    ; A_LoopField contains the current parsed character
    MsgBox, Character %A_Index%: %A_LoopField%
}
```

#### Output 1:

```
Character 1: H
Character 2: e
Character 3: l
Character 4: l
Character 5: o
Character 6:
Character 7: W
Character 8: o
Character 9: r
Character 10: l
Character 11: d
```

#### Example 2: Parse Using `n` and `r` Delimiters

```ahk
; Example input string with newline and carriage return
inputString := "Line 1`nLine 2`rLine 3"

; Parse the input string using `n` and `r` as delimiters
Loop, Parse, inputString, `n, `r
{
    ; A_LoopField contains the current parsed line
    MsgBox, Line %A_Index%: %A_LoopField%
}
```

#### Output 2:

```
Line 1: Line 1
Line 2: Line 2
Line 3: Line 3
```

#### Example 3: Parse Using Commas as Delimiters

```ahk
; Example input string with commas
var1 := "Apple,Orange,Banana"

; Parse the input string using commas as delimiters
Loop, Parse, var1, `,
{
    ; A_LoopField contains the current parsed element
    MsgBox, Fruit %A_Index%: %A_LoopField%
}
```

#### Output 3:

```
Fruit 1: Apple
Fruit 2: Orange
Fruit 3: Banana
```

#### Example 4: Parse Using Pipe as Delimiters

```ahk
; Example input string with pipes
var2 := "Alpha|Beta|Gamma"

; Parse the input string using pipes as delimiters
Loop, Parse, var2, |
{
    ; A_LoopField contains the current parsed element
    MsgBox, Value %A_Index%: %A_LoopField%
}

; or

; Example input string with pipes
var2 := "Alpha|Beta|Gamma"

; Parse the input string using pipes as delimiters
Loop, Parse, var2, "|"
{
    ; A_LoopField contains the current parsed element
    MsgBox, Value %A_Index%: %A_LoopField%
}
```

#### Output 4:

```
Value 1: Alpha
Value 2: Beta
Value 3: Gamma
```

In these examples, the `Loop, Parse` feature is utilized to parse the input strings into separate elements based on the specified delimiters. Each example demonstrates parsing the input string using different delimiters (`n`, `r`, `,`, `|`) to extract individual elements. The loop variable `A_LoopField`contains the current parsed element during each iteration, and`A_Index` contains the current loop iteration index.

The `Loop, Parse` feature in HTH provides a convenient and efficient way to process delimited strings, making it easier to work with structured data in various applications. Whether dealing with configuration settings, text processing, or other delimited data formats, the `Loop, Parse` functionality offers a powerful tool for data manipulation and extraction within HeavenToHell scripts.

---

### Variables and Arrays <a id="variablesandarrays"></a>

[Go back](#features)

1. [Variables](#variables)
2. [Arrays](#arrays)

### Variables <a id="variables"></a>

[Go back](#variablesandarrays)

Variables in HeavenToHell (HTH) are used to store and manipulate data values within scripts. They provide a means of storing information that can be referenced and modified throughout the script.

#### Declaration and Assignment:

Variables in HTH are dynamically typed, meaning they can hold values of any data type without requiring explicit declaration. To assign a value to a variable, use the variable name followed by the assignment operator `:=`. For example:

```ahk
myNumber := 42
myString := "Hello, World!"
isFlagSet := true
```

#### Data Types:

HTH supports various data types for variables, including:

- **Numeric**: Integers, decimals, and floating-point numbers.
- **String**: Textual data enclosed in double quotes.
- **Boolean**: True or false values.

#### Naming Convention:

Variable names in HTH are case-insensitive and can consist of letters, digits, and underscores. However, they must begin with a letter. Descriptive names are recommended to reflect the purpose or content of the variable for better code readability.
Don't declare variables with names like let, var, or const since this will result in an error upon execution.

WARNING: NEVER NAME A VARIABLE THE SAME NAME AS A FUNCTION NAME

#### Scope:

Variables in HTH have the same scope rules as JavaScript, as HTH transpiles to JavaScript. This means:

- **Global Scope**: Variables declared outside of any function or block have global scope and can be accessed from anywhere within the script.
- **Local Scope**: Variables declared inside a function or block have local scope and are accessible only within that function or block.

#### Example:

```ahk
; Declare and assign variables
myNumber := 42
myString := "Hello, World!"
isFlagSet := true

; Display variable values
MsgBox, % "Number: " . myNumber . "`nString: " . myString . "`nFlag: " . isFlagSet
```

### Using Variables in Features

Variables in HeavenToHell (HTH) can be utilized in various features to enhance flexibility and customization. Here's how to use variables in different contexts, ensuring to follow the specified methods:

#### 1. Normal Usage:

In normal usage, variables are concatenated with other strings or values using the `.` operator. Here is all the places you MUST use it.

1. In MsgBox:
   Specifically, in a MsgBox, we need to start with `%` just like down below. Make sure there is a space both before and after `%`:

```ahk
MsgBox, % "var1 is " . var1
```

2. In declaring varibales ALL varibales are declares in this way but no need like in Msgbox to have `%` before it here is an exmpale:

```ahk
; numbers
var1 := 56

; string
var2 := "this is a string"

; pass varibales
var2 := var4

; concatenated
var3 := var%numOfVar%

; concatenated this way
var%numOfVar% := 6

; more
var4 := "the var1 is = to " . var1

; or
var4 := "the var1 is = to " . var%numOfVar%

; you can also do more
var8 := var7 . " was the number of tries and we have " . %var1% . "made it and so far we have " . var%numOfVar%
```

#### 2. Single Usage:

In single usage, variables are enclosed within `%` symbols and directly inserted into the script. For example:

```ahk
Gui, Add, Text, x%x% y%y% w150 h%h%, %Text%
```

#### 3. Once with Concatenation:

In this usage, variables are concatenated with other strings or values using the `.` operator, but the variable value is used only once. For example:

```ahk
Random, ran, hello%var1%, hello%var3%
```

#### 4. Text with `%vars%`:

In this usage, variables are embedded within `%` symbols directly within a string to include their values. For example:

```ahk
MsgBox, text and var1 is %var1%
```

Please note: In these examples, ensure to follow the specified methods and refrain from using other types of variable usage for consistency and compatibility within HeavenToHell (HTH).

#### Note:

- Variable names are case-insensitive.
- Avoid using reserved keywords as variable names to prevent conflicts.
- Ensure descriptive variable names for clarity and maintainability.
- Initialize variables before using them to avoid unexpected behavior.

Variables play a crucial role in storing and manipulating data within HeavenToHell (HTH) scripts, providing developers with the flexibility to create dynamic and interactive applications.

### Arrays <a id="arrays"></a>

[Go back](#variablesandarrays)

Arrays in HTH allow for the storage of multiple values in a single variable. Arrays can contain a mixture of integers, strings, and variable references.

#### Example:

```ahk
; Define a variable 'ji' containing the string "mello"
ji := "mello"
; Define an array 'array' containing integers, a string, and a variable reference
array := [1, 3, 4, 5, 7, "jello", ji]

; To use the array with Loop, Parse, we need to convert it to a string, as HTH doesn't support direct array iteration

; Concatenate 'array' with a string on both sides to convert it to a string
array := "a" . array . "a"

; Trim the left and right characters from the string to remove the added characters
StringTrimRight, array, array, 1
StringTrimLeft, array, array, 1

; Now 'array' contains the string representation of the original array

all := ""
; Iterate over the elements of 'array' using commas as delimiters
Loop, Parse, array, `,
{
	; Trim whitespace from the current element
    element := Trim(A_LoopField)

    if (RegExMatch(element, "^\\d+$"))
    {
        MsgBox, The element: %element% contains an integer.

		; Convert the string element to an integer using ParseInt
        element := ParseInt(A_LoopField)
    }
    else
    {
        MsgBox, The element: %element% contains a string.
    }

	all .= element . "`n"
}

StringTrimRight, all, all, 1
; Display the value of all elements
OutputDebug, %all%

; We should see:
/*
1
3
4
5
7
jello
mello
*/
```

This example demonstrates how to define and iterate over an array in HTH, handling both integer and string elements appropriately.

---

### Run, Reload and ExitApp <a id="run-reload-and-exitapp"></a>

[Go back](#features)

1. [Run](#run)
2. [Reload](#reload)
3. [ExitApp](#exitapp)

### Run <a id="run"></a>

[Go back](#run-reload-and-exitapp)

The `Run` feature in HeavenToHell (HTH) enables developers to open specific websites directly from their scripts. This functionality is particularly useful for automating tasks that involve interacting with web pages.

#### Syntax:

```ahk
Run, Target
```

#### Parameters:

- `Target`: Specifies the target URL or path of the website or application to be launched. This can be a direct URL, a variable containing the URL, or a concatenation of strings to form the URL.

#### Examples:

```ahk
; Launch the example.com website directly
Run, https://www.example.com

; Define the URL as a variable and launch it
var1 := "https://www.example.com"
Run, %var1%

; Concatenate strings to form the URL and launch it
var2 := "https://www."
var3 := "example.com"
Run, % var2 . var3

; Concatenate strings directly within the Run command
Run, % var2 . "example.com"
```

#### Usage:

The `Run` function provides a convenient way to open websites or launch external applications directly from HTH scripts. Developers can specify the target URL or path as a direct string, a variable containing the URL, or concatenate strings to form the URL dynamically.

```ahk
; Example of launching a website using the Run function
varWebsite := "https://www.example.com"
Run, % varWebsite
```

In this example, the `Run` function is used to launch the example.com website by passing the URL stored in the `varWebsite` variable.

#### Note:

- Ensure that the target URL or path provided to the `Run` function is valid and accessible.

The `Run` feature in HeavenToHell (HTH) offers a straightforward way to launch websites directly from scripts, providing developers with greater flexibility and automation capabilities. The `Run` function simplifies the process of launching websites from within HTH scripts.

### Reload <a id="reload"></a>

[Go back](#run-reload-and-exitapp)

The `Reload` feature in HeavenToHell (HTH) allows developers to reload the currently active webpage directly from their scripts. This functionality is particularly useful for refreshing content dynamically without manually refreshing the page.

#### Syntax:

```ahk
Reload
```

#### Examples:

```ahk
; Reload the currently active webpage
Reload
```

#### Usage:

To reload a currently active webpage, simply use the `Reload` command without specifying a target.

```ahk
; Reload the currently active webpage
Reload
```

This command will refresh the content of the webpage, allowing developers to update information dynamically.

#### Note:

- The `Reload` command is used to refresh the content of the currently active webpage, providing developers with the capability to update information dynamically without manual intervention.

### ExitApp <a id="exitapp"></a>

[Go back](#run-reload-and-exitapp)

The `ExitApp` feature in HeavenToHell (HTH) allows developers to close the currently active tab or browser window directly from their scripts. This functionality is particularly useful for terminating script execution or closing browser tabs programmatically.

#### Syntax:

```ahk
ExitApp
```

#### Examples:

```ahk
; Close the currently active tab or browser window
ExitApp
```

#### Usage:

To close the currently active tab or browser window, use the `ExitApp` command without specifying a target.

```ahk
; Close the currently active tab or browser window
ExitApp
```

This command will terminate the script execution and close the tab or browser window where the script is running.

#### Note:

- The `ExitApp` command is used to terminate script execution and close the currently active tab or browser window, providing developers with the capability to end script operation and close the associated browsing context.

---

### #Include <a id="include"></a>

[Go back](#features)

---

The `#Include` directive in HeavenToHell (HTH) allows developers to include external scripts into their main script, enabling modularization and code reuse. This feature is particularly useful for organizing large scripts into smaller, more manageable components, as well as for incorporating libraries or utility functions.

#### Syntax:

```ahk
#Include FileName
```

#### Parameters:

- `FileName`: The name of the `.hth` script to be included. This can be a relative or absolute path to the file.

#### Example:

```ahk
#Include myLibrary.hth
```

#### Usage:

The `#Include` directive is commonly used to include external script files containing functions, libraries, or utility code that can be reused across multiple scripts. By separating reusable code into separate files and including them using `#Include`, developers can improve code organization, readability, and maintainability.

```ahk
; Example of using #Include directive to include a library file
#Include MathLibrary.hth

; Call a function from the included library
result := Add(5, 10)

; Display the result
MsgBox, The sum is: %result%
```

In this example, the `#Include` directive is used to include a script file named `MathLibrary.hth`, which contains a function named `Add` for adding two numbers. The `Add` function is then called from the included library file, and the result is displayed using a message box.

#### Note:

- When using the `#Include` directive, ensure that the specified file path is correct and that the included file is accessible from the main script.
- It's recommended to include only necessary files and avoid excessive inclusion of unnecessary scripts to maintain script performance and readability.

The `#Include` directive in HeavenToHell (HTH) provides a convenient and efficient way to modularize scripts and incorporate reusable code from external libraries. By leveraging the `#Include` directive, developers can enhance code organization, promote code reuse, and streamline the development process, ultimately leading to more maintainable and scalable scripts.

---

### Comments <a id="hth-comments"></a>

[Go back](#features)

In HeavenToHell (HTH), comments play a vital role in enhancing code readability and providing additional context for developers.

#### Syntax:

```ahk
; This is a single-line comment in HeavenToHell (HTH)
```

```ahk
/*
this is a block comment
this is a block comment
this is a block comment
*/
```

#### Usage:

Single-line comments are prefixed with a semicolon `;` and are typically placed on separate lines to ensure clarity and readability. They are used to add explanatory notes, document code behavior, or temporarily disable code segments without removing them entirely.

```ahk
; Define variables
var1 := 5
; Initialize var1 with value 5

var2 := 10
; Initialize var2 with value 10

; Calculate the sum of var1 and var2
result := var1 + var2
; Store the result in the result variable

; Display the result
MsgBox, The sum is: %result%
; Show the sum in a message box
```

In this example, single-line comments are placed on separate lines to document variable initialization, calculation, and message display steps, providing clarity and context to the code.

#### Warning:

Do not add comments on the same line as code statements in HeavenToHell (HTH). Placing comments inline with code is not supported.

**DO NOT** place comments on the same line as code statements in HeavenToHell (HTH).

#### Note:

- Single-line comments should be concise and focused, providing relevant information to aid in code understanding.

Comments in HeavenToHell (HTH) are invaluable tools for improving code comprehension and facilitating collaboration among developers. By leveraging single-line comments effectively, developers can create well-documented and maintainable scripts in HeavenToHell.

---

### PlaySound <a id="play-sound"></a>

[Go back](#features)

The `SoundPlay` command in HeavenToHell (HTH) allows users to control audio playback and manage sound-related actions within their applications. This command is designed to be used interactively with user-triggered events, ensuring a seamless and engaging audio experience.

#### Syntax:

```ahk
SoundPlay, Command, Parameter
```

#### Parameters:

- `Command`: Specifies the action to perform on the audio.

  - Possible commands include:
    - `Play`: Plays audio specified by the `Parameter`.
    - `Pause`: Pauses the currently playing audio.
    - `Resume`: Resumes the paused audio playback.
    - `Stop`: Stops the currently playing audio and resets its position.
    - `Mute`: Mutes the audio playback.
    - `Unmute`: Unmutes the audio playback.
    - `Volume`: Sets the volume level (from 0 to 100).

- `Parameter`: Specifies additional information based on the `Command`.
  - For `Play` command:
    - Provide the audio file path or a URL.
  - For `Volume` command:
    - Specify the volume level (0 to 100).

#### Example Usage:

##### Basic Commands:

```ahk
; Play audio from a URL
SoundPlay, Play, https://example.com/audio.mp3

; Play audio from your specified path (to be encoded into a Base64 string inside the .html output)
SoundPlay, Play, C:/path/to/your/your.mp3

; Pause audio playback
SoundPlay, Pause

; Resume paused audio
SoundPlay, Resume

; Stop audio playback
SoundPlay, Stop

; Mute audio
SoundPlay, Mute

; Unmute audio
SoundPlay, Unmute

; Set volume to 50%
SoundPlay, Volume, 50
```

##### Usage with Website Interaction:

Before using the `SoundPlay` function, ensure that the user has interacted with the website interface to initialize the necessary components. Here's an example implementation:

```ahk
Gui, Show, +WebsiteMode, w%A_ScreenWidth% h%A_ScreenHeight%
Gui, Font, s30
StartButtonGR := "linear-gradient(90deg, rgba(0,0,0,1) 0%, rgba(81,81,81,1) 96%)"
Gui, Add, Button, x0 y0 w%A_ScreenWidth% h%A_ScreenHeight% cffffff -Border gr-%StartButtonGR% vStartWebsiteButton gStartWebsiteButton, Press here to continue
Gui, Font, s15
return

StartWebsiteButton:
GuiControl, Hide, StartWebsiteButton

; Add your GUI elements and interactions here

; Now you can use SoundPlay function after user interaction
SoundPlay, Play, https://example.com/audio.mp3

Return
```

#### Notes:

- The `SoundPlay` function in HTH is ideal for managing audio playback based on user-triggered events or interactions.
- **Interacting with the website before using `SoundPlay` is crucial to ensure that necessary resources are loaded and user permissions are granted for audio playback, enhancing security and user experience.**

This documentation provides comprehensive guidance on utilizing the `SoundPlay` command in HeavenToHell (HTH), highlighting its capabilities and best practices for integrating interactive audio playback functionalities into web applications.

---

### GetMousePos and OnMouseClick <a id="getmousepos-and-onmouseclick"></a>

[Go back](#features)

1. [GetMousePos](#getmousepos)
2. [OnMouseClick](#onmouseclick)
3. [Mouse Position Example with 50-Pixel Corners](#mouse-position-example-with-50-pixel-corners)

---

### GetMousePos <a id="getmousepos"></a>

[Go back](#getmousepos-and-onmouseclick)

The `GetMousePos` command in HeavenToHell (HTH) retrieves the current position of the mouse cursor on the screen. This command is useful for obtaining coordinates that can be used in various interactive applications and scripts.

#### Syntax:

```ahk
GetMousePos, OutputVarX, OutputVarY
```

#### Parameters:

- `OutputVarX`: The variable that will receive the X-coordinate of the mouse cursor.
- `OutputVarY`: The variable that will receive the Y-coordinate of the mouse cursor.

#### Example Usage:

```ahk
; Declare variables to store mouse coordinates
MouseX := 0
MouseY := 0

; Retrieve mouse cursor position
GetMousePos, MouseX, MouseY

; Display the mouse coordinates
MsgBox, Mouse X: %MouseX%, Mouse Y: %MouseY%
```

#### Notes:

- The `GetMousePos` command allows for precise tracking of mouse cursor positions.
- Mouse coordinates obtained using `GetMousePos` can be used to trigger specific actions based on mouse interactions within an application.

---

### OnMouseClick <a id="onmouseclick"></a>

[Go back](#getmousepos-and-onmouseclick)

The `OnMouseClick` subroutine in HeavenToHell (HTH) allows developers to handle mouse click events directly within a script, without requiring additional event handlers. This approach simplifies mouse click event management and enhances interactivity in applications.

#### Syntax:

```ahk
OnMouseClick:
    ; Perform actions upon mouse click
    MouseGetPos, x, y
    MsgBox, You clicked at x: %x% y: %y%
Return
```

#### Parameters:

- No specific parameters are required for `OnMouseClick` itself. This subroutine automatically triggers upon any mouse click event.

#### Example Usage:

```ahk
; Define OnMouseClick subroutine to handle mouse click events
OnMouseClick:
    ; Retrieve mouse cursor position
    MouseGetPos, x, y

    ; Display a message box with mouse click coordinates
    MsgBox, You clicked at x: %x% y: %y%
Return
```

#### Notes:

- `OnMouseClick` is a self-contained subroutine that triggers automatically upon any mouse click event.
- Use `MouseGetPos` within `OnMouseClick` to obtain the mouse cursor position at the time of the click and perform corresponding actions based on the click location.

---

### Mouse Position Example with 50-Pixel Corners <a id="mouse-position-example-with-50-pixel-corners"></a>

[Go back](#getmousepos-and-onmouseclick)

The following example script divides each corner of the screen into 50-pixel segments to detect mouse moves within specific regions.

#### Example Script:

```ahk
; Set up a timer to continuously monitor mouse position
; Check every 100 milliseconds (0.1 seconds)
SetTimer, CheckMousePosition, 100
return

; Subroutine to check mouse position
CheckMousePosition:
    MouseGetPos, x, y

    ; Define 50-pixel regions around each corner
    CornerSize := 50
    TopLeftX := 0
    TopLeftY := 0
    TopRightX := A_ScreenWidth - CornerSize
    TopRightY := 0
    BottomLeftX := 0
    BottomLeftY := A_ScreenHeight - CornerSize
    BottomRightX := A_ScreenWidth - CornerSize
    BottomRightY := A_ScreenHeight - CornerSize

    ; Determine which corner the mouse is located based on mouse coordinates
    if (x >= TopLeftX && x < (TopLeftX + CornerSize) && y >= TopLeftY && y < (TopLeftY + CornerSize))
    {
        MsgBox, You clicked on the top left corner of the screen.
    }
    else if (x >= TopRightX && y >= TopRightY && y < (TopRightY + CornerSize))
    {
        MsgBox, You clicked on the top right corner of the screen.
    }
    else if (x >= BottomLeftX && x < (BottomLeftX + CornerSize) && y >= BottomLeftY)
    {
        MsgBox, You clicked on the bottom left corner of the screen.
    }
    else if (x >= BottomRightX && y >= BottomRightY)
    {
        MsgBox, You clicked on the bottom right corner of the screen.
    }
Return
```

#### Notes:

- The `SetTimer` command is used to trigger the `CheckMousePosition` subroutine every 100 milliseconds (0.1 seconds), allowing continuous monitoring of the mouse position.
- The `MouseGetPos` command retrieves the current mouse cursor position (`x` and `y` coordinates).
- The script defines 50-pixel regions around each corner of the screen (`TopLeft`, `TopRight`, `BottomLeft`, `BottomRight`) to detect if the mouse is within specific areas.
- Modify the `CornerSize` variable to adjust the size of the regions around each corner based on your application's requirements.

This documentation provides detailed information on `GetMousePos`, `OnMouseClick`, and an additional example using `SetTimer` to monitor mouse positions and handle click events within specific 50-pixel regions around each corner of the screen in HeavenToHell (HTH). These commandalities enhance user interactivity and enable responsive behaviors based on mouse interactions in scripts and applications.

---

### Title and Icon <a id="title-and-icon"></a>

[Go back](#features)

1. [Title](#title)
2. [Icon](#icon)

---

### Title <a id="title"></a>

[Go back](#title-and-icon)

The `Title` command in HeavenToHell (HTH) is used to set the title of the website displayed in the browser tab. This command allows developers to customize the title dynamically based on specific conditions or predefined values.

#### Syntax:

```ahk
Title, NewTitle
```

#### Parameters:

- `NewTitle`: The new title to set for the website tab.

#### Example Usage:

```ahk
; Set a static title
Title, Hello World

; Set a dynamic title using a variable
title2 := "Another Title"
Title, %title2%
```

#### Notes:

- The `Title` command updates the title displayed in the browser tab.
- If no title is specified using `Title`, the default title is the name of the `.hth` file.

---

### Icon <a id="icon"></a>

[Go back](#title-and-icon)

The `Icon` command in HeavenToHell (HTH) is used to set the icon (favicon) for the website displayed in the browser tab. This command allows developers to specify a custom icon sourced from a URL or a local file path.

#### Syntax:

```ahk
Icon, IconSource
```

#### Parameters:

- `IconSource`: The source of the icon, which can be a URL or a local file path.

#### Example Usage:

```ahk
; Set the website icon from a URL
Icon, https://example.com/image.png

; Set the website icon from a local file path
Icon, C:/path/to/your/your.png
```

#### Default Icon:

- If no icon is specified using `Icon`, the default icon is the HeavenToHell (HTH) logo.

#### Notes:

- The `Icon` command sets the favicon for the website, improving its visual identity in the browser tab.
- The specified icon can be sourced from a URL or a local file path, with support for Base64 encoding for local file paths within `.hth` output.

### StoreLocally <a id="store-locally"></a>

[Go back](#features)

The `StoreLocally` function in HeavenToHell (HTH) provides an interface to interact with the browser's local storage, allowing developers to store, retrieve, and manipulate data persistently on the client side.

#### Syntax:

```ahk
StoreLocally(action, key, value)
```

#### Parameters:

- `action`: Specifies the action to perform on the local storage.
  - `e`: Check if the local storage is empty.
  - `r`: Retrieve data from the specified `key`.
  - `s`: Store `value` into the specified `key`.
  - `d`: Delete data associated with the specified `key`.
  - `dALL`: Delete all data from the entire local storage.
- `key`: The key used to identify the data in the local storage.
- `value`: (Optional) The value to store in the local storage when performing the `s` action.

#### Example Usage:

```ahk
; Check if the local storage is empty
if !(StoreLocally("e"))
{
    ; Retrieve data from the "var1" key and increment it
    data := ParseInt(StoreLocally("r", "var1"))
    data++
    ; Store the updated data back into the "var1" key
    StoreLocally("s", "var1", data)
}
else
{
    ; Initialize data if the "var1" key does not exist
    data := 1
    ; Store the initial data into the "var1" key
    StoreLocally("s", "var1", data)
}

; Display a message based on the stored data
MsgBox, This is your %data% visit!
```

#### Notes:

- The `StoreLocally` function allows for common operations on the browser's local storage.
- Use `action` to specify the desired operation (`e` for checking emptiness, `r` for retrieving, `s` for storing, `d` for deleting by key, and `dALL` for clearing the entire local storage).
- Retrieve stored data using `StoreLocally("r", key)` and store data using `StoreLocally("s", key, value)`.
- Ensure proper initialization and error handling based on the expected state of local storage keys during script execution.

### getUrlParams and reloadWithParams <a id="geturlparams-and-reloadwithparams"></a>

[Go back](#features)

1. [getUrlParams](#geturlparams)
2. [reloadWithParams](#reloadwithparams)

---

### getUrlParams <a id="geturlparams"></a>

[Go back](#geturlparams-and-reloadwithparams)

The `getUrlParams` function in HeavenToHell (HTH) retrieves the query parameters from the current URL and returns them as a string. This function is useful for extracting and parsing parameters passed via the URL.

#### Syntax:

```ahk
getUrlParams()
```

#### Returns:

- A string containing the query parameters from the current URL.

#### Example Usage:

```ahk
; Retrieve and display URL parameters
params := getUrlParams()
if (params != "")
{
    MsgBox, % params
    Loop, Parse, params, "&"
    {
        MsgBox, % A_LoopField
    }
}
```

#### Notes:

- The `getUrlParams` function extracts query parameters from the current URL.
- Use `Loop, Parse` to iterate through individual parameters extracted from the URL string.

---

### reloadWithParams <a id="reloadwithparams"></a>

[Go back](#geturlparams-and-reloadwithparams)

The `reloadWithParams` function in HeavenToHell (HTH) reloads the current webpage with specified query parameters appended to the URL. This function allows developers to dynamically update the URL parameters and trigger page reloads with new parameters.

#### Syntax:

```ahk
reloadWithParams(params)
```

#### Parameters:

- `params`: The query parameters to append to the URL for reloading.

#### Example Usage:

```ahk
par := getUrlParams()
if (par != "")
{
	MsgBox, % par
	Loop, Parse, par, "&"
	{
		MsgBox, % A_LoopField
	}
}

Gui, Show, w500 h500
Gui, Add, Button, x10 y10 w200 h50 gButton, Reload with params
return


Button:
	; Define a random number to append as a parameter
	Random, ranNum1, 1, 100
	Random, ranNum2, 1, 100

	; Reload the webpage with custom query parameters
	reloadWithParams("?p=hello&man&15&" . ranNum1 . "&" . ranNum2)
Return
```

#### Notes:

- The `reloadWithParams` function appends specified query parameters to the URL and triggers a page reload with the updated URL.
- Use this function to dynamically modify URL parameters and reload the webpage based on specific actions or conditions.

---

### getDataFromAPI and getDataFromJSON <a id="getdatafromapi-and-getdatafromjson"></a>

[Go back](#features)

1. [getDataFromAPI](#getdatafromapi)
2. [getDataFromJSON](#getdatafromjson)

---

### getDataFromAPI <a id="getdatafromapi"></a>

[Go back](#getdatafromapi-and-getdatafromjson)

The `getDataFromAPI` function in HeavenToHell (HTH) performs an HTTP GET request to retrieve data from an external API endpoint and processes the response asynchronously.

#### Syntax:

```ahk
getDataFromAPI(url)
```

#### Parameters:

- `url`: The URL of the API endpoint to request data from.

#### Example Usage:

```ahk
jsonOutput := getDataFromAPI("https://api.example.com/data")
```

#### Notes:

- The `getDataFromAPI` function initiates an HTTP GET request to the specified API endpoint.

---

### getDataFromJSON <a id="getdatafromjson"></a>

[Go back](#getdatafromapi-and-getdatafromjson)

The `getDataFromJSON` function in HeavenToHell (HTH) retrieves specific data from a JSON string using a path-like syntax to navigate nested objects and arrays.

#### Syntax:

```ahk
getDataFromJSON(jsonString, path)
```

#### Parameters:

- `jsonString`: The JSON string containing the data to parse.
- `path`: The path specifying the location of the desired data within the JSON structure.

#### Returns:

- The value retrieved from the specified path within the JSON structure.

#### JSON Path Examples and Usage:

```ahk
; get sample JSON data from the api
jsonData := getDataFromAPI("https://dummy.restapiexample.com/api/v1/employees")

; Define JSON paths to retrieve specific data
path1 := "data[11].employee_name"
path2 := "data[11].employee_salary"
path3 := "data[11].employee_age"

; Retrieve data using getDataFromJSON function and display results
MsgBox, % getDataFromJSON(jsonData, path1)
MsgBox, % getDataFromJSON(jsonData, path2)
MsgBox, % getDataFromJSON(jsonData, path3)
```

You can open the API URL in your web browser, then copy the JSON response from the API. Next, go to [jsonpathfinder.com](https://jsonpathfinder.com/) and paste the JSON. Then find your paths. Make sure not to copy the `x.` at the beginning of the string from the JSON path.

#### Notes:

- The `getDataFromJSON` function enables navigation through nested JSON objects using a path-like syntax.
- This function simplifies data extraction from complex JSON responses retrieved from APIs or other sources.

---

### getDataFromEndpoint <a id="getdatafromendpoint"></a>

[Go back](#features)

The `getDataFromEndpoint` function in HeavenToHell (HTH) facilitates the retrieval and transmission of data to or from a backend server. This function is designed to interact with a backend server assumed to be running locally or accessible via a network.

#### Syntax:

```ahk
getDataFromEndpoint(data, endpoint)
```

#### Parameters:

- `data`: The data to be sent to the endpoint. This parameter is required, even when only retrieving data. If no data needs to be sent, an empty string or null value can be provided.
- `endpoint`: The endpoint of the backend server to which the request will be made, formatted as a single slash ("/endpoint").

#### Examples:

```ahk
; Send data to the endpoint and retrieve response data
response := getDataFromEndpoint(myData, "/endpoint")

; Process the response data
MsgBox, %response%
```

```ahk
data := "some data here"

if (isConnectedToBackend())
{
MsgBox, We are connected to a backend

MsgBox, % getDataFromEndpoint(data, "/endpoint1")
MsgBox, % getDataFromEndpoint("hejsdfbx kdjzcx kzjdx c", "/endpoint1")

sdf := "/endpoint3"

getDataFromEndpoint(data, "/endpoint2")
getDataFromEndpoint(data, sdf)

var1 := "Hello"
if (var1 = getDataFromEndpoint(data, "/endpoint4"))
{
MsgBox, yey
}
}
else
{
MsgBox, We are not connected to a backend
}
```

#### Note:

- The `getDataFromEndpoint` function interacts with a backend server, which can be running locally or accessible via a network.
- It supports both sending and receiving data to and from the specified endpoint.
- The `data` parameter is required, even when only retrieving data. If no data is sent back form the backend, it will result in an error, so make sure the backend always returns something, even if it's some text otherwise, we will get an error.
- The `endpoint` parameter specifies the endpoint of the backend server to which the request will be made, formatted as a single slash ("/endpoint").
- Upon execution, the function returns the response data received from the endpoint.

The `getDataFromEndpoint` function provides a convenient way to interact with backend servers, facilitating various data transmission and retrieval operations for local or networked backend services.

---

### isMobileDevice <a id="ismobiledevice"></a>

[Go back](#features)

The `isMobileDevice` function in HeavenToHell (HTH) enables developers to detect whether the script is running on a mobile device. This functionality is useful for implementing device-specific behavior or optimizations in scripts intended for both desktop and mobile environments.

#### Syntax:

```ahk
isMobileDevice()
```

#### Return Value:

- Returns `true` if the script is running on a mobile device.
- Returns `false` if the script is not running on a mobile device.

#### Example:

```ahk
if (isMobileDevice())
{
    ; Perform mobile-specific actions
    MsgBox, Running on a mobile device!
}
else
{
    ; Perform desktop-specific actions
    MsgBox, Running on a desktop device!
}
```

In this example, the `isMobileDevice` function is used to determine whether the script is running on a mobile device. Depending on the result, the script executes different actions tailored to the device type.

#### Note:

- The `isMobileDevice` function provides a simple and reliable way to detect the device type within HeavenToHell (HTH) scripts.
- Developers can use the return value of the `isMobileDevice` function to implement device-specific logic or optimizations in their scripts.

---

### isConnectedToBackend <a id="isconnectedtobackend"></a>

[Go back](#features)

The `isConnectedToBackend` function in HeavenToHell (HTH) allows developers to check whether the script is currently connected to a backend server or service. This functionality is commonly used in networked applications to determine the script's connectivity status and adjust behavior accordingly.

#### Syntax:

```ahk
isConnectedToBackend()
```

#### Return Value:

- Returns `true` if the script is connected to the backend.
- Returns `false` if the script is not connected to the backend.

#### Example:

```ahk
if (isConnectedToBackend())
{
    ; Perform actions when connected to the backend
    MsgBox, Connected to the backend server!
}
else
{
    ; Perform actions when not connected to the backend
    MsgBox, Not connected to the backend server!
}
```

In this example, the `isConnectedToBackend` function is used to determine the script's connection status to the backend server. Depending on the result, different actions are executed to handle the connectivity state.

#### Note:

- The `isConnectedToBackend` function provides a convenient way to check the script's connectivity status within HeavenToHell (HTH) scripts.
- Developers can use the return value of the `isConnectedToBackend` function to implement appropriate actions based on the script's connection status.

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

```ahk
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
6. [SubStr](#substr)
7. [Trim](#trim)
8. [StrReplace](#strreplace)
9. [Mod](#mod)
10. [Asc](#asc)
11. [ParseInt](#parseint)
12. [StrLower](#strlower)

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

**InStr**: Returns true if a substring is found within a string; otherwise, returns false.

#### Syntax:

```ahk
InStr(haystack, needle)
```

#### Parameters:

- _haystack_: The string in which you want to search for the substring.
- _needle_: The substring you want to find within the haystack.

#### Return Value:

- Returns true if the substring is found within the string; otherwise, returns false.

#### Example:

```ahk
var1 := "Hello World"

if (InStr(var1, "World"))
{
    MsgBox, We found `"World`" in %var1%
}
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

### ParseInt <a id="parseint"></a>

[Go back](#build-in-functions)

**ParseInt**: Returns the parsed integer value of a string.

#### Syntax:

```ahk
result := ParseInt(num)
```

#### Parameters:

- _num_: The string to parse for an integer value.

#### Return Value:

- Returns the parsed integer value of the input string. If the input is `null`, it returns `null`.

#### Example:

```ahk
; num with spaces and it's a string, but there are no letters so it's an int
num := " 123 "
MsgBox, Before:`n|%num%|

intValue := ParseInt(num)
MsgBox, After:`nThe parsed integer value is |%intValue%|
```

Another example:

```ahk
numbers := "45, 75, 60, 6, 10"

out := 0
Loop, Parse, numbers, `,
{
num2 := ParseInt(A_LoopField)
out := out + num2
}
MsgBox, % out
```

---

### StrLower <a id="strlower"></a>

[Go back](#build-in-functions)

**StrLower**: Converts a string to lowercase.

#### Syntax:

```ahk
result := StrLower(string)
```

#### Parameters:

- _string_: The string to convert to lowercase.

#### Return Value:

- Returns the lowercase version of the input string.

#### Example:

```ahk
input := "Hello World"
lowercase := StrLower(input)
MsgBox, The lowercase version of %input% is %lowercase%
```

This modified section explains the usage and purpose of `StrLower()` in HTH, demonstrating how to use it with an example. You can use this format to provide clear documentation for the `StrLower()` function.

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

### Backend Connectivity

HTH streamlines backend connectivity with its built-in function called `getDataFromEndpoint()`, enabling developers to easily send and retrieve data from a specified endpoint with just one function call.

### Python Integration

When you run your HTH code, you'll get `index.html` as output. Additionally, if you use the function `getDataFromEndpoint()` anywhere in the code, HTH will generate a `server.py` file for better backend connectivity.

### Requirements

To run the generated Python backend, you'll need to:

1. Install Python on your system.
2. Install the Flask library for Python.

### Getting Started

Here's a step-by-step guide to getting started with backend development in HTH using Python:

1. Write your HTH code, making use of the `getDataFromEndpoint()` function to interact with the backend.
2. Run your HTH code.
3. Once executed, you'll find an `index.html` file as output.
4. Locate the `server.py` file generated by HTH if you've used the `getDataFromEndpoint()` function.
5. Ensure Python and Flask are installed on your system.
6. Run the `server.py` file using Python.
7. Your Python backend is now running and ready to handle requests from your HTH frontend.

By integrating Python with HTH, developers can leverage the power of Python's extensive libraries and frameworks for building robust backend systems while enjoying the simplicity and ease of use of the HTH programming language.

---

## Editors for Code <a id="editors-for-code"></a>

[Go back](#hth)

Discover the recommended code editor for working with the HTH programming language.

Check out the best editor for HTH at https://github.com/TheMaster1127/SciTE4HTH

---

## Script Showcase <a id="script-showcase"></a>

[Go back](#hth)

View a showcase of programs created using the HTH programming language, demonstrating its capabilities.

Check out this type racer written in HTH at https://github.com/TheMaster1127/HTH/blob/main/test.hth

---
