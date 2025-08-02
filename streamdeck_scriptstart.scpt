tell application "Wireless Workbench"
	activate
end tell

tell application "System Events"
	# Get the frontmost app's *process* object.
	set frontAppProcess to first application process whose frontmost is true
end tell

# Tell the *process* to count its windows and return its front window's name.
tell frontAppProcess
	if (count of windows) > 0 then
		set window_name to name of front window
	end if
end tell

-- Click the “Monitor” radio button.
delay 2.562525
set timeoutSeconds to 2.0
set uiScript to "click radio button \"Monitor\" of group \"Inventory\" of window " & window_name & " of #application process \"Wireless Workbench\""
my doWithTimeout(uiScript, timeoutSeconds)

