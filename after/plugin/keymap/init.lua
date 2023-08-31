local Remap = require("j-ace-svg.keymap")
local nnrm = Remap.nnoremap
local inrm = Remap.inoremap
local onrm = Remap.onoremap
local cnrm = Remap.cnoremap
local vnrm = Remap.vnoremap
local tnrm = Remap.tnoremap
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
nnrm("g,", "^")
nnrm("g.", "$")
nnrm("<C-d>", "<C-d>zz")
nnrm("<C-u>", "<C-u>zz")
nnrm("gh", "^")
nnrm("gl", "$")
nnrm("<C-m>", ":")
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
-- nnrm("<Leader>e", ":Ex<CR>", {silent = true})
nnrm("<Leader>E", ":Vex!<CR>", {silent = true})
nnrm("<Leader>/", ":noh<CR>", {silent = true})
nnrm("<Leader>s", ":s/")
vnrm("<Leader>s", ":<C-u>%s/\\%V")
nnrm("<Leader>S", ":%s/")
vnrm("<Leader>S", ":%s/")
nnrm("<Leader>H", ":help<Space>")
nnrm("<Leader>l", ":lua<Space>")
nnrm("<Leader>cht", ":vs https://cht.sh/?T<Left><Left>")
nnrm("<Leader>br", ":call OpenWebBrowser(\"https://duckduckgo.com/?q=\", 0)<left><left><left><left><left>")
nnrm("<Leader>bt", ":call OpenWebBrowser(\"https://duckduckgo.com/?q=\", 1)<left><left><left><left><left>")
nnrm("<Leader>bv", ":call OpenWebBrowser(\"https://duckduckgo.com/?q=\", 1)<left><left><left><left><left>")
nnrm("<Leader>bs", ":exe 'WebBrowser https://duckduckgo.com/?q=\"' . input(\"Search \") . '\"'<CR>")
nnrm("<Leader>r<Space>", ":source<Space>")
nnrm("<Leader>re", ":source<CR>")

-- Tab Management
nnrm("<C-p>c", ":tabnew<CR>", { silent = true })
nnrm("<C-p>t", ":tabnew<CR>:terminal<CR>i", { silent = true })
nnrm("<C-p>n", ":tabnext<CR>", { silent = true })
nnrm("<C-p>p", ":tabprev<CR>", { silent = true })
nnrm("<C-p>q", ":tabclose<CR>", { silent = true })
nnrm("<C-p><C-c>", ":tabnew<CR>", { silent = true })
nnrm("<C-p><C-t>", ":tabnew<CR>:terminal<CR>i", { silent = true })
nnrm("<C-p><C-n>", ":tabnext<CR>", { silent = true })
nnrm("<C-p><C-p>", ":tabprev<CR>", { silent = true })
nnrm("<C-p><C-q>", ":tabclose<CR>", { silent = true })

-- Terminal
nnrm("<Leader>te", ":!")
nnrm("<Leader>tt", ":terminal<CR>i", {silent = true})
nnrm("<Leader>tv", "<C-w>v:terminal<CR>i", {silent = true})
nnrm("<Leader>th", ":bel split<CR>:terminal<CR>i", {silent = true})
tnrm("<C-Space>", "<C-\\><C-n>")
nnrm("<Leader>tp", function ()
    local bufs = vim.api.nvim_list_bufs()
    local term
    local curbuf = vim.api.nvim_get_current_buf()
    for _, buf in pairs(bufs) do
        if vim.fn.getbufvar(buf, "&buftype") == "terminal" then
            if buf >= curbuf and term and term < curbuf then
                return (":b " .. term .. "<CR>")
            end
            term = buf
        end
    end
    if term then return (":b " .. term .. "<CR>") end
end, { expr = true, silent = true })
nnrm("<Leader>tn", function ()
    local bufs = vim.api.nvim_list_bufs()
    local term
    local curbuf = vim.api.nvim_get_current_buf()
    for _, buf in pairs(bufs) do
        if vim.fn.getbufvar(buf, "&buftype") == "terminal" then
            if not term then term = buf end
            if buf > curbuf then
                return (":b " .. buf .. "<CR>")
            end
        end
    end
    if term then return (":b " .. term .. "<CR>") end
end, { expr = true, silent = true})

-- Command Mode
-- cnrm("<C-t>", "<C-m>") -- Done in Fugitive config
