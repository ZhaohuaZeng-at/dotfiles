-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.color_scheme = 'catppuccin-mocha'
config.font = wezterm.font_with_fallback {
    'Monolisa',
    'FiraCode Nerd Font',
}
config.font_size = 18

config.enable_scroll_bar = false
config.enable_tab_bar = true
config.use_fancy_tab_bar = true

config.window_decorations = "TITLE | RESIZE"
config.window_background_opacity = 0.9
config.macos_window_background_blur = 8

config.window_frame = {
    -- The font used in the tab bar.
    -- Roboto Bold is the default; this font is bundled
    -- with wezterm.
    -- Whatever font is selected here, it will have the
    -- main font setting appended to it to pick up any
    -- fallback fonts you may have used there.
    font = wezterm.font { family = 'Berkeley Mono' },

    -- The size of the font in the tab bar.
    -- Default to 10.0 on Windows but 12.0 on other systems
    font_size = 16.0,

    -- The overall background color of the tab bar when
    -- the window is focused
    active_titlebar_bg = '#313244',

    -- The overall background color of the tab bar when
    -- the window is not focused
    inactive_titlebar_bg = '#1e1e2e',
    button_bg = '#45475a',
    button_fg = '#cdd6f4'
    
}


-- and finally, return the configuration to wezterm
return config
