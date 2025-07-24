local M = {}

M.colors = {
  foreground = "#ffffff",
  background = "rgba(0, 0, 0, 0)",
  cursor_bg = "#ffffff",
	cursor_border = "#ffffff",
	cursor_fg = "#000000",
  selection_bg = "rgba(115, 0, 255, 0.8)",
  selection_fg = "#ffffff",
  split = "rgba(115, 0, 255, 0.8)",
	tab_bar = {
    background = "rgba(0, 0, 0, 0.8)",
		active_tab = {
			 bg_color = "rgba(115, 0, 255, 0.8)",
			 fg_color = "rgba(255, 255, 255, 0.8)"
		},
		inactive_tab = {
			 bg_color = "rgba(0, 0, 0, 0.8)",
			 fg_color = "rgba(255, 255, 225, 0.8)"
		},
    inactive_tab_hover = {
      bg_color = "#c799ff",
      fg_color = "rgba(255, 255, 225, 0.8)"
    }
	}
}
M.inactive_pane_hsb = {
  brightness = 0.6,
  saturation = 1
}

return M
