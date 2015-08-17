#!/bin/bash
NOW=$(date +"Ground Control time is %M minutes past %l %p U T C")
echo $NOW
pico2wave -w GroundControlTime.wav "$NOW"
#lame GroundControlTime.wav GroundControlTime.mp3
mplayer -ao alsa:device=hw=0 GroundControlTime.wav
rm temporaryTime.wav.*
