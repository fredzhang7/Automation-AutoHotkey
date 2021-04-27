#SingleInstance,Force
CoordMode,Pixel,Screen
CoordMode,Mouse,Screen

phoneNumber := ""  ;change to your own phone number for verification
yourEmailAddress := ""  ;change to your own backup email address

firstNames := ["Liam","Noah","Oliver","William","Elijah","James","Benjamin","Lucas","Mason","Ethan","Alexander","Henry","Jacob","Michael","Daniel","Logan","Jackson","Sebastian","Jack","Aiden","Owen","Samuel","Matthew","Joseph","Levi","Mateo","David","John","Wyatt","Carter","Julian","Luke","Grayson","Issac","Jayden","Theodore","Gabriel","Anthony","Dylan","Leo","Lincoln","Jaxon","Asher","Christopher","Josiah","Andrew","Thomas","Joshua","Ezra","Hudson"]
surNames := ["Smith","Johnson","Williams","Brown","Jones","Garcia","Miller","Davis","Rodriguez","Martinez","Hernandez","Lopez","Gonzalez","Wilson","Anderson","Thomas","Taylor","Moore","Jackson","Martin","Lee","Perez","Thompson","White","Harris","Sanchez","Clark","Ramirez","Lewis","Robinson","Walker","Young","Allen","King","Wright","Scott","Torres","Nguyen","Hill","Flores","Green","Adams","Nelson","Baker","Hall","Rivera","Campbell","Mitchell","Carter","Roberts"]

Pause::Pause
#d::Pause  ;press windows+d to pause/delay the script then press it again to continue

#s::
loop{

;prepare random names and values

 Random, randFirst, 0, 49
 firstName := firstNames[randFirst]
 Random, randSur, 1, 50
 surName := surNames[randSur]
 Random, randNum, 60101, 66899
 symbols := "&&&"

;fill name, create password, sign up

 Sleep 1000
 Send {WheelDown 15}
 MouseClick, left, 400, 797, 1
 Sleep 2000
 MouseClick, left, 311, 773, 1
 Sleep 800
 MouseClick, left, 300, 838, 1
 Sleep 2200
 Send %firstName%
 MouseClick, left, 566, 479, 1
 Send %surName%
 Sleep 1000
 MouseClick, left, 289, 549, 1
 Send %firstName%%surName%%randNum%
 Sleep 1000
 MouseClick, left, 305, 653, 1
 Send %firstName%%surName%%randNum%%symbols%
 MouseClick, left, 537, 645, 1
 Send %firstName%%surName%%randNum%%symbols%
 Sleep 500
 MouseClick, left, 656, 846, 1
 Sleep 2000
 MouseClick, left, 362, 574, 1
 Send %phoneNumber%
 MouseClick, left, 661, 661, 1
 MouseGetPos, xfirst, yfirst
 while (xfirst == 661 && yfirst == 661){
    MouseGetPos, xfirst, yfirst
    Sleep 2000
 }
 Sleep 2000
 MouseClick, left, 264, 545, 1
 Send %yourEmailAddress%
 Sleep 500
 MouseClick, left, 58, 534, 1
 Sleep 500
 MouseClick, left, 357, 650, 1
 Sleep 1000
 MouseClick, left, 344, 689, 1
 Sleep 800
 MouseClick, left, 420, 649, 1
 Send 16
 Sleep 800
 MouseClick, left, 577, 650, 1
 Send 2000
 Sleep 800
 MouseClick, left, 677, 750, 1
 Sleep 800
 MouseClick, left, 681, 807, 1
 Sleep 800
 MouseClick, left, 650, 910, 1
 Sleep 2000
 MouseClick, left, 264, 848, 1
 Sleep 2000
 Send {WheelDown 11}
 Sleep 800
 MouseClick, left, 642, 876, 1
 Sleep 800
 Send {WheelDown 3}
 MouseClick, left, 1235, 964, 1
 Send %firstName%%surName%%randNum%@gmail.com{Enter}
 Send %firstName%%surName%%randNum%%symbols%{Enter}
 Sleep 3500
 MouseClick, left, 915, 184, 1
 Sleep 1000
 MouseClick, left, 868, 327, 1
 Send {WheelDown 15}
 Sleep 800
 MouseClick, left, 827, 730, 1
 Sleep 2000
 MouseClick, left, 464, 851, 1
 Sleep 2000
}