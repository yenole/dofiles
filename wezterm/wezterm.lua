local wezterm = require("wezterm")

local config = {
	font = wezterm.font("Maple Mono NF"),
	font_size = 14,
	initial_cols = 130,
	initial_rows = 30,

	color_scheme = "Rosé Pine (base16)",

	window_decorations = "RESIZE",
	window_background_opacity = 0.85,
	hide_tab_bar_if_only_one_tab = false,
	tab_bar_at_bottom = true,

	default_prog = { "zsh" },

	disable_default_key_bindings = true,
	keys = {
		{ key = "Escape", mods = "SHIFT", action = wezterm.action.SendKey({ key = "~" }) },
		{ key = "Delete", mods = "SHIFT", action = wezterm.action.SendKey({ key = "`" }) },
		{ key = "v", mods = "CMD", action = wezterm.action.PasteFrom("Clipboard") },
		{ key = "v", mods = "CMD|SHIFT", action = wezterm.action.PasteFrom("Clipboard") },
		{ key = "UpArrow", mods = "SHIFT", action = wezterm.action.ScrollByLine(-1) },
		{ key = "DownArrow", mods = "SHIFT", action = wezterm.action.ScrollByLine(1) },
		{ key = "\\", mods = "CMD", action = wezterm.action.ShowLauncher },
		{ key = "1", mods = "CMD", action = wezterm.action.ActivateTab(0) },
		{ key = "2", mods = "CMD", action = wezterm.action.ActivateTab(1) },
		{ key = "3", mods = "CMD", action = wezterm.action.ActivateTab(2) },
		{ key = "4", mods = "CMD", action = wezterm.action.ActivateTab(3) },
		{ key = "5", mods = "CMD", action = wezterm.action.ActivateTab(4) },
		{ key = "6", mods = "CMD", action = wezterm.action.ActivateTab(5) },
		{ key = "]", mods = "CMD", action = wezterm.action.SpawnTab({ DomainName = "local" }) },
		{
			key = "=",
			mods = "CMD",
			action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "-",
			mods = "CMD",
			action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
		{ key = "n", mods = "CMD", action = wezterm.action.SpawnWindow },
		{ key = "m", mods = "CMD", action = wezterm.action.Hide },
		{ key = "d", mods = "CMD", action = wezterm.action.SendKey({ key = "d", mods = "CTRL" }) },
	},

	mouse_bindings = {
		{ event = { Down = { streak = 1, button = "Left" } }, mods = "CTRL", action = wezterm.action.StartWindowDrag },
	},
}

return config
