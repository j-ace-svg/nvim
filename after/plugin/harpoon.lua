local Remap = require('j-ace-svg.keymap')
local nnrm = Remap.nnoremap
local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

nnrm('<Leader>a', mark.add_file, {silent = true})
nnrm('<C-e>', ui.toggle_quick_menu, {silent = true})
nnrm('<C-h>', function() ui.nav_file(1) end, {silent = true})
nnrm('<C-t>', function() ui.nav_file(2) end, {silent = true})
nnrm('<C-n>', function() ui.nav_file(3) end, {silent = true})
nnrm('<C-s>', function() ui.nav_file(4) end, {silent = true})
