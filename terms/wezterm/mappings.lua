local wezterm = require "wezterm"

local M = {}

M.disable_default_key_bindings = true
M.keys = {
  -- Normal Mode
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
    key = "h",
    mods = "ALT",
    action = wezterm.action.Hide
  },
  {
    key = "y",
    mods = "ALT",
    action = wezterm.action.QuickSelect
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
    key = "q",
    mods = "CTRL",
    action = wezterm.action.CloseCurrentTab {
      confirm = true
    }
  },
  {
    key = "q",
    mods = "CTRL|ALT",
    action = wezterm.action.QuitApplication
  },
  {
    key = "w",
    mods = "ALT",
    action = wezterm.action.PaneSelect {
      alphabet = "1234567890"
    }
  },
  {
    key = "p",
    mods = "ALT",
    action = wezterm.action.ActivateCommandPalette
  },
  {
    key = "o",
    mods = "ALT",
    action = wezterm.action.ShowTabNavigator
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
    key = "LeftArrow",
    mods = "CTRL|ALT",
    action = wezterm.action.MoveTabRelative(-1)
  },
  {
    key = "RightArrow",
    mods = "CTRL|ALT",
    action = wezterm.action.MoveTabRelative(1)
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
    key = "Tab",
    mods = "CTRL|ALT",
    action = wezterm.action.ActivateWindowRelative(1)
  },
  {
    key = "Tab",
    mods = "CTRL|ALT|SHIFT",
    action = wezterm.action.ActivateWindowRelative(-1)
  },
  {
    key = "l",
    mods = "ALT",
    action = wezterm.action.ShowLauncherArgs {
      flags = "LAUNCH_MENU_ITEMS"
    }
  },
  {
    key = "r",
    mods = "ALT",
    action = wezterm.action.PromptInputLine {
      description = "Enter new name for tab",
      action = wezterm.action_callback(function(window, pane, line)
        if not line then
          return
        end

        window:active_tab():set_title(line)
      end)
    }
  },
  -- Copy Mode
  {
    key = "x",
    mods = "ALT",
    action = wezterm.action.ActivateCopyMode
  }
}

local activateTab = function(tbl, key, tab)
  table.insert(
    tbl,
    {
      key = tostring(key),
      mods = "CTRL",
      action = wezterm.action.ActivateTab(tab)
    }
  )
end

local activateWindow = function(tbl, key, window)
  table.insert(
    tbl,
    {
      key = tostring(key),
      mods = "CTRL|ALT",
      action = wezterm.action.ActivateWindow(window)
    }
  )
end

local activatePane = function(tbl, key, pane)
  table.insert(
    tbl,
    {
      key = tostring(key),
      mods = "ALT",
      action = wezterm.action.ActivatePaneByIndex(pane)
    }
  )
end

for i = 1, 9 do
  activateTab(M.keys, i, i - 1)
end

activateTab(M.keys, 0, 9)

for i = 1, 9 do
  activateWindow(M.keys, i, i - 1)
end

activateWindow(M.keys, 0, 9)

for i = 1, 9 do
  activatePane(M.keys, i, i - 1)
end

activatePane(M.keys, 0, 9)

return M
