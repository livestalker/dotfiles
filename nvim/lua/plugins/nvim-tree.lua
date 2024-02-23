return {
    'nvim-tree/nvim-tree.lua',
    version='*',
    lazy=false,
    dependencies={"nvim-tree/nvim-web-devicons"},
    config = function()
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
        vim.keymap.set('n', '<F2>', '<cmd>NvimTreeToggle<cr>')
    end
}
