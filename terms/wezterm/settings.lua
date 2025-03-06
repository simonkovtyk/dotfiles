local M = {}

M.front_end = "WebGpu"
M.webgpu_power_preference = "HighPerformance"
M.scrollback_lines = 1000
M.window_background_opacity = 1.0
M.max_fps = 200
M.animation_fps = 60
M.cursor_blink_rate = 0
M.cursor_thickness = "0.15cell"
M.adjust_window_size_when_changing_font_size = false
M.term = "xterm-256color"
M.automatically_reload_config = false
M.use_fancy_tab_bar = true
M.integrated_title_button_style = "Windows"
M.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
M.show_close_tab_button_in_tabs = false
M.tab_bar_at_bottom = false
M.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0
}

return M
