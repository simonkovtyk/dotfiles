local wezterm = require "wezterm"

local M = {}

M.font = wezterm.font "FiraCode Nerd Font"
M.font_size = 14.0
M.harfbuzz_features = {
	"calt=0",
	"clig=0",
	"liga=0"
}
M.harfbuzz_features = {
	"zero"
}

return M