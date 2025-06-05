return {
  "L3MON4D3/LuaSnip",
  version = "v2.*",
  lazy = true,
  config = function()
    local group_id = vim.api.nvim_create_augroup("LuaSnip Attach Group", {
      clear = true
    })

    local utils = require("utils")
    local disallowed_filetypes = { "TelescopePrompt" }

    vim.api.nvim_create_autocmd("InsertEnter", {
      group = group_id,
      callback = function ()
        local includes_disallowed_filetypes = utils.array_includes(disallowed_filetypes, vim.bo.filetype)

        if includes_disallowed_filetypes then
          return
        end

        require("luasnip").setup()
        require("luasnip.loaders.from_snipmate").lazy_load();
        vim.api.nvim_del_augroup_by_id(group_id)
      end
    })
  end,
}

