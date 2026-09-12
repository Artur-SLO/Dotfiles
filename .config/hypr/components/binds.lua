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

hl.bind(mainMod .. " + " .. "E", hl.dsp.exec_cmd(fileManager), { desc = "File Manager" })
hl.bind(mainMod .. " + " .. "B", hl.dsp.exec_cmd(browser), { desc = "Browser" })
hl.bind("CTRL" .. " + " .. "SPACE", hl.dsp.exec_cmd("noctalia msg panel-toggle launcher"), { desc = "Launcher" })
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "COMMA", hl.dsp.exec_cmd("noctalia msg panel-toggle control-center"), { desc = "Control Center" })
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "PERIOD", hl.dsp.exec_cmd("noctalia msg settings-toggle"), { desc = "Settings" })
hl.bind("ALT" .. " + " .. "TAB", hl.dsp.exec_cmd("noctalia msg window-switcher"), { desc = "Window Switcher" })
hl.bind(mainMod .. " + " .. "home", hl.dsp.exec_cmd("noctalia msg panel-toggle session"), { desc = "Lock Screen" })
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "C", hl.dsp.exec_cmd("noctalia msg panel-toggle clipboard"), { desc = "Clipboard" })
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "E", hl.dsp.exec_cmd("noctalia msg panel-toggle launcher /emo"), { desc = "Emoji" })
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "G", hl.dsp.exec_cmd("noctalia msg panel-toggle noctalia/notes:panel"), { desc = "Notes" })
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "W", hl.dsp.exec_cmd("noctalia msg panel-toggle wallpaper"), { desc = "Wallpaper Selector" })
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "R", hl.dsp.exec_cmd("noctalia msg wallpaper-random"), { desc = "Randomize Wallpaper" })
hl.bind(mainMod .. " + " .. "SLASH", hl.dsp.exec_cmd("noctalia msg panel-toggle blackbartblues/keymap:panel"), { desc = "Keybinds Cheat Sheet" })
hl.bind(mainMod .. " + CTRL + N", hl.dsp.exec_cmd("~/.config/noctalia/reload.sh"), { desc = "Reload Config" })

-- 2. Terminal Shortcuts

hl.bind("CTRL + ALT" .. " + " .. "T", hl.dsp.exec_cmd(terminal), { desc = "Terminal (Home)" })
hl.bind(mainMod .. " + " .. "T", hl.dsp.exec_cmd("kitty --class floatterm"), { desc = "Terminal (Float)" })

-- 3. Toolkit

hl.bind("PRINT", hl.dsp.exec_cmd("flock -n /tmp/hyprshot.lock noctalia msg screenshot-region"), { desc = "Screenshot/Print" })
hl.bind(mainMod .. " + " .. "PRINT", hl.dsp.exec_cmd("noctalia msg plugin alexander/screen-toolkit:service all toggle"), { desc = "Toggle Toolkit" })
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "PRINT", hl.dsp.exec_cmd("noctalia msg panel-toggle oldirtty/color_picker:panel"), { desc = "Toggle Color Picker" })

-- 4. Window Management

hl.bind(mainMod .. " + " .. "Q", hl.dsp.window.close(), { desc = "Close window" })
hl.bind("ALT" .. " + " .. "f4", hl.dsp.window.close(), { desc = "Close window (Alt+F4)" })
hl.bind(mainMod .. " + " .. "F", hl.dsp.window.float(), { desc = "Toggle floating" })
hl.bind(mainMod .. " + M", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }), { desc = "Maximize window" })
hl.bind(mainMod .. " + " .. "N", hl.dsp.window.fullscreen(), { desc = "Toggle Fullscreen" })
hl.bind(mainMod .. " + " .. "C", hl.dsp.window.center(), { desc = "Center window" })

-- 5. Navigation

hl.bind(mainMod .. " + " .. "h", hl.dsp.focus({ direction = "left" }), { desc = "Focus Left" })
hl.bind(mainMod .. " + " .. "l", hl.dsp.focus({ direction = "right" }), { desc = "Focus Right" })
hl.bind(mainMod .. " + " .. "k", hl.dsp.focus({ direction = "up" }), { desc = "Focus Up" })
hl.bind(mainMod .. " + " .. "j", hl.dsp.focus({ direction = "down" }), { desc = "Focus Down" })

-- 6. Workspaces

hl.bind(mainMod .. " + " .. "right", hl.dsp.focus({ workspace = "e+1" }), { desc = "Next Workspace" })
hl.bind(mainMod .. " + " .. "left", hl.dsp.focus({ workspace = "e-1" }), { desc = "Prev Workspace" })
hl.bind(mainMod .. " + " .. "PERIOD", hl.dsp.focus({ workspace = "e+1" }), { desc = "Next Workspace (>)" })
hl.bind(mainMod .. " + " .. "COMMA", hl.dsp.focus({ workspace = "e-1" }), { desc = "Prev Workspace (<)" })
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "right", hl.dsp.focus({ workspace = "empty" }), { desc = "Next Empty Workspace" })
hl.bind(mainMod .. " + " .. 1, hl.dsp.focus({ workspace = 1 }), { desc = "Workspace 1" })
hl.bind(mainMod .. " + " .. 2, hl.dsp.focus({ workspace = 2 }), { desc = "Workspace 2" })
hl.bind(mainMod .. " + " .. 3, hl.dsp.focus({ workspace = 3 }), { desc = "Workspace 3" })
hl.bind(mainMod .. " + " .. 4, hl.dsp.focus({ workspace = 4 }), { desc = "Workspace 4" })
hl.bind(mainMod .. " + " .. 5, hl.dsp.focus({ workspace = 5 }), { desc = "Workspace 5" })
hl.bind(mainMod .. " + " .. 6, hl.dsp.focus({ workspace = 6 }), { desc = "Workspace 6" })
hl.bind(mainMod .. " + " .. 7, hl.dsp.focus({ workspace = 7 }), { desc = "Workspace 7" })
hl.bind(mainMod .. " + " .. 8, hl.dsp.focus({ workspace = 8 }), { desc = "Workspace 8" })
hl.bind(mainMod .. " + " .. 9, hl.dsp.focus({ workspace = 9 }), { desc = "Workspace 9" })
hl.bind(mainMod .. " + " .. 0, hl.dsp.focus({ workspace = 10 }), { desc = "Workspace 10" })

-- 7. Move to Workspace

hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. 1, hl.dsp.window.move({ workspace = 1 }), { desc = "Move to Workspace 1" })
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. 2, hl.dsp.window.move({ workspace = 2 }), { desc = "Move to Workspace 2" })
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. 3, hl.dsp.window.move({ workspace = 3 }), { desc = "Move to Workspace 3" })
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. 4, hl.dsp.window.move({ workspace = 4 }), { desc = "Move to Workspace 4" })
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. 5, hl.dsp.window.move({ workspace = 5 }), { desc = "Move to Workspace 5" })
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. 6, hl.dsp.window.move({ workspace = 6 }), { desc = "Move to Workspace 6" })
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. 7, hl.dsp.window.move({ workspace = 7 }), { desc = "Move to Workspace 7" })
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. 8, hl.dsp.window.move({ workspace = 8 }), { desc = "Move to Workspace 8" })
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. 9, hl.dsp.window.move({ workspace = 9 }), { desc = "Move to Workspace 9" })
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. 0, hl.dsp.window.move({ workspace = 10 }), { desc = "Move to Workspace 10" })
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "right", hl.dsp.window.move({ workspace = "e+1" }), { desc = "Move to Next Workspace" })
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "left", hl.dsp.window.move({ workspace = "e-1" }), { desc = "Move to Prev Workspace" })
hl.bind(mainMod .. " + " .. "CTRL + SHIFT" .. " + " .. "right", hl.dsp.window.move({ workspace = "empty" }), { desc = "Move to Next Empty Workspace" })
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "PERIOD", hl.dsp.window.move({ workspace = "e+1" }), { desc = "Move to Next Workspace (>)" })
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "COMMA", hl.dsp.window.move({ workspace = "e-1" }), { desc = "Move to Prev Workspace (<)" })
hl.bind(mainMod .. " + " .. "CTRL + SHIFT" .. " + " .. "PERIOD", hl.dsp.window.move({ workspace = "empty" }), { desc = "Move to Next Empty Workspace (>)" })

-- 8. Workspace Scrolling

hl.bind(mainMod .. " + " .. "mouse_down", hl.dsp.focus({ workspace = "e-1" }), { desc = "Next Workspace (Scroll)" })
hl.bind(mainMod .. " + " .. "mouse_up", hl.dsp.focus({ workspace = "e+1" }), { desc = "Prev Workspace (Scroll)" })

-- 9. Special Workspace

hl.bind(mainMod .. " + " .. "S", hl.dsp.workspace.toggle_special("magic"), { desc = "Toggle Special Workspace" })
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "S", hl.dsp.window.move({ workspace = "special:magic" }), { desc = "Move to Special Workspace" })
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "S", hl.dsp.window.move({ workspace = "e+0" }), { desc = "Restore from Special Workspace" })

-- 10. Mouse Bindings

hl.bind(mainMod .. " + " .. "mouse:272", hl.dsp.window.drag(), { mouse = true, desc = "Move Window" })
hl.bind(mainMod .. " + " .. "mouse:273", hl.dsp.window.resize(), { mouse = true, desc = "Resize Window" })

-- 11. Multimedia and Brightness

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 2%+"), { locked = true, desc = "Volume Up" })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%-"), { locked = true, desc = "Volume Down" })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true, desc = "Mute Audio" })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true, desc = "Mute Mic" })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, desc = "Brightness Up" })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, desc = "Brightness Down" })

-- 12. Media Player Control

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true, desc = "Next Track" })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true, desc = "Pause" })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true, desc = "Play" })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true, desc = "Previous Track" })
