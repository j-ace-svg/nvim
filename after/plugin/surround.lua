local Remap = require('j-ace-svg.keymap')
local nnrm = Remap.nnoremap
local inrm = Remap.inoremap
local surround = require('nvim-surround')
local config = require('nvim-surround.config')

surround.setup({

})

inrm("<C-s>", "<C-g>u<Plug>(nvim-surround-insert)")
inrm("<C-s><C-s>", "<C-g>u<Plug>(nvim-surround-insert-line)")

-- Quick access auto-surrounds
local surround_fun = function(opening, closing)
    return function()
        local win = vim.api.nvim_get_current_win()
        local byte_index = vim.api.nvim_win_get_cursor(win)[2]
        local line = vim.api.nvim_get_current_line():sub(byte_index + 1, byte_index + 1)
        if closing == line then
            return "<Right>"
        else
            return opening .. closing .. "<C-g>U<Left>"
        end
    end
end

inrm("<C-b>", surround_fun("(", ")"), {expr = true})
inrm("<C-l>", surround_fun("[", "]"), {expr = true})
inrm("<C-f>", surround_fun("{", "}"), {expr = true})
