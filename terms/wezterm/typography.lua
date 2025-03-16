local wezterm = require "wezterm"

local M = {}

M.font = wezterm.font "BlexMono Nerd Font"
-- M.font = wezterm.font "FiraCode Nerd Font"
-- M.font = wezterm.font "Hack Nerd Font"
-- M.font = wezterm.font "GeistMono NF"
-- M.font = wezterm.font "JetBrainsMono NF"
M.font_size = 11.0
M.harfbuzz_features = {
	"calt=0",
	"clig=0",
	"liga=0",
	"zero"
}

return M
