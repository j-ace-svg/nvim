local Remap = require('j-ace-svg.keymap')
local nnrm = Remap.nnoremap
local vnrm = Remap.vnoremap
local onrm = Remap.onoremap

nnrm("<Leader>h", ":<C-U>VertigoDown n<CR>")
vnrm("<Leader>h", ":<C-U>VertigoDown v<CR>")
onrm("<Leader>h", ":<C-U>VertigoDown o<CR>")
nnrm("<Leader>u", ":<C-U>VertigoUp n<CR>")
vnrm("<Leader>u", ":<C-U>VertigoUp v<CR>")
onrm("<Leader>u", ":<C-U>VertigoUp o<CR>")
