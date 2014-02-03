#!/bin/bash

# Copyright (C) 2013 Diego Avendaño Peces

# This scripts changes the possition of the mouse randomly
# Useful to avoid screensaver when watching something in full screen or just to have fun
# The xautomation program must be installed
# It's necessary to specify the resolution of the screen (maxx and maxy)
# To stop the program, use killall crazymouse.sh.

maxx=1366
maxy=768
x1=428
y1=147
x2=939
y2=657

echo "I have the control now"
while (true)
	do sleep 0.001 
#	varx=$[ $RANDOM % $maxx ]
#	vary=$[ $RANDOM % $maxy ]
	varx=$[ $x1 + $RANDOM % ($x2 + 1 - $x1) ]
        vary=$[ $y1 + $RANDOM % ($y2 + 1 - $y1) ]

	xte "mousemove $varx $vary"
done
exit 0
