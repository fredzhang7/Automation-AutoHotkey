#SingleInstance,Force
CoordMode,Pixel,Screen
CoordMode,Mouse,Screen

#s::
  MouseGetPos, xpos, ypos
  PixelGetColor,color,xpos,ypos,RGB
  msgBox, %color%, %xpos%, %ypos%
