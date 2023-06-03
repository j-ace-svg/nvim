local Remap = require("j-ace-svg.keymap")
local nnrm = Remap.nnoremap
local inrm = Remap.inoremap
local onrm = Remap.onoremap
local cnrm = Remap.cnoremap
local vnrm = Remap.vnoremap
local nmap = Remap.nmap
local ia = Remap.ia
local ca = Remap.ca

nnrm("<Leader><Space>", "<Space>")
nnrm("<Leader>;", ":")

-- Insert Mode
inrm("jk", "<Right><Esc>")
inrm("kj", "<Right><Esc>")
inrm("GG", "<Esc>bgUiwea")
inrm("<C-t>", function()
    local win = vim.api.nvim_get_current_win()
    local byte_index = vim.api.nvim_win_get_cursor(win)[2]
    local line = vim.api.nvim_get_current_line():sub(byte_index, byte_index + 1)
    if "()" == line or "[]" == line or "{}" == line then
        return "<C-m><C-m><C-g>U<Up><C-f>"
    else
        return "<C-m>"
    end
end, {expr = true})
inrm("<C-c>", "<C-t>")

-- Text input modes
-- lnoremap("<C-j>", "<CR>")

-- Abbreviations
-- To be added
ia("cmd", "command")
ia("<lt>L", "<lt>Leader")
ca("v", "vert")
ca("b", "bel")
ca("sp", "split")

-- Normal Mode
nnrm("J", "5j")
nnrm("K", "5k")
nnrm("<C-d>", "<C-d>zz")
nnrm("<C-u>", "<C-u>zz")
nnrm("gh", "^")
nnrm("gl", "$")
nnrm("<Leader>J", "mzJ`z")

-- Operator Pending Mode
onrm(",", "^")
onrm(".", "$")

-- Generic Leader Mappings
nnrm("<Leader>w", ":w<CR>", {silent = true})
nnrm("<Leader>W", ":wa<CR>", {silent = true})
nnrm("<Leader>q", ":q<CR>", {silent = true})
nnrm("<Leader>Q", ":q!<CR>", {silent = true})
nnrm("<Leader>o", ":wq<CR>", {silent = true})
nnrm("<Leader>O", ":wqa<CR>", {silent = true})
nnrm("<Leader>e", ":Ex<CR>", {silent = true})
nnrm("<Leader>E", ":Vex!<CR>", {silent = true})
nnrm("<Leader>/", ":noh<CR>", {silent = true})
nnrm("<Leader>s", ":s/")
vnrm("<Leader>s", ":<BS><BS><BS><BS><BS>%s/\\%V")
nnrm("<Leader>S", ":%s/")
vnrm("<Leader>S", ":%s/")
nnrm("<Leader>h", ":help<Space>")
nnrm("<Leader>l", ":lua<Space>")
nnrm("<Leader>r<Space>", ":source<Space>")
nnrm("<Leader>re", ":source<CR>")

-- Terminal
nnrm("<Leader>te", ":!")
nnrm("<Leader>tt", ":terminal<CR>i", {silent = true})

-- Command Mode
-- cnrm("<C-t>", "<C-m>") -- Done in Fugitive config
