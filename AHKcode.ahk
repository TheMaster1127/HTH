


var := "man, idk, hey, uhh, words, duh"

if (A_IsTranspiled = 1)
{
; do something if its transpiled

Loop, Parse, var, ","
{
MsgBox, % Trim(A_LoopField)
}

}
else
{
; do something if its not transpiled
Loop, Parse, var, `,
{
MsgBox, % Trim(A_LoopField)
}
}


Gui 3: -DPIScale
Gui 3: Add, Button, x10 y10 w150 h50  gButton, TextButton
Gui 3: Show, x0 y0 h300 w300, Name of win

Gui, -DPIScale
Gui, Add, Button, x10 y10 w150 h50 vButtonssssssssss21 gButton, Text Button
Gui, Add, Button, x10 y100 w150 h50 vButtonssssssssss2 gButton, Text Button
Gui, Show, x320 y320 h300 w300, Name of win


Gui 2: -DPIScale
Gui 2: Add, Button, x10 y10 w150 h50 vButton32 gButton, Text dsfgbv zzs dz
Gui 2: Add, Button, x10 y100 w150 h50 vButton322 gButton, Text dsfgbv zzs dz
Gui 2: Add, Button, x10 y210 w150 h50 vButton3222 gButton, Text dsfgbv zzs dz
Gui 2: Show, x0 y320 h300 w300, Name of win
return

Button:
MsgBox, Hi
Return