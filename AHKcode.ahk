;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Name:
; AHK game phisics
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


x := 350
y := 450

Gui, Font, s15
Gui, Color, c121212
Gui, Add, Text, x10 y10 cWhite, This is the MATRIX
Gui, Add, Button, x%x% y%y% w50 h50
Gui, Add, Button, x100 y350 w300 h20
Gui, Show, w800 h500

SetTimer, looop, 10
return

looop:
	Sleep, 1
{
if (GetKeyState("Up", "D") && GetKeyState("Left", "D"))
{
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
nnn := 21
Loop, 20
{
nnn--
Loop, %nnn%
{
y--
x--
}
Sleep, 1
CheckGround()
GuiControl, Move, Button1, x%x% y%y%
}
nnn := 21
Loop, 20
{
nnn--
Loop, %nnn%
{
y++

}
Sleep, 1
CheckGround()
GuiControl, Move, Button1, x%x% y%y%
}




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
}
if (GetKeyState("Up", "D") && GetKeyState("Right", "D"))
{
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
nnn := 21
Loop, 20
{
nnn--
Loop, %nnn%
{
y--
x++
}
Sleep, 1
CheckGround()
GuiControl, Move, Button1, x%x% y%y%
}
nnn := 21
Loop, 20
{
nnn--
Loop, %nnn%
{
y++

}
Sleep, 1
CheckGround()
GuiControl, Move, Button1, x%x% y%y%
}




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
}
if (GetKeyState("Up", "D"))
{
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
nnn := 21
Loop, 20
{
nnn--
Loop, %nnn%
{
y--
}
Sleep, 1
CheckGround()
GuiControl, Move, Button1, x%x% y%y%
}
nnn := 21
Loop, 20
{
nnn--
Loop, %nnn%
{
y++
}
Sleep, 1
CheckGround()
GuiControl, Move, Button1, x%x% y%y%
}




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
}
if (GetKeyState("Left", "D"))
{
nnn := 10
Loop, 9
{
nnn--
Loop, %nnn%
{
x--
}
Sleep, 1
CheckGround()
GuiControl, Move, Button1, x%x% y%y%
}
}
;if (GetKeyState("Down", "D"))
;{

;}
if (GetKeyState("Right", "D"))
{
nnn := 10
Loop, 9
{
nnn--
Loop, %nnn%
{
x++
}
Sleep, 1
CheckGround()
GuiControl, Move, Button1, x%x% y%y%
}
}

y++

CheckGround()
GuiControl, Move, Button1, x%x% y%y%
;end of loop
}

Return

GuiClose:
ExitApp
Return

K::
MsgBox, %y%
Return




CheckGround()
{
global


if (x >= 50) && (x <= 400) && (y >= 300) && (y <= 320)
{
if (y >= 300)
{
y := 300
GuiControl, Move, Button1, x%x% y%y%
}
GuiControl, Move, Button1, x%x% y%y%
}
if (y >= 450)
{
y := 450
GuiControl, Move, Button1, x%x% y%y%
}



}



