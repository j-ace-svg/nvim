local Remap = require('j-ace-svg.keymap')
local nnrm = Remap.nnoremap

nnrm("<Leader>e", ":Vifm<CR>", {silent = true})
