#SingleInstance,Force
CoordMode,Pixel,Screen
CoordMode,Mouse,Screen

CopyThoseCharacters := "Spamming Spamming Spamming Spamming Spamming Spamming Spamming Spamming Spamming Spamming Spamming Spamming Spamming Spamming Spamming Spamming Spamming Spamming"

customizeIntervals := 5000      ;this is measured in miliseconds (ms)

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
