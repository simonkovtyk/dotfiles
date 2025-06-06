local M = {}

M.color_scheme = "catppuccin-mocha"
M.colors = {
  cursor_bg = "#ffffff",
	cursor_border = "#ffffff",
	cursor_fg = "#1e1e2e",
	tab_bar = {
    background = "rgba(30, 30, 46, 0.8)",
		active_tab = {
			 bg_color = "rgba(30, 30, 46, 0.8)",
			 fg_color = "rgba(186, 195, 223, 0.8)"
		},
		inactive_tab = {
			 bg_color = "rgba(54, 54, 73, 0.8)",
			 fg_color = "rgba(186, 195, 223, 0.8)"
		}
	}
}
-- M.force_reverse_video_cursor = true

return M
