local lazy = {}

function lazy.install(path)
    if not (vim.uv or vim.loop).fs_stat(path) then
        local out = vim.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazy.repo, path }):wait()
        if out.code ~= 0 then
            vim.api.nvim_echo({
                { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
                { out.stderr,                     "WarningMsg" },
                { "\nPress any key to exit..." },
            }, true, {})
            vim.fn.getchar()
            os.exit(1)
        end
    end
end

function lazy.setup()
    if vim.g.plugins_ready then
        return
    end

    --lazy.install(lazy.path)

    vim.opt.rtp:prepend(lazy.path)
    require("lazy").setup(lazy.opts)
    vim.g.plugins_ready = true
end

lazy.path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
lazy.repo = "https://github.com/folke/lazy.nvim.git"
lazy.opts = {
    spec = { import = "plugins" },
    install = { colorscheme = { "habamax" } },
    checker = { enabled = false },
}
lazy.setup()
