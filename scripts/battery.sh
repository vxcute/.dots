#!/bin/sh 

BATTERY="/sys/class/power_supply/BAT0/capacity" 

while inotifywait -e modify "$BATTERY"; do
  cat $BATTERY
done
