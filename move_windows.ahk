#Requires AutoHotkey v2.0
#Include %A_LineFile%\..\VD.ah2
^#+Left::{
n := VD.getCurrentDesktopNum()
if n = 1
{
    Return
}
n -= 1
VD.MoveWindowToDesktopNum("A",n), VD.goToDesktopNum(n)
Return
}

^#+Right:: {
n := VD.getCurrentDesktopNum()
if n =VD.getCount()
{
    Return
}
n += 1
VD.MoveWindowToDesktopNum("A",n), VD.goToDesktopNum(n)
Return
}