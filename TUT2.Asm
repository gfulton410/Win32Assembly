.386
.model flat, stdcall
option casemap:none

include windows.inc
include kernel32.inc
includelib kernel32.lib
include user32.inc
includelib user32.lib

.data
MsgBoxCaption 	db "Caption", 0
MsgBoxText		db "Win32 Assembly is Great!", 0

.code

start:
	invoke MessageBox, NULL, addr MsgBoxText, addr MsgBoxCaption, MB_OK
	invoke ExitProcess, NULL
end start