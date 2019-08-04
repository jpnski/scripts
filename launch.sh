#!/bin/bash

# terminate any instances of polybar
killall -q polybar

# wait until processes shutdown
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# launch polybar
polybar mybar &

echo "Polybar Launched"
