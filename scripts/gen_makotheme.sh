#!/bin/env bash

MAKOCTL="/usr/bin/makoctl"
MAKOCONFIG="$HOME/.config/mako/config"
#MAKOCONFIG="/tmp/config"
COLORS="$HOME/.cache/wal/colors"

COLOR0=`head -1 $COLORS`
COLOR1=`head -2 $COLORS | tail -1`
COLOR2=`head -3 $COLORS | tail -1`
COLOR3=`head -4 $COLORS | tail -1`
COLOR4=`head -5 $COLORS | tail -1`
COLOR5=`head -6 $COLORS | tail -1`
COLOR6=`head -7 $COLORS | tail -1`
COLOR7=`head -8 $COLORS | tail -1`

cat << EOF > $MAKOCONFIG
# font=Sauce Code Pro 12
font=FiraCode 12
layer=overlay
anchor=top-right
height=500
padding=15
border-size=3
default-timeout=1000

background-color=$COLOR0
text-color=$COLOR7

[urgency=low]
border-color=$COLOR2
background-color=$COLOR4

[urgency=normal]
border-color=$COLOR2
background-color=$COLOR0
text-color=$COLOR7
default-timeout=10000
ignore-timeout=1

[urgency=high]
border-color=$COLOR2
background-color=$COLOR0
default-timeout=0
ignore-timeout=1
EOF
$MAKOCTL  reload
