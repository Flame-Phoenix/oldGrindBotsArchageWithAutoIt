HotKeySet("{F1}","myExit")

Global $killed = True
Global $turn = 10000
Global $timer = 4



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
   ;send("{a down}")
   ;sleep(400)
   ;end("{a up}")
   ;sleep(1000)
   $pix =PixelSearch(1059, 1054,1061, 1056,0xC5DEF3,1);go close to attack monster
   If NOT(@error) Then
	  While $killed = True
		 attacking()
		 healling()
	  WEnd
	  $timer = 4
	  $killed = True
   EndIf


EndFunc

Func attacking()
   send("{4 down}")
   sleep(300)
   send("{4 up}")
   sleep(1208)
   send("{q down}")
   sleep(150)
   send("{q up}")
   sleep(1024)
   send("{e down}")
   sleep(300)
   send("{e up}")
   sleep(997)
   send("{2 down}")
   sleep(300)
   send("{2 up}")
   sleep(1054)
   send("{1 down}")
   sleep(3000)
   send("{1 up}")
   sleep(278)
   send("{2 down}")
   sleep(300)
   send("{2 up}")
   sleep(259)
   send("{5 down}")
   sleep(300)
   send("{5 up}")
   sleep(259)
   send("{r down}")
   sleep(300)
   send("{r up}")
   sleep(259)
   send("{0 down}")
   sleep(300)
   send("{0 up}")
   sleep(259)
   send("{8 down}")
   sleep(300)
   send("{8 up}")
   sleep(259)
   send("{q down}")
   sleep(150)
   send("{q up}")
   sleep(278)
   send("{e down}")
   sleep(300)
   send("{e up}")

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
   send("{3 down}")
   sleep(300)
   send("{3 up}")
   sleep(259)
EndFunc

Func healling()
   $pixHp=PixelSearch(79,64,81,66,0x30741D,1)
   if @error Then
	  send("{7 down}")
	  sleep(200)
	  send("{7 up}")
	  sleep(60000)
   EndIf
   $pixMp=PixelSearch(42, 79,44,81,0x304DBB,1)
   if @error Then
	  send("{9 down}")
	  sleep(200)
	  send("{9 up}")
   EndIf

EndFunc