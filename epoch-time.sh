# Epoch time in milliseconds
# CTRL-C TO STOP
# WRITTEN BY CHARLES HAMILTON
# Simple script for showing the epoch time at 10-second intervals on a BeagleBone Black running Debian

#!/bin/bash

# Resets the RTC from  the system clock
sudo hwclock --systohc
sudo hwclock --show

# Runs command for determining epoch time
for (( ; ; ))
do
        echo -n "Since Epoch [in milliseconds]: "
# OPTION 1 command. Comment out if running OPTION 2.
        echo $(($(date +%s%N)/1000000))

## OPTION 2 command. Uncomment to run this version and comment out OPTION 1.
#        cat /sys/class/rtc/rtc0/since_epoch | sed 's/...$//'
        sleep 10
done
