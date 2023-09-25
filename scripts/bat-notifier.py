#!/bin/python3 

import psutil
import gi.repository 
gi.require_version('Notify', '0.7')
from gi.repository import Notify 

bat = psutil.sensors_battery()
percent = int(bat.percent) 
charging = bat.power_plugged

Notify.init("Battery Notifier")

if percent <= 10 and not charging: 
    batnot = Notify.Notification.new("Feed The Laptop Electrons D:")
    batnot.set_urgency(2)
    batnot.show()
elif percent == 100 and charging:
    batnot = Notify.Notification.new("Nice Meal :D")
    batnot.show()
