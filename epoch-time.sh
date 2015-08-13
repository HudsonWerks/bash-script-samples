# Epoch time in milliseconds
# CTRL-C TO STOP
# WRITTEN BY CHARLES HAMILTON
# Simple script for showing the epoch time on a BeagleBone Black running Debian

#!/bin/bash
for (( ; ; ))
do
        echo -n "Since Epoch [in milliseconds]: "
        cat /sys/class/rtc/rtc0/since_epoch | sed 's/...$//'
        sleep 10
done
