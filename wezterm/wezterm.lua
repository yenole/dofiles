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
