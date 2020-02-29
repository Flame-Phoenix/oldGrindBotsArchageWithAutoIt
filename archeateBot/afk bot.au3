HotKeySet("{F1}","myExit")

$timer = 4

$x=WinActivate("- ArcheAge DX11 - 3.0.0.3.UT (r.318414) Dec  8 2016 (14:32:46) Vengeance")
While (1)
   if $timer = 1 then
	   send("{d down}")
	  sleep(300)
	  send("{d up}")
	  sleep(60000)
	  $timer = 4
   EndIf
   if $timer = 2 then
	  send("{a down}")
	  sleep(300)
	  send("{a up}")
	  sleep(100000)
   EndIf
   if $timer = 3 then
	  send("{d down}")
	  sleep(300)
	  send("{d up}")
	  sleep(90000)
   EndIf
   if $timer = 4 then
	  send("{a down}")
	  sleep(300)
	  send("{a up}")
	  sleep(120000)
   EndIf
   $timer = $timer - 1
   $pix=PixelSearch(54,988,56,990,0x905DD1,1)
   if @error Then
	  mouseclick("right",55, 989 , 1 , 10 )
   EndIf

WEnd



Func myExit()
   MsgBox(0,"Exiting","Bot is quitting")
   Exit
EndFunc

