#!/bin/bash 

devs=""
count=0

is_dev_mounted() { findmnt --source "$1" > /dev/null; }

lsblk -dpni | grep -o '/dev/sd[b-z]' | 
{ 
  while read -r line; do 
    mounted=$(
      if  is_dev_mounted "$line"; then 
        echo "Mounted"
      else 
        echo "Umounted"
      fi)

    devs+="$line $(lsblk -o VENDOR,MODEL $line | awk 'NR==2') ($mounted)\n"
    count=$(($count + 1))
  done 
  dev=$(echo -e $devs | head -n$count | dmenu -l 10)
  
  if [[ $dev = "" ]]; then 
    exit 
  fi

  devfile=$(echo $dev | awk '{print $1}')
  devname=$(echo $dev | cut -d ' ' -f 2-)
  opt=$(echo -e "Mount\nUmount" | dmenu -l 10)

  if [[ $opt = "" ]]; then 
    exit
  fi

  if [[ $opt = "Mount" ]]; then 
    echo $devname
    mkdir "/media/$devname"
    doas /usr/bin/mount $devfile "/media/$devname"
  elif [[ $opt = "Umount" ]]; then 
    doas /usr/bin/umount $devfile
    echo $devname
    rm -rf "/media/$devname"
  fi
}
