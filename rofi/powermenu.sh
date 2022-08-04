#! /bin/sh

chosen=$(printf "  Power Off\n  Restart\n  Suspend" | rofi -dmenu -i  -theme-str '@import "power.rasi"')

case "$chosen" in
	"  Power Off") poweroff ;;
	"  Restart") reboot ;;
	"  Suspend") systemctl suspend ;;
	*) exit 1 ;;
esac
