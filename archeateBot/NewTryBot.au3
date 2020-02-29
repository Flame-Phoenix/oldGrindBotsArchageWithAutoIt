HotKeySet("{F1}","myExit")
$x=WinActivate("- ArcheAge DX11 - 3.0.0.3.UT (r.318414) Dec  8 2016 (14:32:46) Prophecy")

Global $killed = True
Global $turn = 10000
Global $timer = 3

While (1)
   findtarget()
   $turn = $turn - 1
WEnd



Func findtarget()
   send("{tab 1}")
   ;send("{a down}")
   sleep(400)
   send("{a up}")
   $pixboxTL=PixelSearch(61, 133,676, 552,0xBA0D08,15); top left
   If Not(@error) Then
	  send("{a down}")
	  sleep(400)
	  send("{a up}")
   EndIf
   $pixboxBL=PixelSearch(61, 555,676, 929,0xBA0D08,15)
   If Not(@error) Then
	  send("{a down}")
	  sleep(400)
	  send("{a up}")
   EndIf
   $pixboxTC=PixelSearch(678, 100,1294, 353,0xBA0D08,15)
   If Not(@error) Then
	  send("{w down}")
	  sleep(400)
	  send("{w up}")
   EndIf
   $pixboxMC=PixelSearch(678,338,1294, 548,0xBA0D08,15)
   If Not(@error) Then
	  while $killed= True
		 attacking()
		 healling()
	  WEnd
	  $killed = True
	  $timer = 3
   EndIf
   $pixboxBC=PixelSearch(678, 557,1294, 930,0xBA0D08,15)
   If Not(@error) Then
	  send("{w 1}")
	  send("{ins down}")
	  sleep(400)
	  send("{ins up}")
   EndIf
   $pixboxTR=PixelSearch(1297, 180,1914, 554,0xBA0D08,15)
   If Not(@error) Then
	  send("{d down}")
	  sleep(400)
	  send("{d up}")
   EndIf
   $pixboxBR=PixelSearch(1915, 556,1299, 930,0xBA0D08,15)
   If Not(@error) Then
	  send("{d down}")
	  sleep(400)
	  send("{d up}")
   EndIf
   If $turn = 0 Then
   send("{ins 1}")
   $turn = 10000
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
   $pixHp=PixelSearch(38,64,40,66,0x30741D,1)
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

Func myExit()
   MsgBox(0,"Exiting","Bot is quitting")
   Exit
EndFunc