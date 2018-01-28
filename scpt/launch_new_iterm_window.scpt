(* 
 * New-iTerm-Window.scpt
 * 
 * Intended for use with QuickSilver
 *  I mapped option-y to running this script to create
 *  a new iTerm window on the current workspace
 *
 * Based on much Googling - very little "original" code here
 *   Comments/Suggestions to brad.lhotsky@gmail.com
 *)
if isAppRunning("iTerm2") then
	tell application "iTerm"
		create window with default profile
	end tell
else
	activate application "iTerm"
end if

(* Code from Dweller on
 *  http://codesnippets.joyent.com/posts/show/1124
 *)
on isAppRunning(appName)
	tell application "System Events" to (name of processes) contains appName
end isAppRunning
