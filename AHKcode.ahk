;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Name:
; Projects time tracker AHK
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; A lightweight AutoHotkey script to track the time spent on your projects.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Gui, Color, 121212
Gui -DPIScale
Gui, Font, s15
Gui, Add, Text, cWhite x0 y10 w1000 h30, Track your time for a project
Gui, Add, Text, cWhite x10 w1000 y550 h100 vTextSelectedFolder
Gui, Font, s13
Gui, Add, Button, x10 y150 w150 h50 vStart gStart, Start/Resume
Gui, Font, s15
Gui, Add, Button, x10 y210 w150 h50 vStop gStop, Stop/Pause
Gui, Add, Button, x10 y270 w150 h50 vReset gReset, Reset
Gui, Add, Text, cWhite x10 y350 w350 h50 vTime
Gui, Add, Button, x10 y410 w150 h50 vSave gSave, Save
GuiControl, Hide, Start
GuiControl, Hide, Stop
GuiControl, Hide, Save
GuiControl, Hide, Reset

GuiControl, Disable, Stop
GuiControl, Disable, Save
GuiControl, Disable, Start
Gui, Show, w1000 h700
gosub, Button
return

Button:
;MsgBox, You selected folder "%OutputVar%".
OutputVar := "Project Time.txt"
GuiControl, Text, TextSelectedFolder, You're selected text is Project Time.txt
GuiControl, Show, Start
GuiControl, Show, Stop
GuiControl, Show, Reset
GuiControl, Disable, Reset

GuiControl, Disable, Stop
GuiControl, Enable, Start


Return

Save:
isRunning := 1
GuiControl, Disable, Stop
GuiControl, Disable, Save
fileAPPP := "The duration of that session between " . StartTimee . " and " . EndTime . " is " . ElapsedTime123 . "`n"
FileAppend, %fileAPPP%, Project Time.txt
MsgBox, % fileAPPP . "Project Time.txt"
gosub, Reset
Return

Start:
if (isRunning != 1)
{
StartTime := A_TickCount
}
isRunning := 1
GuiControl, Enable, Stop
GuiControl, Disable, Start
GuiControl, Disable, Save
GuiControl, Disable, Reset
SetTimer, Time, 1

if (A_Hour >= 13)
{
AHour := A_Hour - 12
ampm := "PM"
}
else
{
AHour := A_Hour
ampm := "AM"
}
StartTimee := AHour . ":" . A_Min . " " . ampm
Return

Stop:
isRunning := 1
GuiControl, Enable, Start
GuiControl, Enable, Reset
GuiControl, Disable, Stop
GuiControl, Show, Save
GuiControl, Enable, Save
SetTimer, Time, Off

if (A_Hour >= 13)
{
AHour := A_Hour - 12
ampm := "PM"
}
else
{
AHour := A_Hour
ampm := "AM"
}
EndTime := AHour . ":" . A_Min . " " . ampm


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
ElapsedTime123 .= hours . " hours " . minutes . " minutes " . seconds . " seconds and " . milliseconds . " ms."
Return


Reset:
isRunning := 0
GuiControl, Enable, Start
GuiControl, Disable, Stop
SetTimer, Time, Off
milliseconds := 0
seconds := 0
minutes := 0
hours := 0
ElapsedTime123 := hours . "h " . minutes . "m " . seconds . "s " . milliseconds . "ms"
GuiControl, Text, Time, variables.%ElapsedTime123%
Return



Time:
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
ElapsedTime123 := hours . "h " . minutes . "m " . seconds . "s " . milliseconds . "ms"

GuiControl, Text, Time, variables.%ElapsedTime123%
Return

GuiClose:
if (isRunning = 1)
{
gosub, Stop
Sleep, 100
gosub, Save
Sleep, 100
}
ExitApp
Return
