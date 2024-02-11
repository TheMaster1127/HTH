




x := 0
y := 0
Speed := 5
Gui, Color, 121212
Gui, Font, s20
Gui, Add, Button, x%x% y%y% w50 h50 vPlayer gplayer, player
Gui, Show, w700 h700
SetTimer, lastkey, 1
return

player:
MsgBox, im player
Return

Up::
if (y - Speed >= 0)
{
y -= Speed
GuiControl, Move, Player, x%x% y%y%
GuiControl, Text, Player, %A_LastKey%
}
Return

Down::
if (y + 50 + Speed <= 700)
{
y += Speed
GuiControl, Move, Player, x%x% y%y%
GuiControl, Text, Player, %A_LastKey%
}
Return

Left::
if (x - Speed >= 0)
{
x -= Speed
GuiControl, Move, Player, x%x% y%y%
GuiControl, Text, Player, %A_LastKey%
}
Return

Right::
if (x + 50 + Speed <= 700)
{
x += Speed
GuiControl, Move, Player, x%x% y%y%
GuiControl, Text, Player, %A_LastKey%
}
Return

!L::
ExitApp
Return

lastkey:
Input, A_LastKey, L1 V
Sleep, 10
Return