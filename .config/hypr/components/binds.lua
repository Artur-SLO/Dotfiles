-------------------
--- MY PROGRAMS ---
-------------------

local terminal = "kitty"
local browser = "zen-browser"
local fileManager = "dolphin"

-------------------
--- KEYBINDINGS ---
-------------------

-- Keywords & Modifiers

local mainMod = "SUPER"

-- 1. Menus and Apps

hl.bind(mainMod .. " + " .. "E", hl.dsp.exec_cmd(fileManager)) --"File Manager"
hl.bind(mainMod .. " + " .. "B", hl.dsp.exec_cmd(browser)) --"Browser"
hl.bind("CTRL" .. " + " .. "SPACE", hl.dsp.exec_cmd("noctalia msg panel-toggle launcher")) --"Launcher"
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "COMMA", hl.dsp.exec_cmd("noctalia msg panel-toggle control-center")) --"Control Center"
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "PERIOD", hl.dsp.exec_cmd("noctalia msg settings-toggle")) --"Settings"
hl.bind("ALT" .. " + " .. "TAB", hl.dsp.exec_cmd("noctalia msg window-switcher")) --"Window Switcher"
hl.bind(mainMod .. " + " .. "home", hl.dsp.exec_cmd("noctalia msg session lock")) --"Lock Screen"
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "C", hl.dsp.exec_cmd("noctalia msg panel-toggle clipboard")) --"Clipboard"
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "E", hl.dsp.exec_cmd("noctalia msg panel-toggle launcher /emo")) --"Emoji"
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "T", hl.dsp.exec_cmd("noctalia msg panel-toggle launcher /tr")) --"Translate"
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "G", hl.dsp.exec_cmd("noctalia msg panel-toggle launcher /nt")) --"Notes"
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "W", hl.dsp.exec_cmd("noctalia msg panel-toggle wallpaper")) --"Wallpaper Selector"
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "R", hl.dsp.exec_cmd("noctalia msg wallpaper-random")) --"Randomize Wallpaper"
hl.bind(mainMod .. " + " .. "SLASH", hl.dsp.exec_cmd("noctalia msg panel-toggle kenn/keybind-cheatsheet:cheatsheet")) --"Keybinds Cheat Sheet"
hl.bind(mainMod .. " + CTRL + N", hl.dsp.exec_cmd("~/.config/noctalia/reload.sh")) --"Reload Config"

-- 2. TERMINAL SHORTCUTS

hl.bind("CTRL + ALT" .. " + " .. "T", hl.dsp.exec_cmd(terminal)) --"Terminal (Home)"
hl.bind(mainMod .. " + " .. "T", hl.dsp.exec_cmd("kitty --class floatterm")) --"Terminal (Float)"

-- 3. SCREENSHOT AND COLOR PICKER

hl.bind("PRINT", hl.dsp.exec_cmd("flock -n /tmp/hyprshot.lock hyprshot -m region -o ~/Pictures/Screenshots/")) --"Screenshot Region"
hl.bind(mainMod .. " + " .. "PRINT", hl.dsp.exec_cmd("flock -n /tmp/hyprshot.lock hyprshot -m window -o/home/slower/Pictures/Screenshots/")) --"Screenshot Window"
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "PRINT", hl.dsp.exec_cmd("flock -n /tmp/hyprshot.lock hyprpicker -a -n")) --"Color Picker"

-- 4. WINDOW MANAGEMENT

hl.bind(mainMod .. " + " .. "Q", hl.dsp.window.close()) --"Close window"
hl.bind("ALT" .. " + " .. "f4", hl.dsp.window.close()) --"Close window (Alt+F4)"
hl.bind(mainMod .. " + " .. "F", hl.dsp.window.float()) --"Toggle floating"
hl.bind(mainMod .. " + M", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }))
hl.bind(mainMod .. " + " .. "N", hl.dsp.window.fullscreen()) --"Toggle Fullscreen"
hl.bind(mainMod .. " + " .. "C", hl.dsp.window.center()) --"Center window"

-- 5. NAVIGATION

hl.bind(mainMod .. " + " .. "h", hl.dsp.focus({ direction = "left" })) --"Focus Left"
hl.bind(mainMod .. " + " .. "l", hl.dsp.focus({ direction = "right" })) --"Focus Right"
hl.bind(mainMod .. " + " .. "k", hl.dsp.focus({ direction = "up" })) --"Focus Up"
hl.bind(mainMod .. " + " .. "j", hl.dsp.focus({ direction = "down" })) --"Focus Down"

-- 6. WORKSPACES

hl.bind(mainMod .. " + " .. "right", hl.dsp.focus({ workspace = "e+1" })) -- "Next Workspace"
hl.bind(mainMod .. " + " .. "left", hl.dsp.focus({ workspace = "e-1" }))   -- "Prev Workspace"
hl.bind(mainMod .. " + " .. "PERIOD", hl.dsp.focus({ workspace = "e+1" }))-- "Next Workspace (>)"
hl.bind(mainMod .. " + " .. "COMMA", hl.dsp.focus({ workspace = "e-1" }))  -- "Prev Workspace (<)"
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "right", hl.dsp.focus({ workspace = "empty" })) -- "Next Empty Workspace"
hl.bind(mainMod .. " + " .. 1, hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + " .. 2, hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + " .. 3, hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + " .. 4, hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + " .. 5, hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. " + " .. 6, hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. " + " .. 7, hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. " + " .. 8, hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. " + " .. 9, hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. " + " .. 0, hl.dsp.focus({ workspace = 10 }))

-- 7. MOVE TO WORKSPACE

hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. 1, hl.dsp.window.move({ workspace = 1 })) --"Move to Workspace 1"
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. 2, hl.dsp.window.move({ workspace = 2 })) --"Move to Workspace 2"
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. 3, hl.dsp.window.move({ workspace = 3 })) --"Move to Workspace 3"
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. 4, hl.dsp.window.move({ workspace = 4 })) --"Move to Workspace 4"
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. 5, hl.dsp.window.move({ workspace = 5 })) --"Move to Workspace 5"
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. 6, hl.dsp.window.move({ workspace = 6 })) --"Move to Workspace 6"
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. 7, hl.dsp.window.move({ workspace = 7 })) --"Move to Workspace 7"
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. 8, hl.dsp.window.move({ workspace = 8 })) --"Move to Workspace 8"
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. 9, hl.dsp.window.move({ workspace = 9 })) --"Move to Workspace 9"
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. 0, hl.dsp.window.move({ workspace = 10 })) --"Move to Workspace 10"
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "right", hl.dsp.window.move({ workspace = "e+1" })) --"Move to Next Workspace"
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "left", hl.dsp.window.move({ workspace = "e-1" })) --"Move to Prev Workspace"
hl.bind(mainMod .. " + " .. "CTRL + SHIFT" .. " + " .. "right", hl.dsp.window.move({ workspace = "empty" })) --"Move to Next Empty Workspace"
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "PERIOD", hl.dsp.window.move({ workspace = "e+1" })) --"Move to Next Workspace (>)"
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "COMMA", hl.dsp.window.move({ workspace = "e-1" })) --"Move to Prev Workspace (<)"
hl.bind(mainMod .. " + " .. "CTRL + SHIFT" .. " + " .. "PERIOD", hl.dsp.window.move({ workspace = "empty" })) --"Move to Next Empty Workspace (>)"

-- 8. WORKSPACE SCROLLING
--
hl.bind(mainMod .. " + " .. "mouse_down", hl.dsp.focus({ workspace = "e-1" })) --"Next Workspace (Scroll)"
hl.bind(mainMod .. " + " .. "mouse_up", hl.dsp.focus({ workspace = "e+1" })) --"Prev Workspace (Scroll)"

-- 9. SPECIAL WORKSPACE

hl.bind(mainMod .. " + " .. "S", hl.dsp.workspace.toggle_special("magic")) --"Toggle Special Workspace"
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "S", hl.dsp.window.move({ workspace = "special:magic" })) --"Move to Special Workspace"
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "S", hl.dsp.window.move({ workspace = "e+0" })) --"Restore from Special Workspace"

-- 11. MOUSE BINDINGS

hl.bind(mainMod .. " + " .. "mouse:272", hl.dsp.window.drag(), { mouse = true }) --"Move Window"
hl.bind(mainMod .. " + " .. "mouse:273", hl.dsp.window.resize(), { mouse = true }) --"Resize Window"

-- 12. MULTIMEDIA AND BRIGHTNESS

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 2%+"), { locked = true }) --"Volume Up"
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%-"), { locked = true }) --"Volume Down"
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true }) --"Mute Audio"
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true }) --"Mute Mic"
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true }) --"Brightness Up"
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true }) --"Brightness Down"

-- 13. MEDIA PLAYER CONTROL

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true }) --"Next Track"
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true }) --"Pause"
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true }) --"Play"
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true }) --"Previous Track"
