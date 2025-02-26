local options = {
  enable_cursor_hijack = true,
  window = {
    position = "right",
    popup = {
      border = "single"
    }
  },
  filesystem = {
    hide_dotfiles = false,
    hide_gitignored = false,
    filtered_items = {
      hide_dotfiles = false,
      hide_gitignored = false
    }
  }
}

return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim"
  },
  branch = "v3.x",
  opts = options
}
