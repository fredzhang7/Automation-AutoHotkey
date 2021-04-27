#SingleInstance,Force
CoordMode,Pixel,Screen
CoordMode,Mouse,Screen

CopyThoseCharacters := "Hey there! Don't forget to do your homework!"

; all below are measured in ms
seconds := 1000
minutes := 60000
hours := 60 * 60000
customizeIntervals := 2 * hours + 30 * minutes      


#s::
MouseMove 524, 977
MouseClick, , , , 1
Send %CopyThoseCharacters%
Send ^a
Send ^x
loop{
	MouseMove 524, 977
	MouseClick, , , , 1
	Send ^v
	Send {Enter}
	Sleep, customizeIntervals
}
Return
