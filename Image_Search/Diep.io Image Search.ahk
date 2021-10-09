; After activating this script, you'll see that it doesn't work

#SingleInstance,Force
CoordMode,Pixel,Screen
CoordMode,Mouse,Screen

Pause::Pause
#d::Pause  ;press windows+d to pause/delay the script then press it again to continue

#s::
loop
{
 ;=============================================
 ;REPLACE THE FOLLOWING WITH YOUR OWN DIRECTORY
 ;=============================================
  ImageSearch, foundX, foundY, 0, 0, A_ScreenWidth, A_ScreenHeight-49, *1 *w23 *h23 F:\My Images\RedTank.jpg
  if (ErrorLevel == 0){
    MouseClick,left,foundX,foundY,2
  }
}
