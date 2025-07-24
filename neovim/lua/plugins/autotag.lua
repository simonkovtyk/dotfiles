local options = {
  opts = {
    enable_close_on_slash = true
  }
}

return {
  "windwp/nvim-ts-autotag",
  lazy = true,
  init = function ()
    local group_id = vim.api.nvim_create_augroup("Autotag Attach Group", {
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

        require("nvim-ts-autotag").setup(options)
        vim.api.nvim_del_augroup_by_id(group_id)
      end
    })
  end
}
