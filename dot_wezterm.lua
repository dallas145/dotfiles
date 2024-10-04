-- Pull in teh wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()
local act = wezterm.action

-- This is where you actually apply your config choices
-- Show which key table is active in the status area
--wezterm.on('update-right-status', function(window, pane)
	--local name = window:active_key_table()
	--if name then
		--name = 'TABLE: ' .. name
	--end
	--window:set_right_status(name or '')
--end)

-- Show leader key is active or not
--wezterm.on('update-right-status', function(window, pane)
	--local leader = ''
	--if window:leader_is_active() then
		--leader = 'LEADER'
	--end
	--window:set_right_status(leader)
--end)


-- General
--config.color_scheme = 'Tokyo Night (Gogh)'
--config.color_scheme = 'Dracula (base16)'
config.color_scheme = 'Dracula'
config.adjust_window_size_when_changing_font_size = false
config.ui_key_cap_rendering = 'WindowsSymbols'
config.window_padding = {
	left = '0.5cell',
	right = '0.5cell',
	top = '0.5cell',
	bottom = '0.5cell',
}

-- Fonts
--config.font = wezterm.font_with_fallback {
	--{ family = 'CaskaydiaCove Nerd Font Mono', weight = 'DemiBold' },
	--{ family = 'Noto Sans CJK TC', weight = 'Regular' },
--}
config.font = wezterm.font_with_fallback {
	{ family = 'Blex Mono Nerd Font', weight = 'DemiBold' },
	{ family = 'IBM Plex Sans TC', weight = 'Regular' },
}
--config.font = wezterm.font('CaskaydiaCove Nerd Font Mono', { weight = 'DemiBold' })
--config.font_rules = {
	--{
		--intensity = 'Half',
		--italic = true,
		--font = wezterm.font {
			--family = 'CaskaydiaCove Nerd Font Mono',
			--weight = 'Light',
			--style = 'Italic',
		--},
	--},
	--{
		--intensity = 'Half',
		--italic = false,
		--font = wezterm.font {
			--family = 'CaskaydiaCove Nerd Font Mono',
			--weight = 'Light',
		--},
	--},
--}
--config.font = wezterm.font('DejaVuSansM Nerd Font Mono', { weight = 'Bold' })
--config.font = wezterm.font('JetBrainsMonoNL Nerd Font', { weight = 'Bold' })
--config.font = wezterm.font('MesloLGM Nerd Font Mono', { weight = 'Bold' })
--config.font = wezterm.font('CaskaydiaCove Nerd Font Mono', { weight = 'Bold' })
config.font_size = 13.0
config.line_height = 1.2
config.use_ime = false
config.xim_im_name = 'ibus'
config.ime_preedit_rendering = 'Builtin'

-- Tab bar
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.tab_max_width = 20
config.hide_tab_bar_if_only_one_tab = false
config.enable_tab_bar = false
config.integrated_title_button_style = "Windows"
config.integrated_title_buttons = { 'Hide', 'Maximize', 'Close' }

-- Window
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_background_opacity = 0.85

-- shell
--config.default_prog = { 'pwsh.exe', '-NoLogo'}

-- keys
config.leader = { key = 'b', mods = 'CTRL', timeout_milliseconds = 1000}
config.keys = {
	{ key = '=', mods = 'LEADER', action = act.SplitHorizontal { domain = 'CurrentPaneDomain' }, },
	{ key = '-', mods = 'LEADER', action = act.SplitVertical { domain = 'CurrentPaneDomain' }, },
	{ key = 'h', mods = 'LEADER', action = act.ActivatePaneDirection 'Left', },
	{ key = 'j', mods = 'LEADER', action = act.ActivatePaneDirection 'Down', },
	{ key = 'k', mods = 'LEADER', action = act.ActivatePaneDirection 'Up', },
	{ key = 'l', mods = 'LEADER', action = act.ActivatePaneDirection 'Right', },
	{ key = 'r', mods = 'LEADER', action = act.ActivateKeyTable { 
		name = 'resize_pane',
		one_shot = false, 
		}, 
	},
	{ key = 's', mods = 'LEADER', action = act.PaneSelect },
	{ key = 'T', mods = 'LEADER', action = act.PaneSelect { mode = 'MoveToNewTab', }, },
	{ key = 't', mods = 'LEADER', action = act.SpawnTab 'CurrentPaneDomain' },
	{ key = 'w', mods = 'LEADER', action = act.ShowTabNavigator },
    { key = '1', mods = 'CTRL', action = act.ShowLauncher },
	{ key = 'x', mods = 'LEADER', action = act.ActivateCopyMode },
	{ key = 'f', mods = 'LEADER', action = act.Search("CurrentSelectionOrEmptyString") },
	{ key = 'UpArrow', mods = 'CTRL', action = act.ScrollByLine(-1) },
	{ key = 'DownArrow', mods = 'CTRL', action = act.ScrollByLine(1) },
	{ key = 'PageUp', mods = 'CTRL', action = act.ScrollByPage(-0.5) },
	{ key = 'PageDown', mods = 'CTRL', action = act.ScrollByPage(0.5) },
	{ key = 'PageDown', mods = 'CTRL|SHIFT', action = act.ScrollToBottom },
}

-- key tables
config.key_tables = {
	resize_pane = {
		{ key = 'h', action = act.AdjustPaneSize { 'Left', 5 }, },
		{ key = 'j', action = act.AdjustPaneSize { 'Down', 5 }, },
		{ key = 'k', action = act.AdjustPaneSize { 'Up', 5 }, },
		{ key = 'l', action = act.AdjustPaneSize { 'Right', 5 }, },
		
		-- cancel the mode by pressing ESC or Enter
		{ key = 'Escape', action = 'PopKeyTable' },
		{ key = 'Enter', action = 'PopKeyTable' },
	}
}

-- and finally, return the configuration to wezterm
return config, {
	leader = { key = 'b', mods = 'CTRL' },
	colors = {
		compose_cursor = 'orange',
	},
}
