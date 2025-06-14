#Requires AutoHotkey v2.0
; Windows==#, + == Shift, ^ == CTRL, ! == Alt
#+Enter:: Run "wsl.exe -d ubuntu"
#+C:: Send "{alt down}{f4}{alt up}"
#+Q:: Shutdown 1
#Enter::Run "powershell"