--################
--## AUTOSTART ###
--################

-- Autostart
hl.on("hyprland.start", function()
    hl.exec_cmd("/home/slower/.config/noctalia/reload.sh") -- Render Initial Wallpaper Animation
    hl.exec_cmd("systemctl --user start hyprpolkitagent") -- Authentication Agent
    hl.exec_cmd("noctalia") -- Start Shell
    hl.exec_cmd("wl-paste --type text --watch cliphist store") -- Clipboard Manager Setup
    hl.exec_cmd("wl-paste --type image --watch cliphist store") -- Persistent Clipboard
    hl.exec_cmd("wl-clip-persist --clipboard regular") -- Clipboard Manager Setup
    hl.exec_cmd("pika-backup-monitor") -- Backup Daemon
end)
