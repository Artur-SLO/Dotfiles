#!/bin/bash

killall -9 qs
mpvpaper ALL ~/Videos/walls/Deltarune-Fountain.mp4 & # -o "no-audio"
sleep 1 # sleep 0.1
qs -c noctalia-shell &
