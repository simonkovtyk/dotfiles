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

vim.diagnostic.config({
  virtual_text = false,
  update_in_insert = true,
  severity_sort = true,
  float = true
})

