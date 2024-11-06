local wezterm = require 'wezterm'
local config = {}

config.color_scheme = 'Everforest Dark (Gogh)'
config.font = wezterm.font_with_fallback {'Fira Code', 'Victor Mono',}
config.hide_mouse_cursor_when_typing = true
config.window_background_opacity = 0.8

-- Window border and frame
config.window_decorations = "NONE"
config.hide_tab_bar_if_only_one_tab = true

config.keys = {
	-- Horizontal split
	{
		key = '%',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.SplitPane {
			direction = 'Right',
			-- size = { Percent = 50 },
		},
	},
	-- Verticle split
	{
		key = '"',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.SplitPane {
			direction = 'Down',
			-- command = { args = { 'top' } },
			-- size = { Percent = 50 },
		},
	},
}

return config
