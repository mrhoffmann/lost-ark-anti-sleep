Pause
Loop{
	SysGet, Mon2, Monitor, 2 				;primary screen
	ToClickLeft := 200					;at what position to make the first click, X-axis
	TimesToLoop := 2					;how many times per loop to use the mouse, the larger the number, the larger the iteration before using the UI
	ToClickRight := Mon2Right - 1224 			;you might want to tweak this depending on screen size, in my case: 1024 for my portrait screen and another 200 pixels.
	HalfWayTop := (Mon2Bottom / 2) - 250			;at what position is considered the middle of the screen, Y-axis
	string := "uipwocln"					;what UI that can be opened

								;the random delay to wait before starting to use the 
	Random, rand, 1000, 10000				; -||- UI
	Random, rand2, 1000, 10000				; -||- padding for next click
	Random, rand3, 10000, 13000				; -||- the actual sleep between clicks
	Random, rand4, 2000, 5000				; -||- the sleep between releasing ALT in the UI
	
	Loop, % TimesToLoop {					; looping mouse clicks
		MouseClick, left, ToClickLeft,HalfWayTop
		Sleep, % rand3
		Sleep, % rand2
		MouseClick, left, ToClickRight,HalfWayTop
		Sleep, % rand3
		Sleep, % rand2
	}
	Sleep, % rand
	Send, {ALT down}
	send, % SubStr(string, rs, 1)
	Sleep, % rand4
	Send, {ALT up}
	Sleep, % rand4
	Send, {Esc}
	Sleep, % rand
}
F8::Pause