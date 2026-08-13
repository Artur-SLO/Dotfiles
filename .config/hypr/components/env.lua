--############################
--## ENVIRONMENT VARIABLES ###
--############################

hl.env("XDG_MENU_PREFIX", "arch-") -- Dolphin fix
hl.env("QT_QPA_PLATFORMTHEME", "kde") -- Dolphin fix

hl.env("XCURSOR_THEME", "Bibata-Modern-Ice")
hl.env("XCURSOR_SIZE", 24)
hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Ice")
hl.env("HYPRCURSOR_SIZE", 24)

-- Autostart
hl.on("hyprland.start", function()
    hl.exec_cmd("kbuildsycoca6")
end)
