#SingleInstance,Force
    CoordMode, Pixel, Screen
CoordMode, Mouse, Screen

Pause::Pause
#d::Pause  ;press windows+d to pause the script then press it again to continue the script

#s::
    width := A_ScreenWidth
    height := A_ScreenHeight - 62
    
    enemyColor := ""
    PixelGetColor, color1, width / 2, A_ScreenHeight / 2, RGB Fast
    if (color1 == 0xF14E54) {
        enemyColor := 0x00B2E1
    } else {
        enemyColor := 0xF14E54
    }
    
    loop
    {
        Send {lbutton down}
        
        PixelSearch, tankX, tankY, 0, 98, width, height, enemyColor, 1, RGB Fast
            PixelGetColor, color2, tankX + 19, tankY, RGB Fast
        if (ErrorLevel == 0 && color2 == enemyColor) {
            Send {lbutton up}
            MouseClick, left, tankX, tankY, 1
        } else {
            PixelSearch, bigTriX, bigTriY, 0, 98, width, height, 0xCC66BB, 1, RGB Fast
            if (ErrorLevel == 0) {
                Send {lbutton up}
                MouseClick, left, bigTriX, bigTriY, 1
            } else {
                PixelSearch, attkTriX, attkTriY, 0, 98, width, height, 0xF177DD, 1, RGB Fast
                if (ErrorLevel == 0) {
                    Send {lbutton up}
                    MouseClick, left, attkTriX, attkTriY, 1
                } else {
                    PixelSearch, pentagonX, pentagonY, 0, 98, width, height, 0x768DFC, 1, RGB Fast
                    if (ErrorLevel == 0 && gridDistance(pentagonX) < 7) {
                        Send {lbutton up}
                        MouseClick, left, pentagonX, pentagonY + 20, 1
                    } else {
                        PixelSearch, triangleX, triangleY, 0, 98, width, height, 0xFC7677, 1, RGB Fast
                        if (ErrorLevel == 0 && gridDistance(triangleX) < 7) {
                            Send {lbutton up}
                            MouseClick, left, triangleX, triangleY, 1
                        } else {
                            PixelSearch, squareX, squareY, 0, 98, width, height, 0xFFE869, 1, RGB Fast
                            if (ErrorLevel == 0 && gridDistance(squareX) < 7) {
                                Send {lbutton up}
                                MouseClick, left, squareX, squareY, 1
                            } else {
                                Send {lbutton up}
                                if (enemyColor == 0xF14E54) {
                                    MouseMove 20, (A_ScreenHeight / 2)
                                } else {
                                    MouseMove (width - 20), (A_ScreenHeight / 2)
                                }                     
                            }
                        }
                    }
                }
            }
        }
    }
    
    gridDistance(targetX) {
        return Floor(Abs(targetX - Floor(width / 2)) / 100)
    }
    ; LOOP, SEND, and KeyPress to control the tank don't work! Diep.io only allows "hard-drive" keybinds
