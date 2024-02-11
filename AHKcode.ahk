


!+^g::
Msgbox, You Clicked Ctrl+Alt+Shift+G

; We MUST put a Return with a capital letter R at the beginning of the word 'Return' otherwise it will not work. This is ONLY for the and of any label or hotkey. This is not the same case in real AutoHotkey, but here we need to do that.
Return

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