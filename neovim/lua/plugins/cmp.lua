local cmp_options = function()
  local cmp = require "cmp"
  local utils = require "utils"

  return {
    mapping = {
      ["<CR>"] = cmp.mapping.confirm({ select = false }),
      ["<Down>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
      ["<Up>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select })
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
    window = {
      documentation = cmp.config.window.bordered(),
      completion = cmp.config.window.bordered({ winhighlight = "CursorLine:PmenuSel" })
    },
    performance = {
      max_view_entries = 20,
      debounce = 200,
      throttle = 200
    },
    formatting = {
      fields = { "abbr", "kind" },
      format = function (_, item)
        --[[ if item.menu ~= nil then
          item.menu = utils.ellipsis(item.menu, 20);
        end]]--

        item.abbr = utils.ellipsis(item.abbr, 20);
        item.kind = "[" .. item.kind .. "]";

        return item;
      end
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
    )
  }
end

local cmp_cmdline_command_options = function ()
  local cmp = require "cmp";
  local utils = require "utils"

  return {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = "path" },
      {
        name = "cmdline",
        option = {
          ignore_cmds = { 'Man', '!' }
        }
      },
    },
    formatting = {
      fields = { "abbr" },
      format = function (_, item)
        --[[ if item.menu ~= nil then
          item.menu = utils.ellipsis(item.menu, 20);
        end]]--

        item.abbr = utils.ellipsis(item.abbr, 20);
        -- item.kind = "[" .. item.kind .. "]";

        return item;
      end
    },
    window = {
      completion = cmp.config.window.bordered({ winhighlight = "CursorLine:PmenuSel" }),
    }
  }
end

local cmp_cmdline_search_options = function ()
  local cmp = require "cmp";
  local utils = require "utils"

  return {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = "buffer" },
    },
    formatting = {
      fields = { "abbr" },
      format = function (_, item)
        --[[ if item.menu ~= nil then
          item.menu = utils.ellipsis(item.menu, 20);
        end]]--

        item.abbr = utils.ellipsis(item.abbr, 20);
        -- item.kind = "[" .. item.kind .. "]";

        return item;
      end
    },
    window = {
      completion = cmp.config.window.bordered({ winhighlight = "CursorLine:PmenuSel" }),
    }
  }
end

return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-cmdline",
    "saadparwaiz1/cmp_luasnip"
  },
  config = function ()
    local cmp = require "cmp";

    cmp.setup(cmp_options());
    cmp.setup.cmdline(":", cmp_cmdline_command_options());
    cmp.setup.cmdline("/", cmp_cmdline_search_options());
  end,
  cond = function ()
    local utils = require("utils")
    local disallowed_filetypes = { "TelescopePrompt" }

    return not utils.array_includes(disallowed_filetypes, vim.bo.filetype)
  end
}
