local logo = [[
███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓
 ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒
▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░
▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██ 
▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒
░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░
░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░
   ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░   
         ░    ░  ░    ░ ░        ░   ░         ░   
                                ░                  
]]
logo = logo .. string.rep("\n", 2)

local version_info = vim.version()

logo = logo .. version_info.major .. "." .. version_info.minor .. "." .. version_info.patch

logo = logo .. string.rep("\n", 2)
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
    vertical_center = true,
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
        key = "n",
        key_format = "[%s]"
      },
      {
        icon = " ",
        desc = "Explore files",
        action = "Neotree current",
        key = "e",
        key_format = "[%s]"
      },
      {
        icon = " ",
        desc = "Search files",
        action = "Telescope",
        key = "t",
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
        icon = "󰦩 ",
        desc = "LSPs",
        action = "Mason",
        key = "m",
        key_format = "[%s]"
      },
      {
        icon = "󰐱 ",
        desc = "Plugins",
        action = "Lazy",
        key = "l",
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
        action = "silent exec '!firefox -new-tab https://github.com/simonkovtyk > /dev/null 2>&1'",
        key = "g",
        key_format = "[%s]"
      }
    }
  }
}

return {
  "nvimdev/dashboard-nvim",
  opts = options,
  cond = function()
    return vim.fn.argc() == 0
  end
}
