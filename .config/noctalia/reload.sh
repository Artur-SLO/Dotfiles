#!/bin/bash

exec 9>/tmp/noctalia.lock
flock -n 9 || exit 0

killall -9 noctalia
mpvpaper ALL ~/Videos/walls/Deltarune-Fountain.mp4 & # -o "no-audio"
sleep 2

exec 9>&-

noctalia &
