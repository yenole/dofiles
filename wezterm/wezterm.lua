local wezterm = require("wezterm")

local config = {
	font = wezterm.font("Maple Mono NF"),
	font_size = 10.5,
	initial_cols = 130,
	initial_rows = 30,

	color_scheme = "Dracula",

	window_decorations = "RESIZE",
	window_background_opacity = 0.85,
	hide_tab_bar_if_only_one_tab = true,

	default_prog = { "pwsh" },

	-- 禁用默认的key绑定
	disable_default_key_bindings = true,
	keys = {
		{ key = "Escape", mods = "SHIFT", action = wezterm.action.SendKey({ key = "~" }) },
		{ key = "Delete", mods="SHIFT", action = wezterm.action.SendKey({ key = "`" }) },
		{ key = "v", mods = "ALT|SHIFT", action = wezterm.action.PasteFrom("Clipboard") },
	},

	mouse_bindings = {
		{ event = { Down = { streak = 1, button = "Left" } }, mods = "CTRL", action = wezterm.action.StartWindowDrag },
	},
}

return config
