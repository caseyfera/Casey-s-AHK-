

#InstallKeybdHook
#KeyHistory 
#KeyHistory 

;start intercept
WinClose, ahk_class ConsoleWindowClass
BlockInput, on
IfWinExist, ahk_class Shell_TrayWnd 
	Sleep, 1200
Send, {LWin}
sleep, 10
Send, intercept
Sleep, 10
Send, {Enter}
WinWait, ahk_class ConsoleWindowClass
Send, y
WinWait, ahk_class ConsoleWindowClass
WinGet MX, MinMax, ahk_class ConsoleWindowClass

  If(MX=0) ;Selected
	 WinMinimize, ahk_class ConsoleWindowClass
BlockInput, off
return

BlockInput, on
Run, notepad
WinWaitActive, Untitled - Notepad
Send, {F5} ; pastes time and date
BlockInput, off

;auto upload to youtube ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;close appcaey.exe ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
^x::
Process, Close, APPcasey.exe
WinClose, ahk_class ConsoleWindowClass
return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

/* ;EASE IN AND EASE OUT -reworked from TARAN's code-
;Process, Close, intercept.exe ; Ends duplicates Run, intercept.bat, %A_WorkingDir%\intercept, Hide WinWait, intercept.exe WinHide, intercept.exe﻿
 
Numpad0:: 
; blockinput, sendandMouse
blockinput, MouseMove
; blockinput, on
click right
send T ;tack Select backward Tool;√
sleep 10
send U ;was E Eanble clip Use +U insted;√
send U;was E Eanble clip Use +U insted;√
sleep 10
send {enter}
sleep 10
tooltip, 
; click right
click middle
sendinput {click right}
send T
sleep 10
send U ;was E Eanble clip Use +U insted;√
sleep 10
send {enter}
blockinput, off
blockinput, MouseMoveOff
tooltip,
return
*/


;;;;;;;;;;;;;;;;;;;;[Premiere] Click to move Playhead;;;;;;;;;;;;;;;;;;;;;
#IfWinActive, ahk_class Premiere Pro

;~LButton::;

;;;;;;;;;;;;;;;;;;;Premiere F1 Fastblur;;;;;;;;;;;;;;;;;;;;;

#IfWinActive, ahk_class Premiere Pro
F1::
Send, +e ;Effects Window
MouseGetPos, StartX, StartY
Sleep, 10
Send, {tab}
Send, {tab}
Send, {backspace} ;Delete Text
Sleep, 10
Send, {f}
Sleep, 10
Send, {a}
Sleep, 10
Send, {s}
Sleep, 10
Send, {t}
Sleep, 10

	ImageSearch,ax,ay,0,0,A_ScreenWidth,A_ScreenHeight, C:\Users\Desktop\Desktop\interception holder\Obsolete.png
	MouseMove, %ax%,%ay%
	Sleep, 10
	MouseClick
	Sleep, 10
	ImageSearch,bx,by,0,0,A_ScreenWidth,A_ScreenHeight, C:\Users\Desktop\Desktop\interception holder\Fast Blur.png
	MouseMove, %bx%,%by%
	Sleep, 10
	Click,Down 
MouseMove, StartX, StartY
	Click,Up
	WinWait, ahk_class Premiere Pro
	Send, ^e ;Effect Controls
return

;;;;;;;;;;;;;;;;;;;Premiere F2 Black BG;;;;;;;;;;;;;;;;;;;;;

#IfWinActive, ahk_class Premiere Pro
F2::
run, C:\Users\Desktop\Desktop\interception holder
WinWait, C:\Users\Desktop\Desktop\interception holder
WinMove,1220,21
WinWait, C:\Users\Desktop\Desktop\interception holder
MouseGetPos,x,y
SysGet, VirtualScreenWidth, 78
SysGet, VirtualScreenHeight, 79
ImageSearch,ax,ay,0,0,%VirtualScreenWidth%,%VirtualScreenHeight%,C:\Users\Desktop\Desktop\interception holder\black solid img.png
if ErrorLevel = 1
{	ImageSearch,bx,by,0,0,%VirtualScreenWidth%,%VirtualScreenHeight%,C:\Users\Desktop\Desktop\interception holder\black solid2.png
	MouseMove,%bx%,%by%
	click,Down
}

MouseMove,%ax%,%ay%
click,Down
MouseMove,%x%,%y%, 1
Click,Up
WinActivate, ahk_class Premiere Pro
return

;;;;;;;;;;;;;;;;;;;Premiere F3 100-110 Scale;;;;;;;;;;;;;;;;;;;;;

#IfWinActive, ahk_class Premiere Pro
F3::
BlockInput, on
Send, ^!n ;nest
Sleep, 10
Send, {enter}
Sleep, 1000
Send, +e ;Effects Window
Sleep, 10
MouseGetPos, StartX, StartY
Sleep, 10
Send, {tab}
Send, {tab}
Send, {tab}
Send, {backspace} ;Delete Text
Sleep, 10
Send, {1}
Sleep, 10
Send, {0}
Sleep, 10
Send, {0}
Sleep, 10
ImageSearch,1x,1y,0,0,A_ScreenWidth,A_ScreenHeight, C:\Users\Desktop\Desktop\interception holder\preset.png
MouseMove, %1x%,%1y%
Sleep, 10
MouseClick
Sleep, 10
ImageSearch,2x,2y,0,0,A_ScreenWidth,A_ScreenHeight, C:\Users\Desktop\Desktop\interception holder\100 scale.png
Sleep, 10
MouseMove, %2x%,%2y%
Sleep, 10
Click,Down 
MouseMove, StartX, StartY
Click,Up
WinWait, ahk_class Premiere Pro
Send, ^e ;Effect Controls
BlockInput, Off
return


;;;;;;;; Insert clip to Tack 1;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#IfWinActive, ahk_class Premiere Pro
1::
Sleep, 10
Send,!1    ;Toggle Target Video 1 (Set Source Patch V1 to trk v1)
Sleep, 10
Send,!r    ;Overwrite
Sleep, 10
IfWinExist, ahk_class #32770
	Send, {enter}
Sleep, 10		
;Send, +1   ;Toggle ON trk v1
Sleep, 10
;Send, ^1   ;Toggle ON trk a1 
Sleep, 10
Send, {Up} ;Go to clip in point
Sleep, 10
Send, ^1   ;Toggle OFF trk a1
Sleep, 10
Send, +1   ;Toggle OFF vid trk 1
Sleep, 10
Send, e
Sleep, 10
Send, r
return

;;;;;;;; Insert clip to Tack 2;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#IfWinActive, ahk_exe Adobe Premiere Pro.exe
2::
BlockInput, on
Send, t    ;Selects timeline
Sleep, 10
Send,!2    ;Toggle Target Video 2 (Set Source Patch V1 to trk v2)
Sleep, 10
Send,!r    ;Overwrite
Sleep, 10
Send, ^+a  ; deselect all
Send, {Up} ;Go to clip in point
WinWait, ahk_exe Adobe Premiere Pro.exe
Send, +x   ;set to frame size
Sleep, 10
Send, !{Up} ;move clip up a track
Sleep, 10
run, C:\Users\Desktop\Desktop\interception holder ;black clip code
WinWait, C:\Users\Desktop\Desktop\interception holder
WinMove,1220,21
WinWait, C:\Users\Desktop\Desktop\interception holder
MouseGetPos,x,y
SysGet, VirtualScreenWidth, 78
SysGet, VirtualScreenHeight, 79
ImageSearch,ax,ay,0,0,%VirtualScreenWidth%,%VirtualScreenHeight%,C:\Users\Desktop\Desktop\interception holder\black solid img.png
if ErrorLevel = 1
{	ImageSearch,bx,by,0,0,%VirtualScreenWidth%,%VirtualScreenHeight%,C:\Users\Desktop\Desktop\interception holder\black solid2.png
	MouseMove,%bx%,%by%
	click,Down
}
MouseMove,%ax%,%ay%
click,Down
MouseMove,%x%,%y%, 1
Click,Up
;Send, +LButton ; sellect black clip
Sleep, 10
;Send, ^!n ;nest and scale code
Sleep, 10
;Send, {enter}
Sleep, 10
;Send, +e ;Effects Window
Sleep, 10
;MouseGetPos, StartX, StartY
Sleep, 10
;Send, {tab}
;Send, {tab}
;Send, {backspace} ;Delete Text
Sleep, 10
;Send, {1}
Sleep, 10
;Send, {0}
;Sleep, 10
;Send, {0}
Sleep, 10
;ImageSearch,ax,ay,0,0,A_ScreenWidth,A_ScreenHeight, C:\Users\Desktop\Desktop\interception holder\100 scale.png
;MouseMove, %ax%,%ay%
Sleep, 10
Click,Down 
;MouseMove, StartX, StartY
Click,Up
;WinWait, ahk_class Premiere Pro
;Send, ^e ;Effect Controls
;BlockInput, Off
return


;;;;;;;; Insert clip to Tack 3;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#IfWinActive, ahk_class Premiere Pro
3::
Sleep, 10
Send,!3    ;Toggle Target Video 3 (Set Source Patch V1 to trk v3)
Sleep, 10
Send,!r    ;Overwrite
Sleep, 10
IfWinExist, ahk_class #32770
	Send, {enter}
Sleep, 10	
Sleep, 10
;Send, +3   ;Toggle ON trk v3
Sleep, 10
;Send, ^3   ;Toggle ON trk a3
WinWait, ahk_class Premiere Pro
Send, {Up} ;Go to clip in point
WinWait, ahk_class Premiere Pro
Send, ^3   ;Toggle OFF trk a3
Sleep, 10
Send, +3   ;Toggle OFF trk v3
Sleep, 10
Send, e
Sleep, 10
Send, r
return

;;;;;;;; Insert clip to Tack 4;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#IfWinActive, ahk_class Premiere Pro
4::
Sleep, 10
Send,!4    ;Toggle Target Video 4 (Set Source Patch V1 to trk v4)
Sleep, 10
Send,!r    ;Overwrite
Sleep, 10
IfWinExist, ahk_class #32770
	Send, {enter}
Sleep, 10	
Sleep, 10
;Send, +4   ;Toggle ON trk v4
Sleep, 10
;Send, ^4   ;Toggle ON trk a4
Sleep, 10
Send, {Up} ;Go to clip in point
Sleep, 10
Send, ^4   ;Toggle OFF trk a4
Sleep, 10
Send, +4   ;Toggle OFF trk v4
Sleep, 10
Send, e
Sleep, 10
Send, r
return

;;;;;;;; Insert clip to Tack 5;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#IfWinActive, ahk_class Premiere Pro
5::
Sleep, 10
Send,!5    ;Toggle Target Video 5 (Set Source Patch V1 to trk v5)
Sleep, 10
Send,!r    ;Overwrite
Sleep, 10
IfWinExist, ahk_class #32770
	Send, {enter}
Sleep, 10	
Sleep, 10
;Send, +5   ;Toggle ON trk v5
Sleep, 10
;Send, ^5   ;Toggle ON trk a5
Sleep, 10
Send, {Up} ;Go to clip in point
Sleep, 10
Send, ^5   ;Toggle OFF trk a5
Sleep, 10
Send, +5   ;Toggle OFF trk v5
Sleep, 10
Send, e
Sleep, 10
Send, r
return

;;;;;;;; Insert clip to Tack 6;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#IfWinActive, ahk_class Premiere Pro
6::
Sleep, 10
Send,!6    ;Toggle Target Video 6 (Set Source Patch V1 to trk v6)
Sleep, 10
Send,!r    ;Overwrite
Sleep, 10
IfWinExist, ahk_class #32770
	Send, {enter}
Sleep, 10	
Sleep, 10
;Send, +6   ;Toggle ON trk v6 
Sleep, 10
;Send, ^6   ;Toggle ON trk a6
Sleep, 10
Send, {Up} ;Go to clip in point
Sleep, 10
Send, ^6   ;Toggle OFF trk a6
Sleep, 10
Send, +6   ;Toggle OFF trk v6
Sleep, 10
Send, e
Sleep, 10
Send, r
return





;;;;;;;;;;;;;;;;;;;Premiere Mark in/out extract/ripple;;;;;;;;;;;;;;;;;;;;;

/*#IfWinActive, ahk_class Premiere Pro
	x::send, ai
return
*/



;MAC controler ;MAC controler ;MAC controler ;MAC controler ;MAC controler ;MAC controler ;MAC controler ;MAC controler ;MAC controler
#if (getKeyState("F23", "P")) 
F23::return

p::
	Run, "C:\Program Files\Mozilla Firefox\firefox.exe" -private-window https://www.pornhub.com/video/search?search=mommys+girl
return

k::
Run, cmd
WinWait, ahk_class ConsoleWindowClass
Send, shutdown -s -t 3600 
WinWait, ahk_class ConsoleWindowClass
Send, {enter}
WinClose, ahk_class ConsoleWindowClass
Return

j::
Run, cmd
WinWait, ahk_class ConsoleWindowClass
Send, shutdown /a
WinWait, ahk_class ConsoleWindowClass
Send, {enter}
WinClose, ahk_class ConsoleWindowClass
return

Return
/*
Run, firefox.exe http://www.gmail.com, , Max
WinWaitActive, Welcome to Gmail - Windows Internet Explorer
StatusBarWait, Done, , , Welcome to Gmail - Windows Internet Explorer
Send, Username{Tab}Password{Enter}
Return
*/

;https://www.youporn.com/category/26/lesbian/
;

;oon NUMERIC KEPAD Controler NUMNUMZ Controler NUMNUMZ Controler NUMNUMZ Controler NUMNUMZ Controler NUMNUMZ Controler 
#if (getKeyState("F22", "P"))
F22::return

NumpadEnter::
IfWinNotExist, ahk_class Premiere Pro
	Run, "C:\Program Files\Adobe\Pr\Adobe Premiere Pro.exe"
WinActivate ahk_class Premiere Pro
Return

numpadAdd::
IfWinNotExist, ahk_exe firefox.exe
	Run, firefox
if WinActive("ahk_exe firefox.exe")
	Send ^{tab}
else
	WinActivate ahk_exe firefox.exe
Return

numpadSub::
IfWinNotExist, ahk_class Photoshop
	Run, "C:\Program Files\Adobe\Adobe Photoshop CC 2015\Photoshop.exe"
WinActivate ahk_class Photoshop
Return

NumpadDot::MouseClick, Left

Numpad3::
IfWinNotExist, ahk_class illustrator
	Run, "C:\Program Files\Adobe\Adobe Illustrator CC 2015\Support Files\Contents\Windows\Illustrator.exe"
WinActivate ahk_class illustrator
Return

Numpad4::
IfWinNotExist, ahk_class MSPaintApp
	Run, mspaint
WinActivate ahk_class MSPaintApp
Return

Numpad5::
IfWinNotExist, ahk_exe Character Animator.exe
	Run, "C:\Program Files\Adobe\Adobe Character Animator CC (Beta)\Support Files\Character Animator.exe"
WinActivate ahk_exe Character Animator.exe
Return

Numpad9::
IfWinNotExist, ahk_exe SciTE.exe
	Run, "C:\Program Files\AutoHotkey\SciTE\SciTE.exe"
WinActivate ahk_exe SciTE.exe
Return

Numpad6::
IfWinNotExist, ahk_exe AfterFX.exe
	Run, "C:\Program Files\Adobe\Adobe After Effects CC 2018\Support Files\AfterFX.exe"
WinActivate ahk_exe AfterFX.exe
Return


Numpad8::

sites:="www.gmail.google.com|www.espn.com|www.facebook.com"
Loop, parse, sites, |
{
If A_Index=1 && WinNotExist ahk_class MozillaWindowClass ; match this with  your default browser
   {
   Run %A_LoopField% ; if your browser is not open, this will open your browser and start on this page
   continue
   }

SendInput %A_LoopField%{Enter}
}
return



NumpadDiv::
IfWinNotExist, ahk_exe firefox.exe
	Run, firefox.exe gmail.com | facebook.com | pixabay.com | youtube.com | drive.google.com/drive/my-drive
if WinActive("ahk_exe firefox.exe")
	Send ^{tab}
else
	WinActivate ahk_exe firefox.exe
Return


Numpad7::
IfWinNotExist, ahk_class Notepad
	Run, Notepad
IfWinActive,ahk_class Notepad
WinGetClass, ActiveClass, A
WinActivateBottom, ahk_class %ActiveClass%
IfWinNotActive, ahk_class Notepad
	WinSet, Top
return



Numpad2::
IfWinNotExist, ahk_exe Muse.exe
	Run, "C:\Program Files\Adobe\Adobe Muse CC 2017\Muse.exe"
WinActivate ahk_exe Muse.exe
return



numpad1::
IfWinNotExist, ahk_class CabinetWClass
	Run, explorer.exe
GroupAdd, taranexplorers, ahk_class CabinetWClass ;You have to make a new group for each application, don't use the same one for all of them!
if WinActive("ahk_exe explorer.exe")
	GroupActivate, taranexplorers, r
else
	WinActivate ahk_class CabinetWClass ;you have to use WinActivatebottom if you didn't create a window group.
Return

Numpad0::
IfWinNotExist, AU3_Spy.exe
	Run, AU3_Spy.exe
WinGet MX, MinMax, Active Window Info
  If(MX=0) ;Selected
    WinMinimize, Active Window Info
  If(MX=1) ;Deslected
    WinRestore, Active Window Info
  IF(MX=-1) ;Minimized
    WinRestore, Active Window Info
return


NumpadMult::
IfWinNotExist, ahk_class Bridge_WindowClass
	Run, "C:\Program Files\Adobe\Adobe Bridge CC (64 Bit)\Bridge.exe"
WinActivate, ahk_class Bridge_WindowClass
return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;End of Numpad;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;





