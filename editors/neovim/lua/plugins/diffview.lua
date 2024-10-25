local options = {
  show_help_hints = false,
  file_panel = {
    tree_options = {
      flatten_dirs = false
    },
    win_config = {
      position = "right",
      width = 40
    }
  },
  signs = {
    fold_closed = "",
    fold_open = ""
  }
}

return {
  "sindrets/diffview.nvim",
  opts = options
}
