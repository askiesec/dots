#!/bin/bash

shutdown="⏻ Shutdown"
reboot="🔄 Reboot"
logout="🚪 Logout"
lock="🔒 Lock"
suspend="💤 Suspend"

chosen=$(echo -e "$lock\n$suspend\n$logout\n$reboot\n$shutdown" | rofi -dmenu -theme powermenu.rasi -p "Power Menu")

case "$chosen" in
    "$shutdown") systemctl poweroff ;;
    "$reboot") systemctl reboot ;;
    "$logout") pkill -KILL -u "$USER" ;;
    "$lock") i3lock ;;
    "$suspend") systemctl suspend ;;
    *) exit 1 ;;
esac

