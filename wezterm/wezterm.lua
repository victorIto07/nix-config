-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.action
local config = wezterm.config_builder()

local accent_color = "#884bff"

config.front_end = "OpenGL"
config.max_fps = 60
config.default_cursor_style = "BlinkingBlock"
config.animation_fps = 1
config.cursor_blink_rate = 10
config.term = "xterm-256color"

config.cell_width = 0.9
config.window_background_opacity = 0.95
config.prefer_egl = true

config.font_size = 12.0
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

config.window_padding = {
	left = 5,
	right = 5,
	top = 5,
	bottom = 5,
}

config.inactive_pane_hsb = {
	brightness = 0.4,
	saturation = 0.7,
}

-- tabs
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

config.color_scheme = "Catppuccin Macchiato" -- Mocha|Macchiato|Frappe|Latte

config.disable_default_key_bindings = true
config.keys = {
	{
		key = "j",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.SplitPane({
			direction = "Down",
			size = { Percent = 50 },
		}),
	},
	{
		key = "k",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.SplitPane({
			direction = "Up",
			size = { Percent = 50 },
		}),
	},
	{
		key = "l",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.SplitPane({
			direction = "Right",
			size = { Percent = 50 },
		}),
	},
	{
		key = "h",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.SplitPane({
			direction = "Left",
			size = { Percent = 50 },
		}),
	},
	{
		key = "h",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "l",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "k",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "j",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		key = "w",
		mods = "CTRL|SHIFT",
		action = wezterm.action.CloseCurrentPane({ confirm = false }),
	},
	{
		key = "LeftArrow",
		mods = "CTRL|SHIFT",
		action = act.AdjustPaneSize({ "Left", 5 }),
	},
	{
		key = "DownArrow",
		mods = "CTRL|SHIFT",
		action = act.AdjustPaneSize({ "Down", 5 }),
	},
	{
		key = "UpArrow",
		mods = "CTRL|SHIFT",
		action = act.AdjustPaneSize({ "Up", 5 }),
	},
	{
		key = "RightArrow",
		mods = "CTRL|SHIFT",
		action = act.AdjustPaneSize({ "Right", 5 }),
	},
	{ key = ";", mods = "CTRL", action = act.PaneSelect({
		mode = "SwapWithActive",
	}) },
	{
		key = "P",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ShowLauncherArgs({
			flags = "LAUNCH_MENU_ITEMS",
		}),
	},
	{
		key = "r",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ReloadConfiguration,
	},
	{
		key = ",",
		mods = "CTRL",
		action = wezterm.action.ShowLauncher,
	},
	{
		key = "o",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivateTabRelative(1),
	},
	-- Switch to the previous tab
	{
		key = "i",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivateTabRelative(-1),
	},
}

config.window_decorations = "NONE | RESIZE"

config.window_background_gradient = {
	-- orientation = "Vertical",
	colors = {
		"#0c0b17",
	},
	-- noise = 50,
}

---@diagnostic disable-next-line: unused-local
wezterm.on("format-tab-title", function(tab, _tabs, _panes, _config, _hover, _max_width)
	local p = {
		{ Foreground = { Color = "#fff" } },
		{ Text = "  " .. tab.tab_index + 1 .. "  " },
	}

	if tab.is_active then
		table.insert(p, 1, { Background = { Color = accent_color } })
	end

	return p
end)

return config
