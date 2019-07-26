#! /bin/bash

# disables/enables toucscreen input device using xinput

DEVICE="Atmel Atmel maXTouch Digitizer"
STATUS=`xinput list-props "$DEVICE" | grep 'Device Enabled' | sed 's/.*\([0-9]\)$/\1/'`
if [ "$STATUS" = "1" ]
then
    xinput disable 'Atmel Atmel maXTouch Digitizer'
    echo "Touch-screen disabled"
elif [ "$STATUS" = "0" ]
then
    xinput enable 'Atmel Atmel maXTouch Digitizer'
    echo "Touch-screen enabled"
else
    echo "Error: bad argument"
fi
