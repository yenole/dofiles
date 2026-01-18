local wezterm = require("wezterm")
local config = {
    font = wezterm.font("Maple Mono NF"),
    font_size = 10.5,
    initial_cols = 130,
    initial_rows = 30,

    color_scheme = 'Rosé Pine (base16)',
    window_decorations = "RESIZE",
    window_background_opacity = 0.85,
    hide_tab_bar_if_only_one_tab = false,
    tab_bar_at_bottom = true,

    default_prog = { "pwsh" },
    -- 禁用默认的key绑定
    disable_default_key_bindings = true,
    keys = {
        { key = "Escape",    mods = "SHIFT",      action = wezterm.action.SendKey({ key = "~" }) },
        { key = "Delete",    mods = "SHIFT",      action = wezterm.action.SendKey({ key = "`" }) },
        { key = "v",         mods = "ALT|SHIFT",  action = wezterm.action.PasteFrom("Clipboard") },
        { key = "UpArrow",   mods = "SHIFT",      action = wezterm.action.ScrollByLine(-1) },
        { key = "DownArrow", mods = "SHIFT",      action = wezterm.action.ScrollByLine(1) },
        { key = '\\',        mods = 'ALT',        action = wezterm.action.ShowLauncher },
        { key = "1",         mods = "CTRL",       action = wezterm.action.ActivateTab(0) },
        { key = "2",         mods = "CTRL",       action = wezterm.action.ActivateTab(1) },
        { key = "3",         mods = "CTRL",       action = wezterm.action.ActivateTab(2) },
        { key = "4",         mods = "CTRL",       action = wezterm.action.ActivateTab(3) },
        { key = "5",         mods = "CTRL",       action = wezterm.action.ActivateTab(4) },
        { key = "[",         mods = "ALT",        action = wezterm.action.SpawnTab { DomainName = "local" }},
        { key = "]",         mods = "ALT",        action = wezterm.action.SpawnTab { DomainName = "WSL:Arch" }},
        { key = "=",         mods = "ALT",        action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' }},
        { key = "-" ,        mods = "ALT",        action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' }}
    },

    mouse_bindings = {
        { event = { Down = { streak = 1, button = "Left" } }, mods = "CTRL", action = wezterm.action.StartWindowDrag },
    },
}
local tabline = wezterm.plugin.require("https://github.com/michaelbrusegard/tabline.wez")
tabline.setup({
  options = {
    icons_enabled = true,
    theme =  config.color_scheme,
  },
  sections = {
      tabline_a = { 'mode' },
      tab_active = {
          'index',
          { 'parent', padding = 0 },
          '/',
          { 'cwd', padding = { left = 0, right = 1 } },
          { 'zoomed', padding = 0 }
      },
      tab_inactive = { 'index', { 'process', padding = { left = 0, right = 1 } } },
      tabline_x = { 'ram', 'cpu' },
      tabline_y = { 'datetime', 'battery' },
      tabline_z = { 'domain' },
  }
})
tabline.apply_to_config(config)
config.window_padding = { left = 4 , right = 4 ,bottom = 0 }
return config
