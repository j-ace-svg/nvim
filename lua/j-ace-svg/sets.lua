vim.opt.mouse = "n"

vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undodir = vim.fn.expand("~/.config/.vim/undo-dir")
vim.opt.undofile = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.lazyredraw = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.exrc = true

vim.opt.termguicolors = true
vim.opt.guicursor = ""

vim.opt.splitright = true

vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.sidescroll = 0
vim.opt.sidescrolloff = 8

vim.opt.completeopt = "menuone,noinsert,noselect"

vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"

vim.opt.updatetime = 50

vim.opt.gdefault = true
-- vim.opt.autochdir = true

vim.g.mapleader = " "
