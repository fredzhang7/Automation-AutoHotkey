#SingleInstance,Force
CoordMode,Pixel,Screen
CoordMode,Mouse,Screen

Pause::Pause
#d::Pause  ;press windows+d to pause/delay the script then press it again to continue

;===========================================================================================
;Does not work well for moving targets. I used searching for Diep.io red tanks as an example
;===========================================================================================

#s::
loop
{
  PixelSearch,x,y,0,98,A_ScreenWidth,A_ScreenHeight-49,0xF14E54,1,RGB Fast
  PixelSearch,testx,testy,1,98,A_ScreenWidth,A_ScreenHeight-49,0x999999,1,RGB Fast

  if (testx > x-57 && testx < x+70 && testy > y-57 && testy < y+70)
  {
    MouseClick,left,x+27,y+27,2
  }
}
