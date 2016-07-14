#!/bin/sh
pavu_status=$(pactl stat)
pavu_status=$(pavu_status)

volume=${pavu_status[0]}
muted=${pavu_status[1]}

if [ "$muted" == "yes" ]; then
  echo '<span foreground="#Cd3f45">Mute</span>'
else
  echo $volume
fi
