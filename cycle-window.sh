# get the id of the current focused window
win=$(yabai -m query --windows --window | jq '.id')

# get the id of the "last" window in the list
last_win=$(yabai -m query --windows --window last | jq '.id')

# focus the next window or cycle to the first, if the current window is the last.
if [[ $win == $last_win ]]; then
	yabai -m window --focus first
else
	yabai -m window --focus next
fi
