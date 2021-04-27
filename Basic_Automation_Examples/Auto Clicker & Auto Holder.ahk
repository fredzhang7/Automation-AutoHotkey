#SingleInstance,Force
CoordMode,Mouse,Screen

Pause::Pause
#d::Pause  ;press windows+d to pause/delay the script then press it again to continue

#s::
loop{

 ;============
 ;Auto Clicker
 ;============
 
 Sleep, 10
 Click
 



 ;=============
 ;Auto "Holder"
 ;=============
 
 Send {lbutton down}
 Sleep 1500
 Send {lbutton up}
 
}
