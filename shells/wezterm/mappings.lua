local wezterm = require "wezterm"

local M = {}

M.keys = {
	{
		key = "V",
		mods = "CTRL",
		action = wezterm.action.PasteFrom "Clipboard"
	}
}

return M