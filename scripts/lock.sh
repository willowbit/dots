#!/bin/bash
ICON=~/scripts/icon.png
TMPBG=~/.cache/screen.png
scrot -o ~/.cache/screen.png
convert $TMPBG -blur 5x5 $TMPBG
convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
i3lock -u -i $TMPBG