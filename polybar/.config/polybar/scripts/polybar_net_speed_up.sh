#!/bin/bash
#
# Custom network download/upload speed indicator for polybar.
#
# Author: machaerus
# https://gitlab.com/machaerus

net_speed_up() {
        foreground=%{F#EBDBB2}
        faded_aqua=%{F#00CCCC}
	UP_NETSPEED=$(awk '{if(l1){printf "%6.1f", ($10-l2)/1024} else{l1=$2; l2=$10;}}' <(grep wlan0 /proc/net/dev) <(sleep 1; grep wlan0 /proc/net/dev) | tr -d ' ')
	echo "$faded_aqua  $foreground $UP_NETSPEED KB/s$RESET"
}

net_speed_up
