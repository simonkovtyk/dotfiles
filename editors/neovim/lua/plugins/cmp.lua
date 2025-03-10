local options = function(cmp)
  local lspkind = require "lspkind"
  local mappings_settings = require "mappings_settings"
  local utils = require "utils"

  local keymap = vim.api.nvim_set_keymap

  -- After lazy loading nvim-cmp, mappings of this plugin are still remaining uninitialized, so I need to handle them manually.

  keymap("i", "<Down>", "", utils.table_flat_merge(mappings_settings.options, {
    callback = function ()
      if cmp.visible() then
        cmp.select_next_item()
        return
      end

      local buf_row = vim.api.nvim_buf_line_count(0)
      local row, col = table.unpack(vim.api.nvim_win_get_cursor(0))

      print("Buffer Row: " .. buf_row .. ", Row: " .. row)

      if row == buf_row then
        return
      end

      vim.api.nvim_win_set_cursor(0, {row + 1, col})
    end
  }))

  keymap("i", "<Up>", "", utils.table_flat_merge(mappings_settings.options, {
    callback = function ()
      if cmp.visible() then
        cmp.select_prev_item()
        return
      end

      local row, col = table.unpack(vim.api.nvim_win_get_cursor(0))

      if row - 1 == 0 then
        return
      end

      vim.api.nvim_win_set_cursor(0, {row - 1, col})
    end
  }))

  return {
    mapping = {
      ["<C-b>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.abort(),
      ["<CR>"] = cmp.mapping.confirm({ select = false })
    },
    snippet = {
      scrollbar = false,
      expand = function(args)
        local luasnip = require "luasnip"

        luasnip.lsp_expand(args.body)
      end
    },
    view = {
      entries = {
        follow_cursor = false
      },
      docs = {
        auto_open = true
      }
    },
    performance = {
      max_view_entries = 20,
      debounce = 200,
      throttle = 200
    },
    sources = cmp.config.sources({
        {
          name = "nvim_lsp"
        },
        {
          name = "luasnip"
        }
      }, {
        {
          name = "buffer"
        },
        {
          name = "cmdline"
        }
      }
    ),
    formatting = {
      format = lspkind.cmp_format({
        maxwidth = 50,
        ellipsis_char = "…",
        show_labelDetails = true,
        before = function (_, vim_item)
          return vim_item
        end
      })
    }
  }
end

return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    "saadparwaiz1/cmp_luasnip"
  },
  lazy = true,
  init = function ()
    local group_id = vim.api.nvim_create_augroup("CMP Attach Group", {
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

        local cmp = require("cmp")

        cmp.setup(options(cmp))
        vim.api.nvim_del_augroup_by_id(group_id)
      end
    })
  end
}
