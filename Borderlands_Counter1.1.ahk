;Nicholas Rossi
;08/12/2021
;Borderlands Farming Counter

;A simple program that helps you count while farming for items in borderlands and other games that have similar farming locations.
;
;Type in name of item you are farming on first line in farming.txt (Total Length: 24 Char)
;
;Controls
; Numpad0 incriments the farming run and brings up the window. Can be changed on line 31
; Numpad1 resets the current count to 0, also brings up window. Can be changed on line 43
; Ctl + Numpad0, Hides current window. Can be changed on line 56
; Ctl + Alt + Numpad0, Exits the program. Can be changed on line 61


;;;;;;;;;;;;;;;;;;;;;;;;
;; OPTIONS

;Size of text, Default 40
size = 40

;Color of text in HEX, Default ff7f00
;Find more at https://html-color.codes
TextColor = ff7f00

;Position on screen, Default Top Left X0 Y0
Xpos = 0
Ypos = 0

; Number of farming runs; Do not change
RunNumber = 0

; Create Farming.txt file if non existent
if !FileExist("%A_WorkingDir%\farming.txt")
	FileAppend,, %A_WorkingDir%\farming.txt
	
;Numpad 0 activates window and adds 1 to run counter
Numpad0::
RunNumber ++
Gui, Run:New, AlwaysOnTop -SysMenu -Caption			;Removes menu and top bar, displays on top of any window
Gui, Color, EEAA99									;Changes Background to Transparent
	Gui +LastFound									; ""
	WinSet, TransColor, EEAA99						; ""
Gui, Font, bold c%TextColor% s%size%				;Bold font of text size and text color above
FileReadLine, Item, farming.txt, 1					;Reads first line from farming.txt and assigns it to Item
Gui, Add, Text,, Farming: %Item%`rRun# %RunNumber% 	;Adds Farming Item and Run Number to Text	
Item := ""											; Sets item back to blank
Gui, Show, W1000 H300 X%Xpos% Y%Ypos% NA			;Shows window with set width and Height at Chosen XY Postion.	
													;NA does not activate the window maning you wont be clicked off your game.
return

;Numpad 1 resets window to 0
Numpad1::
RunNumber = 0
Gui, Run:New, AlwaysOnTop -SysMenu -Caption
Gui, Color, EEAA99
	Gui +LastFound
	WinSet, TransColor, EEAA99
Gui, Font, bold c%TextColor% s%size%
FileReadLine, Item, farming.txt, 1
Gui, Add, Text,, Farming: %Item%`rRun# %RunNumber%
Item := ""
Gui, Show, W1000 H300 X%Xpos% Y%Ypos% NA
return

; Ctl + Num0 hides current window
^Numpad0::
Gui, Run:Hide	;Hides window
return

; Ctl + alt + Num0 terminates program
^!Numpad0::
Gui, Destroy	;Destroys window
ExitApp			;Exits application
return