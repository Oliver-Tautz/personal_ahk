#Requires AutoHotkey v2.0
; Windows==#, + == Shift, ^ == CTRL, ! == Alt
#Enter:: Run "C:\Users\olli\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Miniconda3 (64-bit)\Anaconda Prompt (Miniconda3).lnk"
#+Enter:: Run "wsl.exe -d ubuntu"
#+C:: Send "{alt down}{f4}{alt up}"