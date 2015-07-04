; B4ckBOne's Adventure Capitalist BOt
; Windows 7 without aero 26 px .. win 8 45 px diff = 19
; Windows 7 classic window borders: x 4 px y = 30 px

#include <File.au3>
#include <Misc.au3>
#include <array.au3>
#include <MsgBoxConstants.au3>
#include <FileConstants.au3>
;~ FileRead(settings.txt)
Global $hWnd = WinActivate("AdVenture Capitalist!")
WinMove("AdVenture Capitalist!", "", 10,10)
Global $WinPos[3]
$WinPos = WinGetPos("AdVenture Capitalist!")
;~ $WinPos[0]=$WinPos[0]+19; For windows 8 borders
;~ $WinPos[1]=$WinPos[1]+19; For windows 8 borders
;~ Consolewrite($winpos[0]&$winpos[1]&@crlf)
Opt("MouseCoordMode", 0) ;1=absolute, 0=relative, 2=client - need to shift all coordinates o.O
Local $hDLL = DllOpen("user32.dll")
Opt("SendKeyDelay",300)
Opt("SendKeyDownDelay",300)
HotKeySet("{PAUSE}", "TogglePause")
HotKeySet("{END}", "Terminate")
Global $paused = False
Global $result = False ;image search result
Global $x = 0
Global $x = 0
Global $x1 = 0
Global $y1 = 0
Global $x4 = 0
Global $y4 = 0
Global $g1 = 0
Global $g2 = 0

Global $Title = "AdVenture Capitalist!" ; Name of the Window
Global $RunState = True




While True
	;MAIN:
	ConsoleWrite(" Ping " & @CRLF)
;~ 	$Unlock = PixelSearch(39 + $WinPos[0], 255 + $WinPos[1], 44 + $WinPos[0], 262 + $WinPos[1], 0xDC7B36, 10)
;~ 	If IsArray ($Unlock) = 1 Then
;~ 		MouseClick('left', $Unlock[0], $Unlock[1], 1, 0)
;~ 		MouseClick('left', 930, 100, 1, 3); close menu
;~ 	Endif


	$Upgrade = PixelSearch(39 + $WinPos[0], 334 + $WinPos[1], 44 + $WinPos[0], 342 + $WinPos[1], 0xDC7B36, 10)
	If IsArray ($Upgrade) = 1 Then
		MouseClick('left', $Upgrade[0]-$WinPos[0], $Upgrade[1]-$WinPos[1], 1, 10)
		ConsoleWrite($Upgrade[0] & "   " & $Upgrade[1]-$WinPos[1] &@crlf)
		Opt("SendKeyDelay", 500)
		Opt("SendKeyDownDelay", 500)
		Sleep(200)
		MouseClick('left',710,280,2,5)
		Sleep(200)
		MouseClick('left',510,280,2,5)
		Sleep(200)
		MouseClick('left',320,280,3,5)
		Sleep(200)
		MouseClick('left',760,530,11,5)
		Sleep(200)
		MouseClick('left', 930, 100, 1, 5); close menu
	Endif



	$Invest = PixelSearch(39 + $WinPos[0], 497 + $WinPos[1], 44 + $WinPos[0], 502 + $WinPos[1], 0xDC7B36, 10)
	If IsArray ($Invest) = 1 Then
		MouseClick('left', $Invest[0]-$WinPos[0], $Invest[1]-$WinPos[1], 1, 0)
		Sleep(1000)
		MouseClick('left', 650,700,1, 3); Claim
		Sleep(1000)
		MouseClick('left', 350,550, 1, 3); YES ....
		Sleep(1000)
		MouseClick('left', 930, 100, 1, 3); close menu
		Sleep(1000)

		For $i = 0 to 100
			For $x = 450 to 850 step +400
				For $y = 150 to 550 step +100
				MouseClick("left",$x,$y,1,0)
				Next
			Next
			For $x = 450 to 850 step +400
				For $y = 200 to 600 step +100
				MouseClick("left",$x,$y,1,0)
				Next
			Next
		Next

		$Manager = PixelSearch(39 + $WinPos[0], 412 + $WinPos[1], 44 + $WinPos[0], 417 + $WinPos[1], 0xDC7B36, 10)
		If IsArray ($Manager) = 1 Then
			MouseClick('left', $Manager[0]-$WinPos[0], $Manager[1]-$WinPos[1], 1, 2)
			Sleep(1000)
			Opt("SendKeyDelay", 500)
			Opt("SendKeyDownDelay", 500)
			MouseWheel("up",2)
			Sleep(500)
			MouseClick('left',750,400,1,2)
			Sleep(500)
			MouseClick('left',750,400,1,2)
			Sleep(500)
			MouseClick('left',750,400,1,2)
			Sleep(500)
			MouseClick('left',750,400,1,2)
			Sleep(500)
			MouseClick('left',750,400,1,2)
			Sleep(500)
			MouseClick('left',750,400,1,2)
			Sleep(500)
			MouseClick('left',750,400,1,2)
			Sleep(500)
			MouseClick('left',750,400,1,2)
			Sleep(500)
			MouseClick('left',750,400,1,2)
			Sleep(500)
			MouseClick('left',750,400,1,2)
			Sleep(500)
			MouseClick('left', 930, 100, 1, 3); close menu
		Endif

	Endif

	;Startup - click the arrow bars
	For $x = 450 to 850 step +400
		For $y = 150 to 550 step +100
		MouseClick("left",$x,$y,1,0)
		Next
	Next
	For $x = 450 to 850 step +400
		For $y = 200 to 600 step +100
		MouseClick("left",$x,$y,1,0)
		Next
	Next
	MouseClick('left', 930, 110, 1, 3); close menu
	Sleep(1000)
WEnd



Func MClick($x, $y, $times = 1, $speed = 0)
	If $times <> 1 Then
		For $i = 0 To ($times - 1)
			Opt("SendKeyDelay", 300)
			Opt("SendKeyDownDelay", 300)
			ControlClick($Title, "", "", "main", "1", $x, $y)
;~ 			If _Sleep($speed, False) Then ExitLoop
		Next
		Else
		Opt("SendKeyDelay", 300)
		Opt("SendKeyDownDelay", 300)
		ControlClick($Title, "", "", "main", "1", $x, $y)
	EndIf
EndFunc   ;==>MClick



Func TogglePause()
	$paused = Not $paused
	While $paused
		Sleep(100)
		ToolTip('Script is "Paused"', 0, 0)
	WEnd
	ToolTip("")
EndFunc   ;==>TogglePause

Func Terminate()
	Exit 0
EndFunc   ;==>Terminate
