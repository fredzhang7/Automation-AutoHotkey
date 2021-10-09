#SingleInstance,Force
CoordMode,Pixel,Screen
CoordMode,Mouse,Screen

Pause::Pause
#d::Pause  ;press windows+d to delay/pause the script; press it again to continue

numberOfAlts = 5     ;replace with the number of alt accounts you have
altCount = numberOfAlts

#s::
lineNumber := 1
while (altCount > 0) {
 Sleep 700
 if (A_Index == 1){
    Send ^+n
    Sleep 700
    Send discord.com/channels/@me{Enter}
    Sleep 3500
 }

 ;apparently if I use color detect on Discord werid things happen

 MouseClick, left, 506, 520, 1
 Sleep 700


 ;=============================================
 ;REPLACE WITH YOUR OWN FILE DIRECTORIES BELOW!
 ;=============================================
 FileReadLine, loginInfo, F:\Fred\Modding Bots and AI\Auto Hotkey\Discord AHK\Discord Login (Selected Accounts)\Discord Login List.txt, lineNumber
 Send %loginInfo%
 Sleep 700
 MouseClick, left, 521, 627, 1
 lineNumber += 1
 
 ;=============================================
 ;REPLACE WITH YOUR OWN FILE DIRECTORIES BELOW!
 ;=============================================
 FileReadLine, loginInfo, F:\Fred\Modding Bots and AI\Auto Hotkey\Discord AHK\Discord Login (Selected Accounts)\Discord Login List.txt, lineNumber
 
 Sleep 700
 Send %loginInfo%{Enter}
 lineNumber += 1
 Sleep 4500
 if(A_Index == 1){
    MouseClick, left, 1896, 155, 1
    Sleep 200
    MouseClick, left, 1896, 155, 1
    Sleep 600
 }else{
    MouseClick, left, 1913, 142, 1
    Sleep 500
 }
 if(A_Index < numberOfAlts){
    Send ^+n
    Sleep 700
    Send discord.com/channels/@me{Enter}
    Sleep 3500
    MouseClick, left, 362, 1000, 1
    Sleep 1000
    Send {WheelDown 5}
    Sleep 700
    MouseClick, left, 395, 809, 1
    Sleep 1000
    MouseClick, left, 1154, 667, 1
    Sleep 1000
 }else{
    MsgBox, All accounts are logged in{!}
    return
 }
 altCount -= 1
}
Exit
