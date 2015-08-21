#!/bin/bash
ISS=$(sudo python /home/debian/ISS-current-distance.py)
NOW=$(date +"Ground Control time is %M minutes past %l %p U T C with current distance to the International Space Station  $ISS miles")
echo $NOW
pico2wave -w GroundControlTime-ISS.wav "$NOW"
aplay GroundControlTime-ISS.wav
