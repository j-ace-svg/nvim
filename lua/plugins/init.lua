return {
    -- Tpope
    "tpope/vim-fugitive",
    -- "tpope/vim-surround",

    -- Theme
    "gruvbox-community/gruvbox",

    -- General
    { "nvim-tree/nvim-web-devicons", lazy = true },
    { "github/copilot.vim", build = ":Copilot setup" },
    "mbbill/undotree",
    { -- If all fails return to tpope vim-surround above
        "kylechui/nvim-surround",
        version = "*"
    },
    --"j-ace-svg/autoclose.nvim",
    { "j-ace-svg/vim-vertigo", dev = true },

    -- File switching
    {
        "nvim-telescope/telescope.nvim",
        dependencies = "nvim-lua/plenary.nvim"
    },
    {
        "ThePrimeagen/harpoon",
        dependencies = "nvim-lua/plenary.nvim"
    },
    "airblade/vim-rooter", -- Change cwd to project root

    -- Replaced with oil.nvim, adding open and up dir bindings solves enough
    --"vifm/vifm.vim",

    -- Fun
    "eandrju/cellular-automaton.nvim",

    -- LSP
    { "nvim-treesitter/nvim-treesitter", build = ":silent TSUpdate" },

    {
        "VonHeikemen/lsp-zero.nvim",
        dependencies = {
            -- LSP Support
            {"neovim/nvim-lspconfig"},
            {
                "williamboman/mason.nvim",
                build = function() pcall("MasonInstall") end
            },
            {"williamboman/mason-lspconfig.nvim"},

            -- Autocompletion
            {"hrsh7th/nvim-cmp"},
            {"hrsh7th/cmp-nvim-lsp"},
            {"hrsh7th/cmp-buffer"},

            -- Snippets
            {"L3MON4D3/LuaSnip"},
            {"rafamadriz/friendly-snippets"},

        }
    },

    -- Debugging
    "mfussenegger/nvim-dap",
    { "jbyuki/one-small-step-for-vimkind", dependencies = {"mfussenegger/nvim-dap"} },

}
