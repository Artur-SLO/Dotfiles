--###################
--## WINDOW RULES ###
--###################

hl.config({
    dwindle = {
        preserve_split = true,
        -- You probably want this
    },
})

hl.config({
    master = {
        new_status = "master",
    },
})

hl.config({
    misc = {
        force_default_wallpaper = 0,
        -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo = true,
        -- If true disables the random hyprland logo / anime girl background. :(
    },
})

-- Noctalia shell

hl.layer_rule({
    match = {
        namespace = "noctalia-background-.*$",
    },
    ignore_alpha = 0.5,
    blur = true,
    blur_popups = true,
})


-- Fix some dragging issues with XWayland

hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },
    no_focus = true,
})

-- Hyprland-run windowrule

hl.window_rule({
    name  = "move-hyprland-run",
    match = {
        class = "hyprland-run",
    },
    move = { 20, "monitor_h-120" },
    float = true,
})

hl.window_rule({
    name  = "steam-float",
    match = {
        class = "steam",
    },
    float = true,
})

hl.window_rule({
    name  = "float-class",
    match = {
        class = "^(org.kde.dolphin|xdg-desktop-portal-gtk|org.kde.kcalc)$",
    },
    float = true,
    size = { 1000, 700 },
    center = 1,
})

hl.window_rule({
    name  = "pip",
    match = {
        title = "Picture-in-Picture",
    },
    float = true,
    size = { 373, 212 },
    move = { 982, 547 },
    no_dim = true,
    pin = true,
})

hl.window_rule({
    name  = "floatterm-center",
    match = {
        class = "floatterm",
    },
    float = true,
    size = { 900, 600 },
    center = 1,
})

hl.window_rule({
    name  = "zed",
    match = {
        class = "dev.zed.Zed",
        title = "Zed — Settings",
    },
    float = true,
    size = { 900, 600 },
    center = 1,
})

hl.window_rule({
    name  = "noctalia-settings",
    match = {
        class = "dev.noctalia.Noctalia",
    },
    float = true,
    size = { 900, 600 },
})


-- Intellij
