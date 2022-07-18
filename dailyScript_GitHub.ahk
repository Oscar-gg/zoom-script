; Script used to automate opening zoom classes.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
CoordMode, Pixel, Screen ; coordinates relative to screen.
CoordMode, Mouse, Screen ; coordinates relative to screen.

Start_Class(docs, driveFolder, zoomLink)
{
	second:= 1000
	seconds:= second * 2
	seconds5:= second * 5
	seconds7:= second * 7
	seconds9:= second * 9
	run, chrome.exe %driveFolder% " --new-window "
	Sleep, seconds
	Send, #{Up}
	run, %docs%
	run, %zoomLink%
	Sleep, %seconds%
	ImageSearch, Xloc, YLoc, 428, 66, 940, 252, %A_Desktop%\AHK\Images\Zoom_Button.png
	NewXClick:= Xloc + 5
	NewYClick:= Yloc + 5
	MouseMove, NewXClick, NewYClick, 2
	Sleep, %second%
	Click 
	Sleep, %seconds9%
	ImageSearch, Xloc2, YLoc2, 454, 217, 853, 502, %A_Desktop%\AHK\Images\Zoom_Button_Audio.png
	NewXClick2:= Xloc2 + 5
	NewYClick2:= Yloc2 + 5	
	MouseMove, NewXClick2, NewYClick2, 2
	Sleep, %second%
	Click
	Sleep, %second%
	SetTitleMatchMode, 2
	#IfWinActive Zoom
		Send, #{Up}
	#IfWinActive
}

:*:\\::
Suspend, Toggle
return

:*:menu::
width = 563 ; default value * 1.5 (rounded up)
height = 378 ; default value * 2
tiempo := 15   ; Time that it takes to close itself if there is no action in seconds
default = Hour
Menu = Menu - Enter to your daily classes

Text = 
(
7) Tutoring (Monday)
7_2) CAS (Wednesday)
8) Biology
9) Business 
10) French
11 - 
12) Computer Science (M, W, F)
12_2) Literature (T, T)
13) Math
14) Math W. (M, F)
14_2) Tok (T, T)
14_3) Tutoring(W)
15) Literature (M, W, f)
15_2) CAS (Tuesday)
)

InputBox, accion, %Menu%, %Text%, ,  %width%, %height%, , , , %tiempo%, %default%   ; The 4rd parameter is hide, it is ommited. If the value is "HIDE", then it hides the input, useful for passwords.
										  ; The 7th and 8th parameters are x and y, this indicate the location of the window, if ommited the window is placed in the center.
									   	  ; The other parameter ommited was Locale. If its value is Locale then the name of the buttons will be in the same language as the OS.

if (accion = "7")
{

docs:= "_"
driveFolder:= "_"
zoomLink:= "_"

Start_Class(docs, driveFolder, zoomLink)
return
}

if (accion = "7_2")
{

docs:= "_"
driveFolder:= "_"
zoomLink:= "_"

Start_Class(docs, driveFolder, zoomLink)
return
}

if (accion = "8")
{

docs:= "_"
driveFolder:= "_"
zoomLink:= "_"

Start_Class(docs, driveFolder, zoomLink)
return
}

if (accion = "9")
{

docs:= "_"
driveFolder:= "_"
zoomLink:= "_"

Start_Class(docs, driveFolder, zoomLink)
return
}

if (accion = "10")
{

docs:= "_"
driveFolder:= "_"
zoomLink:= "_"

Start_Class(docs, driveFolder, zoomLink)
return
}

if (accion = "12")
{

docs:= "_"
driveFolder:= "_"
zoomLink:= "_"

Start_Class(docs, driveFolder, zoomLink)
return
}

if (accion = "12_2")
{

docs:= "_"
driveFolder:= "_"
zoomLink:= "_"

Start_Class(docs, driveFolder, zoomLink)
return
}

if (accion = "13")
{

docs:= "_"
driveFolder:= "_"
zoomLink:= "_"

Start_Class(docs, driveFolder, zoomLink)
return
}

if (accion = "14")
{

docs:= "_"
driveFolder:= "_"
zoomLink:= "_"

Start_Class(docs, driveFolder, zoomLink)
return
}

if (accion = "14_2")
{

docs:= "_"
driveFolder:= "_"
zoomLink:= "_"

Start_Class(docs, driveFolder, zoomLink)
return
}

if (accion = "14_3")
{

docs:= "_"
driveFolder:= "_"
zoomLink:= "_"

Start_Class(docs, driveFolder, zoomLink)
return
}

if (accion = "15")
{

docs:= "_"
driveFolder:= "_"
zoomLink:= "_"

Start_Class(docs, driveFolder, zoomLink)
return
}

if (accion = "15_2")
{

docs:= "_"
driveFolder:= "_"
zoomLink:= "_"

Start_Class(docs, driveFolder, zoomLink)
return
}


if (ErrorLevel = 2)    ; errorlevel is 0 if the user clicks ok, it is 1 if the user clicks cancel, and it is 2 if it times out.
{
msgbox, you didn't write anything (╯°□°）╯︵ ┻━┻
}