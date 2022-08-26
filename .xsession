#!/bin/ksh -l
. ~/.profile
. ~/.kshrc

dwmblocks&
picom -i 1&
exec dwm
