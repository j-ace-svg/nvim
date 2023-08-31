local Remap = require('j-ace-svg.keymap')
local nnrm = Remap.nnoremap
local builtin = require('telescope.builtin')
local utils = require('telescope.utils')

nnrm('<Leader>pf', function()
    builtin.find_files({ hidden = true, respect_gitignore = true });
end)
nnrm('<Leader>pg', function()
    builtin.git_files({ hidden = true, respect_gitignore = true });
end)
nnrm("<Leader>ps", function()
    builtin.grep_string({ search = vim.fn.input("Grep For > ") });
end)
nnrm("<Leader>pb", function()
    builtin.buffers({ show_all_buffers = true });
end)
nnrm("<Leader>pt", function()
    builtin.treesitter();
end)
