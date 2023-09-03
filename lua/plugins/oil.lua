return {
    'stevearc/oil.nvim',
    ft = 'neorg',
    config = function ()
        local Remap = require("j-ace-svg.keymap")
        local nnrm = Remap.nnoremap
        local oil = require("oil")

        oil.setup({
            keymaps = {
                ["L"] = "actions.select",
                ["H"] = "actions.parent",
                ["J"] = "j",
                ["K"] = "k",
            }
        })

        nnrm("<Leader>e", oil.open)
        nnrm("<Leader>E", "<C-w>v:Oil<CR>", { silent = true })
    end,
}
