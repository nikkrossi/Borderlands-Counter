<h1>borderlands-counter</h1>
  
Simple Auto Hot Key Script that places text on the screen to help user count number of farms they have done. 
Made mostly for Borderlands after watching Joltzdude139's counter (Yet his is only on his stream, not on his screen).

Its not perfect but good enough. I might eventually open it up if others want to contribute.

<h3>How It Works</h3>
 It creates a GUI Window and makes the background, border, and menu bar transparent. Then it takes text with a RunNumber variable and incriments every time it is used. The window can only be moved using screen positions. Default is top Left corner (X0 Y0).
 
<h2> Version 1 </h2>

<h2> Version 1.1 </h2>

<h3>Controls</h3>

NumberPad0 - Brings up window and adds 1 to run counter (Can be changed)
NumberPad1 - Resets counter to 0 (Can be changed)
Control + NumberPad0 - Hides Window (Can be changed)
Control + Alt + NumberPad0 - Closes the program (Can be changed)

<h3>Changing Controls</h3>
To change controls go to where the begining of the hotkey is and change to what you want.

    ;Numpad 1 resets window to 0
    Numpad1:: <- Change This
    RunNumber = 0
    
    ;Numpad 1 resets window to 0
    *key here*::
    RunNumber = 0 

<h3>Options</h3>
There are some options in the code you can change before running

    ;;;;;;;;;;;;;;;;;;;;;;;;
    ;; OPTIONS
    
    ;Size of text, Default 40
    size = 40 <- Must be a number
    
    ;Color of text in HEX, Default ff7f00
    ;Find more at https://html-color.codes
    TextColor = ff7f00 <- Must be in Hex
    
    ;Position on screen, Default Top Left X0 Y0
    Xpos = 0  <- Higher number moves text to the right
    Ypos = 0  <- Higher number moves text down

<h3>Install</h3>
If the controls are fine for you, you can just download the .exe Here.

Otherwise, you can download the .ahk file and run that.
To run AHK file you must have auto hot key. You can find it here: https://www.autohotkey.com/
