local wezterm = require 'wezterm'
local config = {}
local act = wezterm.action

-- Color scheme
config.color_scheme = 'Everforest Dark (Gogh)'
config.font = wezterm.font_with_fallback {'Fira Code', 'Victor Mono',}
config.hide_mouse_cursor_when_typing = true
config.window_background_opacity = 0.8

-- Sanity
config.audible_bell = "Disabled"

config.visual_bell = {
	fade_in_function = 'EaseIn',
	fade_in_duration_ms = 100,
	fade_out_function = 'EaseOut',
	fade_out_duration_ms = 100,
}

config.colors = {
	visual_bell = '#202020',
}

-- Window border and frame
config.window_decorations = "NONE"
config.hide_tab_bar_if_only_one_tab = true

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- Key bindings
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
	{
		key = 'w',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.CloseCurrentPane { confirm = true },
	},
	{
		key = 'H',
		mods = 'CTRL|SHIFT',
		action = act.ActivatePaneDirection 'Left',
	},
	{
		key = 'L',
		mods = 'CTRL|SHIFT',
		action = act.ActivatePaneDirection 'Right',
	},
	{
		key = 'K',
		mods = 'CTRL|SHIFT',
		action = act.ActivatePaneDirection 'Up',
	},
	{
		key = 'J',
		mods = 'CTRL|SHIFT',
		action = act.ActivatePaneDirection 'Down',
	},
	{
		key = 'p',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.SplitPane {
			direction = 'Down',
			command = { args = { 'btop' } },
			-- size = { Percent = 50 },
		},
	},
}

-- Disable following links with simple click.
config.mouse_bindings = {
	-- Disable the default click behavior
	{
		event = { Up = { streak = 1, button = "Left"} },
		mods = "NONE",
		action = wezterm.action.DisableDefaultAssignment,
	},
	-- Ctrl-click will open the link under the mouse cursor
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "CTRL|SHIFT",
		action = wezterm.action.OpenLinkAtMouseCursor,
	},
}

return config
