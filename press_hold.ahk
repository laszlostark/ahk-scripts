#MaxThreadsPerHotkey, 2
#SingleInstance, force
Toggle := 0

F4::
Toggle := !Toggle
If (Toggle){
;   Click, Down
   Click, Down, right
} else {
;   Click, Up
   Click, Up, right
}

Return