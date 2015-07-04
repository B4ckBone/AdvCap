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
Winactivate("Netzwerkverbindungen")
WinMove("Netzwerkverbindungen","",915,673,332,243)
lan(); switch lan off
Sleep(2000)
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
lan(); Switch on lan
Sleep(2000)
steamonline()
sleep(5000)
WEnd


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

Func lan()
   Mouseclick("right",947,788,1,2)
   sleep(1500)
   send("{down}")
   sleep(1500)
   Send("{enter}")
Endfunc

Func advcap()
   run("C:\Program Files\Steam\steamapps\common\AdVenture Capitalist\adventure-capitalist.exe")
   sleep(3000)
   send("{enter}")
   sleep(3000)
   Global $hWnd = WinActivate("AdVenture Capitalist!")
   WinMove("AdVenture Capitalist!", "", 10,10)
   Global $WinPos[3]
   sleep(3000)
   $WinPos = WinGetPos("AdVenture Capitalist!")
   ;~ $WinPos[0]=$WinPos[0]+19; For windows 8 borders
   ;~ $WinPos[1]=$WinPos[1]+19; For windows 8 borders
   ;~ Consolewrite($winpos[0]&$winpos[1]&@crlf)
   Opt("MouseCoordMode", 0) ;1=absolute, 0=relative, 2=client - need to shift all coordinates o.O
   sleep(8000)
   MouseClick('left', 950, 50, 1, 3);10
   sleep(300)
   MouseClick('left', 950, 50, 1, 3);100
   sleep(300)
   MouseClick('left', 950, 50, 1, 3);Max
   sleep(1300)

   		   MouseClick('left', 33,493, 1, 0)
		   Sleep(1000)
		   MouseClick('left', 650,700,1, 3); Claim
		   Sleep(1000)
		   MouseClick('left', 350,550, 1, 3); YES ....
		   Sleep(1000)
		   MouseClick('left', 828,229, 1, 3)
		   Sleep(1000)
		   MouseClick('left', 930, 100, 1, 3); close menu
		   Sleep(1000)

   For $i = 0 to 25 step +1
	  upgrade()
	  sleep(2000)
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
		 Endif


			   For $x = 450 to 850 step +400 ; clicks
				   For $y = 150 to 550 step +100
				   MouseClick("left",$x,$y,1,0)
				   Next
			   Next
			   For $x = 450 to 850 step +400 ;clicks
				   For $y = 200 to 600 step +100
				   MouseClick("left",$x,$y,1,0)
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


   For $i=0 to 5 step +1
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
	   MouseClick('left', 930, 110, 1, 3); close menu
	   Sleep(1000)
Next
   Opt("MouseCoordMode", 1) ;1=absolute, 0=relative, 2=client - need to shift all coordinates o.O
   Sleep(1000)
   WinClose("AdVenture Capitalist!")
Endfunc

Func steam()
   run("C:\Program Files\Steam\Steam.exe")
   sleep(20000); win + right arrow if not already
   MouseClick("left",600, 350,1,5)
   sleep(5000)
   MouseClick("left",700,550,1,5)
   sleep(1000)
;~    send("!#{RIGHT}")
   sleep(1000)
   MouseClick("left",600,200,1,5)
   sleep(1500)
   Send("{enter}")
   sleep(1500)
   WinClose("AdVenture Capitalist!")
   sleep(1500)
   MouseClick("right",1055,939,1,10)
   sleep(1500)
   send("{up}")
   sleep(1500)
   send("{enter}")
Endfunc

Func steamonline()
   run("C:\Program Files\Steam\Steam.exe")
   sleep(20000); win + right arrow if not already
;~    send("{LWIN}{right}")
   sleep(1000)
   MouseClick("left",600,200,1,5)
   sleep(10000)
   MouseClick("left",722,494,1,10)
   sleep(10000)
   Send("{enter}")
   sleep(1500)
   WinClose("AdVenture Capitalist!")
   sleep(1500)
   MouseClick("right",1055,939,1,10)
   sleep(1500)
   send("{up}")
   sleep(1500)
   send("{enter}")
Endfunc

Func present()
   $tNew = _Date_Time_EncodeSystemTime(7, 2, 2015)
   _Date_Time_SetSystemTime(DllStructGetPtr($tNew))
EndFunc

Func future()
   $tNew = _Date_Time_EncodeSystemTime(1, 17, 8900)
   _Date_Time_SetSystemTime(DllStructGetPtr($tNew))
Endfunc

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
