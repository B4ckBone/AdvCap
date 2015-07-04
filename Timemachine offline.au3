; B4ckBOne's Adventure Capitalist BOt
; Windows 7 without aero 26 px .. win 8 45 px diff = 19
; Windows 7 classic window borders: x 4 px y = 30 px

#include <File.au3>
#include <Misc.au3>
#include <array.au3>
#include <MsgBoxConstants.au3>
#include <FileConstants.au3>
#include <Date.au3>
#requireadmin
;~ $tNew = _Date_Time_EncodeSystemTime(1, 17, 1700)
;~ _Date_Time_SetSystemTime(DllStructGetPtr($tNew))



;~ FileRead(settings.txt)
Global $hWnd = WinActivate("AdVenture apitalist!")
WinMove("AdVenture Capitalist!", "", 10,10)
Global $WinPos[3]
Global $WinPos = WinGetPos("AdVenture Capitalist!")
;~ $WinPos[0]=$WinPos[0]+19; For windows 8 borders
;~ $WinPos[1]=$WinPos[1]+19; For windows 8 borders
;~ Consolewrite($winpos[0]&$winpos[1]&@crlf)
Opt("MouseCoordMode", 1) ;1=absolute, 0=relative, 2=client - need to shift all coordinates o.O
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

; Auflösung: 1280 960
;open(explorer Systemsteuerung\Netzwerk und Internet\Netzwerkverbindungen)
;put network adapter to coordinates 960 x 790 y

While True
	;MAIN:
;~ 	ConsoleWrite(" Ping " & @CRLF)
;~ 	$Unlock = PixelSearch(39 + $WinPos[0], 255 + $WinPos[1], 44 + $WinPos[0], 262 + $WinPos[1], 0xDC7B36, 10)
;~ 	If IsArray ($Unlock) = 1 Then
;~ 		MouseClick('left', $Unlock[0], $Unlock[1], 1, 0)
;~ 		MouseClick('left', 930, 100, 1, 3); close menu
;~ 	Endif
dirremove( "C:\Program Files\Steam\userdata\6341747\346900" ,1)
Sleep(2000)
future()
Sleep(2000)
advcap()
Sleep(2000)
present()
Sleep(2000)
steam()
Sleep(2000)
WEnd





Func advcap()
   run("C:\Program Files\Steam\steamapps\common\AdVenture Capitalist\adventure-capitalist.exe")
   sleep(3000)
   send("{enter}")
   sleep(3000)
   Global $hWnd = WinActivate("AdVenture Capitalist!")
   WinMove("AdVenture Capitalist!", "", 10,10)
   Global $WinPos[3]
    $WinPos = WinGetPos("AdVenture Capitalist!")
	Opt("MouseCoordMode", 0) ;1=absolute, 0=relative, 2=client - need to shift all coordinates o.O
   sleep(6000)
;~    MouseClick('left', 950, 50, 1, 3);10
;~    sleep(300)
;~    MouseClick('left', 950, 50, 1, 3);100
;~    sleep(300)
;~    MouseClick('left', 950, 50, 1, 3);Max
;~    sleep(300)

		   invest()
		   manager()
		   upgrade()
		   manager()
		   upgrade()
		   For $i = 0 to 20 step 1
			   For $x = 850 to 450 step -400 ;clicks
				   For $y = 600 to 200 step -100
				   MouseClick("left",$x,$y,1,0)
				   Next
				Next
			 Next

			MouseClick('left', 950, 50, 1, 3);10
			   sleep(300)
			   MouseClick('left', 950, 50, 1, 3);100
			   sleep(300)
			   MouseClick('left', 950, 50, 1, 3);Max
			   sleep(1300)

			For $i = 0 to 2 step 1
			   For $x = 850 to 450 step -400 ;clicks
				   For $y = 600 to 200 step -100
				   MouseClick("left",$x,$y,1,0)
				   Next
				Next
			 Next


			manager()
		   upgrade()
Opt("MouseCoordMode", 1) ;1=absolute, 0=relative, 2=client - need to shift all coordinates o.O
   sleep(3000)
   WinClose("AdVenture Capitalist!")
Endfunc

Func invest()
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
		      sleep(1000)
			   MouseClick('left', 950, 50, 1, 3);10
			   sleep(300)
			   MouseClick('left', 950, 50, 1, 3);100
			   sleep(300)
			   MouseClick('left', 950, 50, 1, 3);Max
			   sleep(1300)
		 Endif
Endfunc

Func manager()
   			$Manager = PixelSearch(39 + $WinPos[0], 412 + $WinPos[1], 44 + $WinPos[0], 417 + $WinPos[1], 0xDC7B36, 10)
		   If IsArray ($Manager) = 1 Then
			   MouseClick('left', $Manager[0]-$WinPos[0], $Manager[1]-$WinPos[1], 1, 2)
			   Sleep(1000)
			   Opt("SendKeyDelay", 500)
			   Opt("SendKeyDownDelay", 500)
			   MouseWheel("up",2)
			   Sleep(500)
			   MouseClick('left',750,400,3,2)
			   Sleep(500)
			   MouseClick('left',750,400,3,2)
			   Sleep(500)
			   MouseClick('left',750,400,3,2)
			   Sleep(500)
			   MouseClick('left',750,400,3,2)
			   Sleep(500)
			   MouseClick('left',750,400,3,2)
			   Sleep(500)
			   MouseClick('left',750,400,3,2)
			   Sleep(500)
			   MouseClick('left',750,400,3,2)
			   Sleep(500)
			   MouseClick('left',750,400,3,2)
			   Sleep(500)
			   MouseClick('left',750,400,3,2)
			   Sleep(500)
			   MouseClick('left',750,400,3,2)
			   Sleep(500)
			   MouseClick('left', 930, 100, 1, 3); close menu
		   Endif
EndFunc


Func steam()
   run("C:\Program Files\Steam\Steam.exe");C:\Program Files\Steam\config\loginusers.vdf <-- offlinemode and disable warning
   sleep(3000); win + right arrow if not already
   MouseClick("left",600,200,1,5)
   sleep(1500)
   Send("{enter}")
   sleep(1500)
   WinClose("AdVenture Capitalist!")
   sleep(500)
   MouseClick("right",1055,939,1,10)
   sleep(500)
   send("{up}")
   sleep(500)
   send("{enter}")
Endfunc


Func present()
   $tNew = _Date_Time_EncodeSystemTime(7, 3, 2015)
   _Date_Time_SetSystemTime(DllStructGetPtr($tNew))
EndFunc

Func future()
   $tNew = _Date_Time_EncodeSystemTime(12, 30, 8901)
   _Date_Time_SetSystemTime(DllStructGetPtr($tNew))
Endfunc

Func upgrade()
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
	    MouseClick('left',760,530,1,5)
		Sleep(200)
		MouseClick('left',320,280,3,5)
		Sleep(200)
		MouseClick('left',760,530,11,5)
		Sleep(200)
		MouseClick('left', 930, 100, 1, 5); close menu
	Endif
EndFunc

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
