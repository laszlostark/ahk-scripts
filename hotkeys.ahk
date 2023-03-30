#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force

#f::ShowStart("Mozilla Firefox", "C:\Program Files\Mozilla Firefox\firefox.exe", 1)
return

#c::ShowStart("Windows PowerShell", "wt", 1)
return

#k::ShowStart("password_record.kdbx", "C:\Users\lolo\bin\KeePassX-2.0.3\KeePassX.exe")
return

#s::ShowStart("Lautstärkemixer", "sndvol")
return
#b::ShowStart("VSCodium", "C:\Program Files\VSCodium\VSCodium.exe", 0, 2)
return

#n::ShowStart("Notepad++","C:\Program Files\Notepad++\notepad++.exe", 0, 2)
return

#w::ShowStart("- LibreOffice Writer", "C:\Program Files\LibreOffice\program\swriter.exe", 1, 2)

#^Enter::
return

<+!q::
{
	Send {LAlt down}{F4}{LAlt up}
	keywait q
}
ShowStart(title, exe, toggle = 0, titlematchmode = 1)
{
;	TitleMatchMode: 1 -> must start with, 2 -> can contain anywhere, 3 -> must match exactly
    SetTitleMatchMode, %titlematchmode%

        If WinExist(title) and !toggle
            WinActivate
        else
        {
            Run, %exe%
			WinWait, %title%
            WinActivate
        }
}