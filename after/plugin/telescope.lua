local Remap = require('j-ace-svg.keymap')
local nnrm = Remap.nnoremap
local builtin = require('telescope.builtin')
local utils = require('telescope.utils')

nnrm('<Leader>pf', function()
    builtin.find_files({ hidden = true, respect_gitignore = true, cwd = utils.buffer_dir() });
end)
nnrm('<Leader>pg', function()
    builtin.git_files({ hidden = true, respect_gitignore = true });
end)
nnrm("<Leader>ps", function()
    builtin.grep_string({ search = vim.fn.input("Grep For > ") });
end)
