#!/bin/bash 

xset -dpms 
xset s off 

echo "Shutdown in $1 seconds"

sleep 3600

xset +dpms
xset s on 

sleep 5 
poweroff 
