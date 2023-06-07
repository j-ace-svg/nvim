local Remap = require('j-ace-svg.keymap')
local nnrm = Remap.nnoremap
local config = require('nvim-treesitter.configs')

config.setup({
    ensure_installed = { "c", "lua", "vim", "vimdoc", "json", "yaml", "html", "css", "javascript", "typescript", "tsx", "python", "rust", "go", "bash", "lua", "gdscript", "nix", "php" },

    highlight = {
        enable = true,
        -- disable = function()
        --     local max_filesize = 100 * 1024 -- 100 KB
        --     local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        --     if ok and stats and stats.size > max_filesize then
        --         return true
        --     end
        -- end,
    },
})
