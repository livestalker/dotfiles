return {
    'nvim-treesitter/nvim-treesitter',
    build=':TSUpdate',
    config = function()
        require('nvim-treesitter.configs').setup({
            ensure_installed = { "c", "lua", "haskell", "vimdoc", "vim" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
