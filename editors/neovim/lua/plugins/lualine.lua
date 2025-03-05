local options = {
  sections = {
    lualine_a = {
      {
        "mode",
        separator = {
          left = "",
          right = ""
        }
      }
    },
    lualine_b = {
      {
        "filetype",
        color = {
          fg = "ffffff",
          bg = "181825"
        },
        colored = false
      }
    },
    lualine_c = {
      {
        "branch",
        color = {
          fg = "ffffff",
          bg = "181825"
        }
      }
    },
    lualine_x = {
      {
        "location",
        color = {
          fg = "ffffff",
          bg = "181825"
        }
      }
    },
    lualine_y = {
      {
        "encoding",
        color = {
          fg = "ffffff",
          bg = "181825"
        }
      }
    },
    lualine_z = {
      {
        "filesize",
        color = {
          fg = "ffffff",
          bg = "181825"
        }
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

      require("lualine").setup(options)
      vim.api.nvim_del_augroup_by_id(group_id)
    end

    vim.api.nvim_create_autocmd("BufReadPost", {
      group = group_id,
      callback = load_plugin
    })

    vim.api.nvim_create_autocmd("FileType", {
      group = group_id,
      callback = load_plugin
    })
  end
}
