local Remap = require('j-ace-svg.keymap')
local nnrm = Remap.nnoremap
local ca = Remap.ca

nnrm('<Leader>gs', ':Git status<CR>', { silent = true })
nnrm('<Leader>gl', ':Git log<CR>', { silent = true })
nnrm('<Leader>gd', ':Git diff<CR>', { silent = true })
nnrm('<Leader>gb', ':Git blame<CR>', { silent = true })
nnrm('<Leader>g<Leader>', ':Git<CR>', { silent = true })

nnrm('<Leader>gc', ':Git commit ')
nnrm('<Leader>gp', ':Git push -u ')
nnrm('<Leader>gu', ':Git pull ')
nnrm('<Leader>ga', ':Git add ')
nnrm('<Leader>gA', ':Git add % ')
nnrm('<Leader>gb', ':Git branch ')
nnrm('<Leader>go', ':Git checkout ')

ca('g', 'Git')
ca('gd', 'Git diff')
ca('gls', 'Git ls-files')
ca('gsh', 'Git stash')
