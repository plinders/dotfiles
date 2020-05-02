tell application "Tunnelblick"
	if get state of first configuration is "CONNECTED" then
		disconnect (get name of first configuration where state is "CONNECTED")
	else
		connect (get name of first configuration)
	end if
end tell