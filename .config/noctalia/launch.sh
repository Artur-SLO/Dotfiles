#!/bin/bash

sleep 8
pgrep easyeffects > /dev/null || flatpak run com.github.wwmm.easyeffects --service-mode &
# qs -c overview &
# qs -c qs-hyprview &
