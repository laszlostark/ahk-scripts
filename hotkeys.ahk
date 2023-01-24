#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force


#f::ShowStart("Mozilla Firefox", "C:\Program Files\Mozilla Firefox\firefox.exe")
return

#c::ShowStart("Windows PowerShell", "wt")
return

#k::ShowStart("password_record.kdbx", "C:\Users\lolo\bin\KeePassX-2.0.3\KeePassX.exe")
return

#s::ShowStart("Lautstärkemixer", "sndvol")
return

#^Enter::
return

ShowStart(title, exe, toggle = 0)
{
    If WinActive(title) and toggle
        WinMinimize %title%
    Else
        {
            IfWinExist, %title%
                WinActivate
            else
            {
                Run, %exe%
                WinActivate
            }
        }
}