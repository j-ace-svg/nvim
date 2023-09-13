return {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    --ft = "neorg",
    dependencies = {"nvim-treesitter", "telescope.nvim"},
    opts = {
        load = {
            ["core.defaults"] = {}, -- Loads default behaviour
            ["core.concealer"] = {}, -- Adds pretty icons to your documents
            ["core.dirman"] = { -- Manages Neorg workspaces
                config = {
                    workspaces = {
                        school = "~/Notes/school",
                        personal = "~/Notes/personal",
                    },
                },
            },
        },
    }
}
