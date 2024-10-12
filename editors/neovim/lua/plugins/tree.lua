local options = {
  sort = {
    sorter = "case_sensitive"
  },
  view = {
    width = 30,
    side = "right"
  },
  renderer = {
    group_empty = true
  },
  update_focused_file = {
    enable = true
  },
  on_attach = on_attach
}

local function open_at_start()
  require("nvim-tree.api").tree.toggle({ focus = false })
end

vim.api.nvim_create_autocmd({ "BufRead" }, { callback = open_at_start })

return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  opts = options
}
