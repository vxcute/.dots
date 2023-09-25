#!/bin/bash 

active=$(pamixer --get-default-sink | awk 'NR==2 {print $1}')

if [[ $1 = "raise" ]]; then 
  pamixer --sink $active -i 5
elif [[ $1 = "lower" ]]; then 
  pamixer --sink $active -d 5
elif [[ $1 = "toggle" ]]; then 
  pamixer --sink $active -t
fi
