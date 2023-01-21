local Remap = require('j-ace-svg.keymap')
local nnrm = Remap.nnoremap
local builtin = require('telescope.builtin')

nnrm('<Leader>pf', builtin.find_files)
nnrm("<Leader>ps", function()
    builtin.grep_string({ search = vim.fn.input("Grep For > ") });
end)
