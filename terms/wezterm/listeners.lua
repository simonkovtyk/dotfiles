local wezterm = require "wezterm"

wezterm.on("gui-startup", function()
  local tab, pane, window = wezterm.mux.spawn_window{}
  window:gui_window():maximize()
end)