function UpdateColors()
    vim.api.nvim_set_hl(0, 'QuickScopePrimary', {fg='#afff5f', gui=underline, ctermfg=155})
    vim.api.nvim_set_hl(0, 'QuickScopeSecondary', {fg='#8ccc4b', gui=underline, ctermfg=81})
end

UpdateColors()
