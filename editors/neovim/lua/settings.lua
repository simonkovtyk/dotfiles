vim.opt.title = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2
vim.cmd("set number")
vim.o.list = true
vim.o.listchars="eol: ,trail:-,tab:--,nbsp:␣"
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
vim.cmd("set relativenumber")

vim.api.nvim_set_option("clipboard","unnamedplus")

vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true
})

