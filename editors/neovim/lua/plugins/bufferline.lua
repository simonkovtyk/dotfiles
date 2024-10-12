local options = {
  options = {
    close_icon = "",
    buffer_close_icon = "",
    show_buffer_icons = false,
    show_buffer_close_icons = false,
    show_close_icon = false
  },
  highlights = {
    buffer_selected = {
      gui = "bold"
    }
  }
}

return {
  "akinsho/bufferline.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  opts = options
}
