local lazy = {}

function lazy.install(path)
    if not vim.loop.fs_stat(path) then
        vim.fn.system({
            "git",
            "clone",
            "--filter=blob:none",
            "https://github.com/folke/lazy.nvim.git",
            "--branch=stable", -- latest stable release
            path,
        })
    end
end

function lazy.setup(plugins)
    if vim.g.plugins_ready then
        return
    end

    --lazy.install(lazy.path)

    vim.opt.rtp:prepend(lazy.path)
    require("lazy").setup(plugins, lazy.opts)
    vim.g.plugins_ready = true
end

lazy.path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
lazy.opts = {}

lazy.setup({
    {'folke/tokyonight.nvim', lazy=false, priority=1000, opts={}},
    {'nvim-lualine/lualine.nvim'},
    {'lukas-reineke/indent-blankline.nvim', main='ibl', opts={}},
    {'nvim-treesitter/nvim-treesitter', build=':TSUpdate'},
    {'numToStr/Comment.nvim', lazy=false, opts={}},
    {
        'nvim-tree/nvim-tree.lua', 
        version='*', 
        lazy=false, 
        dependencies={"nvim-tree/nvim-web-devicons"}
    }
})
