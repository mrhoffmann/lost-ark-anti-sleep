# Lost Ark anti-sleep
An autohotkey to prevent you from idling

Either:
- Install AutoHotKey, double-click the file .ahk for viewing and being able to change the source OR
- Double-click the .exe-file

and press F8 to start or pause.

It's recommended that you put yourself in a safe secure location like your Stronghold (f2 + Song of Hearth and Home), stand in the open grass field before starting to use this, as you'll be doing some odd behaviour.

The script is somewhat tested, your mileage my vary.
 
 
 
IF YOU made a fucky wucky:
There's a variable called "ToClickRight" which is currently a source to help you if you're:
- Using your screen with a resolution of say 4K
- Your game is set to a resolution of say 2K

Autohotkey will then detect a screen size of 3840x2160, however, the game will take over and report back a resolution of 2048x1080 pixels.
This will cause a difference in the script and thus you'll get a bad time where the script will start clicking out of bounds.

To accomodate for this, you can always set the game resolution to your actual resolution OR go the hard way and:
- Open the .Ahk-file
- After the line that says: "ToClickRight := Mon2Right - 200" add your offset
- Say you have another 1080p screen on your right, you'd want then to write: "ToClickRight := Mon2Right - 2120"

But I'd suggest you change the resolution of your game to match the resolution of your current primary screen resolution, or of course the other way around.

In a future release where i have spent more than 10 minutes, i hope to have this automatically made.
