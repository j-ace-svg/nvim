return {
    'stevearc/oil.nvim',
    opts = {
        default_file_explorer = false,
        keymaps = {
            ["L"] = "actions.select",
            ["H"] = "actions.parent",
            ["J"] = "j",
            ["K"] = "k",
        }
    },
    config = function (opts)
        local Remap = require("j-ace-svg.keymap")
        local nnrm = Remap.nnoremap
        local oil = require("oil")

        oil.setup(opts)

        nnrm("<Leader>e", oil.open)
        nnrm("<Leader>E", "<C-w>v:Oil<CR>", { silent = true })
    end,
}
