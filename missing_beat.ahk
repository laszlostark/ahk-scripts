#MaxThreadsPerHotkey, 4
#SingleInstance, force

F4::
Loop, 50 {
	
	Send, {Shift Down}
	Send, {Right}
	Send, {Right}
	Send, {Shift Up}
	Send, {Left}

}


Return


F3::
Loop, 150 {
	
	Send, {Right}
	Send, {Right}
	Send, {Del}
}


Return