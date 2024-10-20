vim.opt.title = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2
vim.o.number = true
vim.o.list = false
vim.opt.termguicolors = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.guicursor = "n-v-i-c:block-Cursor"
vim.opt.cursorline = true
vim.opt.shell = "fish"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 3
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.o.fillchars = "eob:~"
vim.o.relativenumber = true
vim.o.signcolumn = "yes:1"

vim.diagnostic.config({
  virtual_text = false,
})

vim.api.nvim_set_option("clipboard", "unnamedplus")
