vim.cmd.colorscheme("gruvbox")

vim.cmd[[
    highlight! link TermCursor Cursor
    highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15
    highlight! @text.emphasis gui=italic
    highlight! @text.strong gui=bold
]]
