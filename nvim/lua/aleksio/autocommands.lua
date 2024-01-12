local api = vim.api

local tempdirgroup = api.nvim_create_augroup('tempdir', { clear = true })
api.nvim_create_autocmd('BufWritePre', {
    pattern = '/tmp/*',
    group = tempdirgroup,
    callback = function()
        vim.cmd.setlocal('noundofile')
    end,
})

local numbertoggle = api.nvim_create_augroup('numbertoggle', { clear = true })
api.nvim_create_autocmd({ 'BufEnter', 'FocusGained', 'InsertLeave', 'CmdlineLeave', 'WinEnter' }, {
    pattern = '*',
    group = numbertoggle,
    callback = function()
        if vim.o.nu and api.nvim_get_mode().mode ~= 'i' then
            vim.opt.relativenumber = true
        end
    end,
})

api.nvim_create_autocmd({ 'BufLeave', 'FocusLost', 'InsertEnter', 'CmdlineEnter', 'WinLeave' }, {
    pattern = '*',
    group = numbertoggle,
    callback = function()
        if vim.o.nu then
            vim.opt.relativenumber = false
            vim.cmd.redraw()
        end
    end,
})

local nospell_group = api.nvim_create_augroup('nospell', { clear = true })
api.nvim_create_autocmd('TermOpen', {
    group = nospell_group,
    callback = function()
        vim.wo[0].spell = false
    end,
})

local lsp_augroup = vim.api.nvim_create_augroup('UserLspConfig', {})
vim.api.nvim_create_autocmd('LspAttach', {
    group = lsp_augroup,
    callback = function(ev)
        local bufnr = ev.buf
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if not client then
            return
        end
        if client.server_capabilities.documentSymbolProvider then
            require('nvim-navic').attach(client, bufnr)
        end
    end
})
