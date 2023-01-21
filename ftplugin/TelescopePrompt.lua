local Remap = require('j-ace-svg.keymap')
local nnrm = Remap.nnoremap
local inrm = Remap.inoremap

nnrm('<C-c>', ':q!<CR>', {buffer = true, silent = true})
nnrm('<Leader>q', ':q!<CR>', {buffer = true, silent = true})
