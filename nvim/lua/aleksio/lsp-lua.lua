local root_files = {
    '.luarc.json',
    '.luarc.jsonc',
    '.luacheckrc',
    '.stylua.toml',
    'stylua.toml',
    'selene.toml',
    'selene.yml',
}


local plugin_path = function(name)
    return vim.fn.stdpath("data") .. "/lazy/" .. name
end

vim.api.nvim_create_autocmd('FileType', {
    pattern = 'lua',
    callback = function(args)
        -- vim.lsp.set_log_level("DEBUG")
        vim.lsp.start({
            name = 'lsp-lua',
            cmd = { 'lua-language-server' },
            root_dir = vim.fs.root(args.buf, root_files),
            settings = {
                Lua = {
                    runtime = {
                        version = 'LuaJIT',
                    },
                    workspace = {
                        checkThirdParty = false,
                        library = {
                            vim.env.VIMRUNTIME,
                            plugin_path("nvim-tree.lua"),
                            -- "${3rd}/luv/library",
                            -- "${3rd}/busted/library",
                        }
                    },
                    telemetry = {
                        enable = false
                    },
                    completion = {
                        keywordSnippet = "Disable"
                    }
                }
            }
        })
    end
})
