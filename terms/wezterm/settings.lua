local M = {}

M.front_end = "WebGpu"
M.webgpu_power_preference = "HighPerformance"
M.scrollback_lines = 1000
M.window_background_opacity = 0.8
M.max_fps = 200
M.animation_fps = 60
M.cursor_blink_rate = 0
M.cursor_thickness = "0.15cell"
M.adjust_window_size_when_changing_font_size = false
M.term = "xterm-256color"
M.automatically_reload_config = true
M.show_new_tab_button_in_tab_bar = false
M.use_fancy_tab_bar = false
M.integrated_title_button_style = "Gnome"
M.window_decorations = "NONE"
M.window_frame = {
  inactive_titlebar_bg = "NONE",
  active_titlebar_bg = "NONE"
}
M.tab_bar_at_bottom = true
M.enable_wayland = false
M.window_padding = {
  left = 16,
  right = 16,
  top = 16,
  bottom = 16
}
M.set_environment_variables = {
  TERMINAL_EMULATION = "true"
}

return M
