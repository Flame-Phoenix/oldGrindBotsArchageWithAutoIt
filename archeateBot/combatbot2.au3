HotKeySet("{F1}","myExit")

Global $killed = True
Global $turn = 10000
Global $timer = 2




$x=WinActivate("- ArcheAge DX11 - 3.0.0.3.UT (r.318414) Dec  8 2016 (14:32:46) Prophecy")
While (1)
   findtarget()
WEnd



Func myExit()
   MsgBox(0,"Exiting","Bot is quitting")
   Exit
EndFunc

Func findtarget()
   send("{tab 1}")
   send("{a down}")
   sleep(400)
   send("{a up}")
   sleep(1000)
   $pix =PixelSearch(764, 1038,766, 1039,0xE4E2DD,1);go close to attack monster
   If NOT(@error) Then
	  While $killed = True
		 attacking()
		 healling()
	  WEnd
	  $timer = 2
	  $killed = True
   EndIf


EndFunc

Func attacking()
   send("{1 down}")
   sleep(10000)
   send("{1 up}")
   $pixEndAtt=PixelSearch(986,766,988,768,0x9C734E,1)
   If Not(@error) Then
	  send("{f down}")
	  sleep(200)
	  send("{f up}")
	  sleep(200)
	  send("{f down}")
	  sleep(200)
	  send("{f up}")
	  sleep(200)
	  $killed = False
   EndIf
   $timer = $timer -1
   If $timer = 0 Then
	  $killed = False
   EndIf
EndFunc

Func healling()
   $pixHp=PixelSearch(38,64,40,66,0x30741D,1)
   if @error Then
	  send("{9 down}")
	  sleep(200)
	  send("{9 up}")
	  sleep(60000)
   EndIf

EndFunc