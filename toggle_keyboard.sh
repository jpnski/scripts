#! /bin/bash

# disables/enables default default keyboard using xinput
DEVICE="AT Translated Set 2 keyboard"
STATUS=`xinput list-props "$DEVICE" | grep 'Device Enabled' | sed 's/.*\([0-9]\)$/\1/'`
if [ "$STATUS" = "1" ]
then
    xinput disable 'AT Translated Set 2 Keyboard'
    echo "Keyboard disabled"
elif [ "$STATUS" = "0" ]
the
    xinput enable 'AT Translated Set 2 Keyboard'
    echo "Keyboard enabled"
else
    echo "Error: bad argument"
fi
