TextEdit = function ()
    vim.opt_local.spell = true
    vim.opt_local.textwidth = 79
    vim.opt_local.formatoptions = "jtcroqan2"
    vim.opt_local.cinwords = ""
    vim.opt_local.sidescrolloff = 0
    vim.api.nvim_win_set_option(0, "sidescrolloff", 0)
end

vim.api.nvim_create_user_command("TextEdit", TextEdit, { desc = "TextEdit" })
