#!/bin/bash
# WRITTEN BY CHARLES HAMILTON
# Script for showing the current local time and the current distance from a given coordinate for the International Space Station. Requires Python script ISS-current-distancy.py.

ISS=$(sudo python /home/debian/ISS-current-distance.py)
NOW=$(date +"Ground Control time is %M minutes past %l %p U T C with current distance to the International Space Station  $ISS miles")
echo $NOW
pico2wave -w GroundControlTime-ISS.wav "$NOW"
aplay GroundControlTime-ISS.wav
