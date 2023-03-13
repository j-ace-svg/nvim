local Remap = require('j-ace-svg.keymap')
local nnrm = Remap.nnoremap
local inrm = Remap.inoremap
local cnrm = Remap.cnoremap
local surround = require('nvim-surround')
local config = require('nvim-surround.config')

surround.setup({

})

inrm("<C-s>", "<C-g>u<Plug>(nvim-surround-insert)")
inrm("<C-s><C-s>", "<C-g>u<Plug>(nvim-surround-insert-line)")

-- Quick access auto-surrounds
local surround_fun_ins = function(opening, closing)
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

local surround_fun_com = function(opening, closing)
    return function()
        local byte_index = vim.fn.getcmdpos()
        local line = vim.fn.getcmdline():sub(byte_index, byte_index)
        if closing == line then
            return "<Right>"
        else
            return opening .. closing .. "<Left>"
        end
    end
end

inrm("<C-b>", surround_fun_ins("(", ")"), {expr = true})
inrm("<C-l>", surround_fun_ins("[", "]"), {expr = true})
inrm("<C-f>", surround_fun_ins("{", "}"), {expr = true})

cnrm("<C-b>", surround_fun_com("(", ")"), {expr = true})
cnrm("<C-l>", surround_fun_com("[", "]"), {expr = true})
cnrm("<C-f>", surround_fun_com("{", "}"), {expr = true})
