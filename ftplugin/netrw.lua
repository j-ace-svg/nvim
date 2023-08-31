local Remap = require('j-ace-svg.keymap')
local nnrm = Remap.nnoremap
local inrm = Remap.inoremap

nnrm('h', '<Plug>NetrwBrowseUpDir', {buffer = true, silent = true})
nnrm('l', '<Plug>NetrwLocalBrowseCheck', {buffer = true, silent = true})
