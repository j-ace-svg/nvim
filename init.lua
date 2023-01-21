vim.cmd([[
  set runtimepath^=~/Practice-Site/.githiddenfiles/.vim
  set runtimepath^=~/Practice-Site/.githiddenfiles/.dotfiles/nvim/.config/nvim
  set runtimepath^=~/Practice-Site/.githiddenfiles/.dotfiles/nvim/.config/nvim/after
  let &packpath = &runtimepath
]])
require("j-ace-svg")
vim.opt.undodir = vim.fn.expand("~/Practice-Site/.githiddenfiles/.vim/undo-dir")
