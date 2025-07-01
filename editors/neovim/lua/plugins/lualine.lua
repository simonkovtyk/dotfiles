local options = {
  options = {
    theme = "dark-orchid",
    section_separators = { left = "", right = "" },
    component_separators = "",
    refresh = {
      statusline = 100,
      tabline = 200,
      winbar = 200,
    }
  },
  sections = {
    lualine_a = {
      {
        "mode",
        padding = 0
      }
    },
    lualine_b = {
      {
        "filetype",
        colored = false,
        padding = {
          left = 2
        }
      },
      {
        "branch",
        icon = "",
        padding = {
          left = 2
        }
      }
    },
    lualine_c = {
    },
    lualine_x = {
    },
    lualine_y = {
      {
        "encoding",
        padding = {
          right = 2
        }
      },
      {
        "filesize",
        padding = {
          right = 1
        }
      }
    },
    lualine_z = {
      {
        "location",
        padding = 0
      }
    }
  }
}

return {
  "nvim-lualine/lualine.nvim",
  lazy = true,
  init = function ()
    local group_id = vim.api.nvim_create_augroup("Lualine Attach Group", {
      clear = true
    })

    local utils = require("utils")
    local disallowed_filetypes = { "dashboard", "lazy", "lazy_backdrop", "mason", "mason_backdrop" }

    local load_plugin = function ()
      local includes_disallowed_filetype = utils.array_includes(disallowed_filetypes, vim.bo.filetype)

      if includes_disallowed_filetype then
        return
      end

      require "lualine".setup(options)
      vim.api.nvim_del_augroup_by_id(group_id)
    end

    vim.api.nvim_create_autocmd({ "BufReadPost", "FileType" }, {
      group = group_id,
      callback = load_plugin
    })
  end
}
