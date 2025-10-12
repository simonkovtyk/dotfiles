local options = {
  enable_cursor_hijack = false, -- TODO(simonkov): change to true
  popup_border_style = "",
  use_popups_for_input = false,
  default_component_configs = {
    modified = {
      symbol = ""
    },
    icon = {
      default = "",
      provider = function (icon, node, state)
        if node.type == "file" or node.type == "terminal" then
          local success, web_devicons = pcall(require, "nvim-web-devicons")
          local name = node.type == "terminal" and "terminal" or node.name

          if success then
            local devicon = web_devicons.get_icon(name)
            icon.text = devicon or icon.text

            if node.type == "directory" then
              icon.highlight = "NeoTreeDirectoryIcon"
            else
              icon.highlight = "NeoTreeFileIcon"
            end
          end
        end
      end
    },
    git_status = {
      symbols = {
        added = "",
        deleted = "",
        modified = "!",
        renamed = "»",
        untracked = "?",
        ignored = " ",
        unstaged = "-",
        staged = "+",
        conflict = "",
      }
    },
    indent = {
      with_expanders = false,
      last_indent_marker = "│"
    },
    name = {
      use_git_status_colors = false
    }
  },
  window = {
    position = "right",
    popup = {
      border = "single"
    }
  },
  filesystem = {
    hide_dotfiles = false,
    hide_gitignored = false,
    follow_current_file = {
      enabled = true
    },
    filtered_items = {
      hide_dotfiles = false,
      hide_gitignored = false
    }
  }
}

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  opts = options,
  cmd = "Neotree"
}
