on idle
	tell application "Tunnelblick"
		get state of first configuration where name = "Switzerland - TCP"
		if result is not "CONNECTED" then
			tell application "Transmission"
				quit saving yes
			end tell
		else
			tell application "Transmission"
				if it is not running then
					activate
				end if
			end tell
		end if
	end tell
	return 5
end idle