﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#MaxThreadsPerHotkey 3
#SingleInstance, force

f9::
Toggle := !Toggle
Loop
{
	If (!Toggle)
		Break
	Click, Right
	Sleep 83 ; Make this number higher for slower clicks, lower for faster.
}