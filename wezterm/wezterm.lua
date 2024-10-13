local wezterm = require("wezterm")

local config = {
	font = wezterm.font("Maple Mono NF"),
	font_size = 13.5,
	initial_cols = 140,
	initial_rows = 35,

	color_scheme = "Dracula",

	window_decorations = "RESIZE",
	window_background_opacity = 0.80,
	hide_tab_bar_if_only_one_tab = true,

	default_prog = { "/opt/homebrew/bin/tmux", "new-session", "-D", "-A", "-s", "coding" },

	disable_default_key_bindings = true,
	keys = {
		{ key = "Escape", mods = "SHIFT", action = wezterm.action.SendKey({ key = "~" }) },
		{ key = "v", mods = "CMD|SHIFT", action = wezterm.action.PasteFrom("Clipboard") },
		{ key = "b", mods = "CMD", action = wezterm.action.SendKey({ key = "b", mods = "CTRL" }) },
		{ key = "d", mods = "CMD", action = wezterm.action.SendKey({ key = "d", mods = "CTRL" }) },
		{ key = "w", mods = "CMD|SHIFT", action = wezterm.action.CloseCurrentTab({ confirm = false }) },
		{ key = "m", mods = "CMD", action = wezterm.action.Hide },
		{ key = "UpArrow", mods = "SHIFT", action = wezterm.action.ScrollByLine(-1) },
		{ key = "DownArrow", mods = "SHIFT", action = wezterm.action.ScrollByLine(1) },
	},
}

return config
