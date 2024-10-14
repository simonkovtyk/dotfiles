local wezterm = require "wezterm"
local utils = require "utils"
local colors = require "colors"
local mappings = require "mappings"
local settings = require "settings"
local typography = require "typography"
local shells = require "shells"
require "listeners"

local config = wezterm.config_builder()

utils.shallowCopyAndAssign(config, colors, mappings, settings, typography, shells)

return config