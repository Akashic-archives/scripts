#!/bin/bash

charge_to=$1

battery_now=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | awk '{print $2}' | tr -d '%')

function handle_sigs()
{
    /usr/local/bin/battmngr -sc 3
    echo "I stopped charging because of sig"
    exit
}

trap handle_sigs 1 2 3 6 14 15 20 30

/usr/local/bin/battmngr -sc 4

while true
do
    echo "I'm charging"
    battery_now=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | awk '{print $2}' | tr -d '%')
    echo "$battery_now"
    if [ "$battery_now" -ge "$charge_to" ]; then
	    /usr/local/bin/battmngr -sc 3
	    echo "charged to $charge_to"
	    exit
    fi
    sleep 10
done
