#!/bin/sh 

swayidle \ 
    timeout 300 'swaymsg "output * power off"' \ 
    resume 'swaymsg "output * power on"' & 

swaylock

kill %% 
:w
