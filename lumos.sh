#!/bin/bash
usage(){
	echo "Usage: $0 [+/-]number"
	exit 1
}

if [[ $# -eq 0 ]]; then
	usage
else
	actuel=$(cat /sys/class/backlight/acpi_video0/actual_brightness)
	bright=$(echo $(($actuel+$1)))
	su -c "echo $bright > /sys/class/backlight/acpi_video0/brightness"
fi
