local wezterm = require "wezterm"

local M = {}

M.disable_default_key_bindings = true
M.disable_default_mouse_bindings = true
M.keys = {
  {
    key = "C",
    mods = "CTRL|SHIFT",
    action = wezterm.action.CopyTo "Clipboard"
  },
	{
		key = "V",
		mods = "CTRL|SHIFT",
		action = wezterm.action.PasteFrom "Clipboard"
	},
  {
    key = "s",
    mods = "ALT",
    action = wezterm.action.SplitHorizontal {
      domain = "CurrentPaneDomain"
    }
  },
  {
    key = "S",
    mods = "ALT|SHIFT",
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
    key = "Q",
    mods = "ALT|SHIFT",
    action = wezterm.action.CloseCurrentTab {
      confirm = true
    }
  },
  {
    key = "w",
    mods = "ALT",
    action = wezterm.action.PaneSelect {
      alphabet = "1234567890"
    }
  },
  {
    key = "n",
    mods = "ALT",
    action = wezterm.action.SpawnWindow
  },
  {
    key = "t",
    mods = "ALT",
    action = wezterm.action.SpawnTab "CurrentPaneDomain"
  },
  {
    key = "UpArrow",
    mods = "ALT",
    action = wezterm.action.AdjustPaneSize { "Up", 2 }
  },
  {
    key = "RightArrow",
    mods = "ALT",
    action = wezterm.action.AdjustPaneSize { "Right", 2 }
  },
  {
    key = "DownArrow",
    mods = "ALT",
    action = wezterm.action.AdjustPaneSize { "Down", 2 }
  },
  {
    key = "LeftArrow",
    mods = "ALT",
    action = wezterm.action.AdjustPaneSize { "Left", 2 }
  },
  {
    key = "Tab",
    mods = "CTRL",
    action = wezterm.action.ActivateTabRelative(1)
  },
  {
    key = "Tab",
    mods = "CTRL|SHIFT",
    action = wezterm.action.ActivateTabRelative(-1)
  },
  {
    key = "l",
    mods = "ALT",
    action = wezterm.action.ShowLauncherArgs {
      flags = "LAUNCH_MENU_ITEMS"
    }
  }
}

for i = 0, 9 do
  table.insert(
    M.keys,
    {
      key = tostring(i),
      mods = "ALT",
      action = wezterm.action.ActivateTab(i)
    }
  )
end

return M
