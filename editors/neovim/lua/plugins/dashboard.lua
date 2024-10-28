local logo = [[
  ██████  ██▓ ███▄ ▄███▓ ▒█████   ███▄    █  ██ ▄█▀ ▒█████   ██▒   █▓
▒██    ▒ ▓██▒▓██▒▀█▀ ██▒▒██▒  ██▒ ██ ▀█   █  ██▄█▒ ▒██▒  ██▒▓██░   █▒
░ ▓██▄   ▒██▒▓██    ▓██░▒██░  ██▒▓██  ▀█ ██▒▓███▄░ ▒██░  ██▒ ▓██  █▒░
  ▒   ██▒░██░▒██    ▒██ ▒██   ██░▓██▒  ▐▌██▒▓██ █▄ ▒██   ██░  ▒██ █░░
▒██████▒▒░██░▒██▒   ░██▒░ ████▓▒░▒██░   ▓██░▒██▒ █▄░ ████▓▒░   ▒▀█░  
▒ ▒▓▒ ▒ ░░▓  ░ ▒░   ░  ░░ ▒░▒░▒░ ░ ▒░   ▒ ▒ ▒ ▒▒ ▓▒░ ▒░▒░▒░    ░ ▐░  
░ ░▒  ░ ░ ▒ ░░  ░      ░  ░ ▒ ▒░ ░ ░░   ░ ▒░░ ░▒ ▒░  ░ ▒ ▒░    ░ ░░  
░  ░  ░   ▒ ░░      ░   ░ ░ ░ ▒     ░   ░ ░ ░ ░░ ░ ░ ░ ░ ▒       ░░  
      ░   ░         ░       ░ ░           ░ ░  ░       ░ ░        ░  
                                                                 ░   
]]
logo = logo .. string.rep("\n", 2)

local version_info = vim.version()

logo = logo .. "NeoVim  " .. version_info.major .. "." .. version_info.minor .. "." .. version_info.patch .. " Custom IDE"

logo = string.rep("\n", 14) .. logo .. string.rep("\n", 3)
logo = vim.split(logo, "\n")

local options = {
  theme = "doom",
  disable_move = true,
  shortcut_type = "letter",
  hide = {
    statusline = true,
    tabline = true,
    winbar = true
  },
  config = {
    header = logo,
    center = {
      {
        desc = "Project" .. string.rep(" ", 50),
        desc_hl = "DashboardFooter"
      },
      {
        icon = " ",
        desc = "New file",
        action = "enew",
        key = "e",
        key_format = "[%s]"
      },
      {
        icon = " ",
        desc = "Explore files",
        action = "Neotree current",
        key = "w",
        key_format = "[%s]"
      },
      {
        icon = " ",
        desc = "Search files",
        action = "Telescope",
        key = "f",
        key_format = "[%s]"
      },
      {
        icon = " ",
        desc = "Quit",
        action = "qa",
        key = "q",
        key_format = "[%s]"
      },
      {
        desc = "Settings",
        desc_hl = "DashboardFooter"
      },
      {
        icon = " ",
        desc = "LSPs",
        action = "Mason",
        key = "l",
        key_format = "[%s]"
      },
      {
        icon = "󰐱 ",
        desc = "Plugins",
        action = "Lazy",
        key = "p",
        key_format = "[%s]"
      },
      {
        icon = "󱝀 ",
        desc = "Check health",
        action = "checkhealth",
        key = "h",
        key_format = "[%s]"
      },
      {
        desc = "Others",
        desc_hl = "DashboardFooter"
      },
      {
        icon = " ",
        desc = "View GitHub",
        action = "!firefox -new-tab https://github.com/simonkovtyk",
        key = "g",
        key_format = "[%s]"
      },
      {
        desc = string.rep(" ", 21) .. "󰄾 private only 󰄽"
      }
    }
  }
}

return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  opts = options
}
