#startxfce4
#exec ck-launch-session startplasma-x11


#emacs --daemon &
#xrandr --output eDP-1 --off
slstatus &
nitrogen --set-auto /home/vxcute/Pictures/gruvbox_spac.jpg 
xautolock -time 10 -locker slock & disown
sxhkd & 
dunst & 
setxkbmap -layout us,ara -option grp:win_space_toggle
setxkbmap -option caps:escape
dwm
#i3
