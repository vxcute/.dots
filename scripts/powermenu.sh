#!/bin/bash 

opt=$(echo -e "Shutdown\nReboot\nSleep\nLock" | dmenu)

if [[ $opt = "Shutdown" ]]; then 
  doas /usr/bin/poweroff
elif [[ $opt = "Reboot" ]]; then 
  doas /usr/bin/reboot
elif [[ $opt = "Sleep" ]]; then 
  doas /usr/bin/zzz
elif [[ $opt = "Lock" ]]; then 
  xlock
fi 
