#!/bin/bash


function run {
    if ! pgrep $1 ; then
        $@&
    fi
}

if xrandr | grep -q 'eDP-1 connected' ; then
    xrandr --output eDP-1 --scale 0.6x0.6
fi
