HotKeySet("{F1}","myExit")


Global $killed = False
Global $me = 3
Global $dtStart = 60



$x=WinActivate("- ArcheAge DX11 - 2.9.6.2.UT (r.314380) Nov 11 2016 (11:46:17) Rangora")
While (1)
   bot()
WEnd



Func myExit()
   MsgBox(0,"Exiting","Bot is quitting")
   Exit
EndFunc

Func bot()
   $dtStart = 60
   send("{w down}")
   sleep(500)
   $pixels1 =PixelSearch(49,152,825,920,0x7E7E5B,1)
   If Not(@error) or $me = 1 Then
	  $me = 3
	  send("{a down}")	  ;search for monster
	  sleep(200)
   EndIf
   $pixels2 =PixelSearch(1148,153,1868, 949,0x7E7E5B,1)
   If Not(@error) Then
	  send("{d down}")
	  sleep(200)
   EndIf

   send("{tab 1}")
   $pixels =PixelSearch(714,191,1321, 851,0x7E7E5B,1)

   if NOT(@error) then
	  send("{d up}")
	  send("{a up}")
	  send("{w up}")
	  while ($killed == False) And ($dtStart > 0)
		 $pix =PixelSearch(784, 1049,786, 1051,0x859CB5,1);go close to attack monster
		 send("{w down}")
		 sleep(3000)
		 if NOT(@error) then
			$dtStart = 60
			send("{w up}")
			While ($killed == False) And ($dtStart > 0)
			   send("{c 1}")
			   sleep(200)
			   send("{2 1}")
			   sleep(200)
			   send("{1 1}")
			   sleep(200)
			   send("{1 1}")
			   sleep(200)
			   send("{1 1}")
			   sleep(200)
			   send("{3 1}")
			   sleep(200)
			   send("{1 1}")
			   sleep(200)
			   send("{1 1}")
			   sleep(200)
			   send("{1 1}")
			   sleep(200)
			   send("{4 1}")
			   sleep(200)
			   send("{5 1}")
			   sleep(200)
			   send("{1 1}")
			   sleep(200)
			   send("{1 1}")
			   sleep(200)
			   send("{1 1}")
			   sleep(200)
			   send("{1 1}")
			   sleep(200)
			   send("{1 1}")
			   sleep(200)
			   send("{1 1}")
			   sleep(200)
			   send("{1 1}")
			   sleep(200)

			   $pix3=PixelSearch(932,772,934,774,0xCEB994,1)
			   If Not(@error) Then
				  send("{f 1}")
				  sleep(200)
				  send("{f 1}")
				  sleep(200)
				  $killed = True
			   EndIf
			   $dtStart = $dtStart - 20
			WEnd
		 EndIf
		 $dtStart = $dtStart - 30
	  WEnd
	  $killed = False
   EndIf
   send("{d up}")
   send("{w up}")
   send("{a up}")
   $me = $me - 1

EndFunc