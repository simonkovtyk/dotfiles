local opts =  function (desc)
  return {
    desc = "nvim-tree: " .. desc,
    buffer = bufnr,
    noremap = true,
    silent = true,
    nowait = true
  }
end

local on_attach = function(bufnr)
  vim.api.nvim_buf_set_name(bufnr, "Explorer")

  local api = require "nvim-tree.api"

  vim.keymap.set("n", "<CR>", api.node.open.edit, opts("Open"))
  -- api.config.mappings.default_on_attach()
end

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

local open_at_start = function()
  local tree = require "nvim-tree.view"

  if tree.is_visible() then
    return
  end

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
