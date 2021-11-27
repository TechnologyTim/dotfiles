#!/bin/bash

xrandr --output eDP1 --mode 1600x900 && xrandr --output DP2-2 --mode 1680x1050 --left-of eDP1 --primary && xrandr --output DP2-3 --mode 1680x1050 --left-of DP2-2
