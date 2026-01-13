vim.diagnostic.config({
  virtual_text = true,
  update_in_insert = true,
  severity_sort = true,
  float = {
    border = "rounded",
    source = "always",
    header = "",
    prefix = ""
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN] = "",
      [vim.diagnostic.severity.INFO] = "",
      [vim.diagnostic.severity.HINT] = "",
    },
    numhl = {
      [vim.diagnostic.severity.ERROR] = "DiagnosticErrorNum",
      [vim.diagnostic.severity.WARN] = "DiagnosticWarnNum",
      [vim.diagnostic.severity.INFO] = "DiagnosticInfoNum",
      [vim.diagnostic.severity.HINT] = "DiagnosticHintNum",
    },
    linehl = {
      [vim.diagnostic.severity.ERROR] = "DiagnosticErrorLine",
      [vim.diagnostic.severity.WARN] = "DiagnosticWarnLine",
      [vim.diagnostic.severity.INFO] = "DiagnosticInfoLine",
      [vim.diagnostic.severity.HINT] = "DiagnosticHintLine",
    }
  }
})

vim.o.title = false
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.softtabstop = 2
vim.o.number = true
vim.o.list = false
vim.o.termguicolors = true
vim.o.guicursor = "a:block-Cursor"
vim.o.cursorline = true
vim.o.shell = "fish"
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.showcmd = true
vim.o.cmdheight = 1
vim.o.laststatus = 3
vim.o.encoding = "utf-8"
vim.o.fileencoding = "utf-8"
vim.o.fillchars = "eob:~"
vim.o.relativenumber = true
vim.o.signcolumn = "yes:1"
vim.o.completeopt = "menu,menuone,noselect"
vim.o.mouse = ""
vim.o.fileformats = "unix"
vim.o.clipboard = "unnamedplus"
vim.o.ruler = false
vim.o.ignorecase = true
vim.o.inccommand = "split"
vim.o.showcmd = true
vim.o.showmode = false
-- vim.o.cmdheight = 0
vim.g.loaded_perl_provider = false
vim.g.loaded_ruby_provider = false
vim.g.loaded_node_provider = false
vim.g.did_install_default_menus = true
vim.g.loaded_gzip = false
vim.g.loaded_matchit = false
vim.g.loaded_netrwPlugin = false
vim.g.loaded_tarPlugin = false
vim.g.loaded_zipPlugin = false
vim.g.loaded_man = false
vim.g.loaded_2html_plugin = false
vim.g.loaded_remote_plugins = false
vim.g.rust_recommended_style = false
