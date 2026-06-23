local options = {
  ensure_installed = "all",
  auto_install = true
}

local configs = {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  }
}

return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  opts = opts,
  build = ":TSUpdate"
}
