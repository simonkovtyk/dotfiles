local wezterm = require "wezterm"

local M = {}

M.keys = {
	{
		key = "V",
		mods = "CTRL",
		action = wezterm.action.PasteFrom "Clipboard"
	},
  {
    key = "v",
    mods = "ALT",
    action = wezterm.action.SplitHorizontal {
      domain = "CurrentPaneDomain"
    }
  },
  {
    key = "h",
    mods = "ALT",
    action = wezterm.action.SplitVertical {
      domain = "CurrentPaneDomain"
    }
  },
  {
    key = "q",
    mods = "ALT",
    action = wezterm.action.CloseCurrentPane {
      confirm = true
    }
  },
  {
    key = "t",
    mods = "ALT",
    action = wezterm.action.CloseCurrentTab {
      confirm = true
    }
  },
  {
    key = "s",
    mods = "ALT",
    action = wezterm.action.PaneSelect {
      alphabet = "1234567890"
    }
  }
}

return M
