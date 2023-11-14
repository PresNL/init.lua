-- Lua:
-- For dark theme (neovim's default)
vim.o.background = 'dark'
-- For light theme

local c = require('vscode.colors').get_colors()
require('vscode').setup({
    -- Alternatively set style in setup
    -- style = 'dark'

    -- Enable transparent background
    transparent = true,

    -- Enable italic comment
    italic_comments = false,

    -- Disable nvim-tree background color
    disable_nvimtree_bg = true,

    -- Override highlight groups (see ./lua/vscode/theme.lua)
    group_overrides = {
        -- this supports the same val table as vim.api.nvim_set_hl
        -- use colors from this colorscheme by requiring vscode.colors!
        Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
    }
})
require('vscode').load()

function UpdateColors()
    vim.api.nvim_set_hl(0, 'QuickScopePrimary', {fg='#afff5f', gui=underline, ctermfg=155})
    vim.api.nvim_set_hl(0, 'QuickScopeSecondary', {fg='#8ccc4b', gui=underline, ctermfg=81})
end

UpdateColors()
