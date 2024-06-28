-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.font = wezterm.font_with_fallback {
    "Monolisa",
    "FiraCode Nerd Font",
}
config.font_size = 18

config.enable_scroll_bar = false
config.enable_tab_bar = true
config.use_fancy_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true

config.window_decorations = "TITLE | RESIZE"
config.window_background_opacity = 0.9
config.macos_window_background_blur = 8

config.default_cursor_style = "SteadyBar"

config.color_scheme = "Catppuccin Mocha"

local palette = {
    blue = "#89B4FA",
    lavender = "#B4BEFE",
    os = "#ACB0BE",
    pink = "#F5C2E7",
    yellow = "#f9e2af",
    teal = "#94e2d5",
    green = "#a6e3a1",
    mauve = "#cba6f7",
    base = "#1e1e2e",
    surface0 = "#313244",
    surface1 = "#45475a",
    surface2 = "#585b70",
    text = "#cdd6f4",
    subtext0 = "#a6adc8",
    overlay1 = "#7f849c"
}

config.window_frame = {
    -- The font used in the tab bar.
    -- Roboto Bold is the default; this font is bundled
    -- with wezterm.
    -- Whatever font is selected here, it will have the
    -- main font setting appended to it to pick up any
    -- fallback fonts you may have used there.
    font = wezterm.font { family = "Berkeley Mono"},

    -- The size of the font in the tab bar.
    -- Default to 10.0 on Windows but 12.0 on other systems
    font_size = 16.0,

    -- The overall background color of the tab bar when
    -- the window is focused
    active_titlebar_bg = palette.surface0,

    -- The overall background color of the tab bar when
    -- the window is not focused
    inactive_titlebar_bg = palette.base,
}

config.colors = {
    tab_bar = {
        inactive_tab_edge = palette.surface0,
        -- The color of the strip that goes along the top of the window
        -- (does not apply when fancy tab bar is in use)
        background = palette.surface0,

        -- The active tab is the one that has focus in the window
        active_tab = {
            -- The color of the background area for the tab
            bg_color = palette.surface2,
            -- The color of the text for the tab
            fg_color = palette.text,
        },

        -- Inactive tabs are the tabs that do not have focus
        inactive_tab = {
            bg_color = palette.base,
            fg_color = palette.subtext0,
        },

        -- You can configure some alternate styling when the mouse pointer
        -- moves over inactive tabs
        inactive_tab_hover = {
            bg_color = palette.surface0,
            fg_color = palette.subtext0,
        },

        -- The new tab button that let you create new tabs
        new_tab = {
            bg_color = palette.surface1,
            fg_color = palette.text,
        },

        -- You can configure some alternate styling when the mouse pointer
        -- moves over the new tab button
        new_tab_hover = {
            bg_color = palette.surface2,
            fg_color = palette.text,
            italic = true,
        },
    },
}


-- and finally, return the configuration to wezterm
return config
