local Remap = require('j-ace-svg.keymap')
local nnrm = Remap.nnoremap
local cnrm = Remap.cnoremap
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

local git_at_start = function(abbr_list, trigger) -- Only expand Git abbreviation at the start of the line
    return function()
        local total_str = ""
        local byte_index = vim.fn.getcmdpos() - 1
        for abbreviation, expansion in pairs(abbr_list) do
            local abbr_len = abbreviation:len()
            if vim.fn.getcmdline():sub(byte_index - abbr_len, byte_index) == abbreviation and byte_index == abbr_len then
                return string.rep("<BS>", abbr_len) .. expansion .. trigger
            end
            total_str = total_str ..  vim.fn.getcmdline():sub(byte_index, byte_index - abbreviation:len())
        end
        return trigger
    end
end

local git_abbreviations = {
    ["g"] = "Git",
    -- ["ga"] = "Git add",
    -- ["gA"] = "Git add %",
    -- ["gb"] = "Git branch",
    -- ["gc"] = "Git commit",
    ["gd"] = "Git diff",
    ["gls"] = "Git ls-files",
    ["gsh"] = "Git stash",
    -- ["gp"] = "Git push -u ",
    -- ["gu"] = "Git pull",
    -- ["go"] = "Git checkout",
}
cnrm(' ', git_at_start(git_abbreviations, ' '), { expr = true })
cnrm('<C-m>', git_at_start(git_abbreviations, '<C-m>'), { expr = true })
cnrm('<C-j>', git_at_start(git_abbreviations, '<C-j>'), { expr = true })
cnrm('<C-t>', git_at_start(git_abbreviations, '<C-m>'), { expr = true })
-- ca('gd', 'Git diff')
-- ca('gls', 'Git ls-files')
-- ca('gsh', 'Git stash')
