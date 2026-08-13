--############
--## INPUT ###
--############

hl.config({
    input = {
        kb_layout = "br",
        follow_mouse = 1,
        sensitivity = 0,
        -- -1.0 - 1.0, 0 means no modification.
        touchpad = {
            natural_scroll = false,
        },
    },
})

hl.config({
    cursor = {
        inactive_timeout = 2,
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

hl.device({
    name = "epic-mouse-v1",
    sensitivity = -0.5,
})
