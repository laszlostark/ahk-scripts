#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force

$w::
If GetKeyState("Capslock","T")
Send {Up}
else
Send w
Return

$a::
If GetKeyState("Capslock","T")
Send {Left}
else
Send a
Return

$s::
If GetKeyState("Capslock","T")
Send {Down}
else
Send s
Return

$d::
If GetKeyState("Capslock","T")
Send {Right}
else
Send d
Return