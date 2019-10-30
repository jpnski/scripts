#! /bin/bash

# disables/enables specified keyboard using xinput
DEVICE="AT Translated Set 2 keyboard"

DEVICE_ID=$(xinput --list | grep "$DEVICE" | awk '{print $7}' | cut -d'=' -f2)

STATUS=`xinput list-props "$DEVICE" | grep 'Device Enabled' | sed 's/.*\([0-9]\)$/\1/'`

if [ "$STATUS" = "1" ]
then
    xinput disable "$DEVICE_ID"
    echo "Keyboard disabled"
elif [ "$STATUS" = "0" ]
then
    xinput enable "$DEVICE_ID"
    echo "Keyboard enabled"
else
    echo "Error: bad argument"
fi
