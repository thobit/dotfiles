#!/bin/bash
if synclient -l | grep "Touchpad off .*=.*0"; then
	synclient TouchpadOff=1;
else
	synclient TouchpadOff=0;
fi
