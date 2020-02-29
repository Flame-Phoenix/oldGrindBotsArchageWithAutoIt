HotKeySet("{F1}","myExit")


Global $killed = False
Global $me = False
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
   sleep(2000)
   send("{d down}")   ;search for monster
   sleep(800)
   send("{tab 1}")
   $pixels =PixelSearch(714,191,1321, 851,0x7E7E5B,5)

   if NOT(@error) then
	  send("{d up}")
	  send("{w up}")
	  while ($killed == False) And ($dtStart > 0)
		 $pix =PixelSearch(771, 1038,773, 1040,0xFFFFFF,1);go close to attack monster
		 send("{w down}")
		 sleep(3000)
		 if NOT(@error) then
			$dtStart = 60
			send("{w up}")
			While ($killed == False) And ($dtStart > 0)
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
			   send("{4 1}")
			   sleep(200)
			   send("{4 1}")
			   sleep(200)
			   send("{4 1}")
			   sleep(200)
			   send("{1 1}")
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
			   send("{4 1}")
			   sleep(200)
			   send("{4 1}")
			   sleep(200)
			   send("{4 1}")
			   sleep(200)

			   $pix3=PixelSearch(932,772,934,774,0xCEB994,1)
			   If Not(@error) Then
				  send("{f 3}")
				  sleep(200)
				  $killed = True
			   EndIf
			   $dtStart = $dtStart - 30
			WEnd
		 EndIf
		 $dtStart = $dtStart - 30
	  WEnd
	  $killed = False
   EndIf
   send("{d up}")
   send("{w up}")

EndFunc