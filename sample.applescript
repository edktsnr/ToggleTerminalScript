tell application "System Events"
	set activeApp to first process where it is frontmost
	if activeApp's name = "Terminal" then
		# Command-Tab
		tell process "Terminal"
			keystroke tab using command down
		end tell
	else
		# Open Terminal
		tell application "Terminal"
			activate
			tell application "System Events" to tell process "Terminal"
				if (count of window) is 0 then tell application "Terminal" to do script ""
			end tell
		end tell
	end if
end tell