-- lualine
require('lualine').setup({
    options = {
        icons_enabled = false,
        component_separators = '',
        section_separators = '',
    }
})

-- indent-blankline
require("ibl").setup()

-- treesitter
require('nvim-treesitter.configs').setup({
    ensure_installed = { "c", "lua", "haskell", "vimdoc", "vim" },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
})

-- comment
require('Comment').setup()

-- nvim-tree
require("nvim-tree").setup({
    hijack_cursor = true,
    on_attach = function(bufnr)
        local bufmap = function(lhs, rhs, desc)
            vim.keymap.set('n', lhs, rhs, {buffer = bufnr, desc = desc})
        end

        local api = require('nvim-tree.api')
        api.config.mappings.default_on_attach(bufnr)

        bufmap('L', api.node.open.edit, 'Expand folder or go to file')
        bufmap('H', api.node.navigate.parent_close, 'Close parent folder')
        bufmap('gh', api.tree.toggle_hidden_filter, 'Toggle hidden files')
    end
})
