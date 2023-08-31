#!/bin/sh

DEVICE_ADDRESS="1C:52:16:97:D1:ED"

if bluetoothctl info "$DEVICE_ADDRESS" | grep -q "Connected: yes"; then
    id="$(notify-send "Disconnecting $DEVICE_ADDRESS")"
    echo $id
    bluetoothctl disconnect "$DEVICE_ADDRESS";
else
    id="$(notify-send "Connecting $DEVICE_ADDRESS" -p)"
    bluetoothctl connect $DEVICE_ADDRESS || \
        notify-send -r "$id" "Failed Connecting"
fi
