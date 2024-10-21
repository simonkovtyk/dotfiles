local options = {
  indent = {
    char = "│",
    smart_indent_cap = false
  },
  scope = {
    enabled = true,
    show_start = false,
    show_end = false
  },
  exclude = {
    filetypes = {
      "dashboard",
      "neo-tree"
    }
  }
}

return {
  "lukas-reineke/indent-blankline.nvim",
  event = "VimEnter",
  main = "ibl",
  opts = options
}
