return {
    'akinsho/toggleterm.nvim',
    version = "2.*",
    config = function()
        local opts = {
            size = function(term)
                if term.direction == 'horizontal' then
                    return vim.o.lines / 2
                elseif term.direction == 'vertical' then
                    return vim.o.columns / 2
                end
            end,
            open_mapping = "<F12>",
            hide_numbers = true,
            terminal_mappings = false,
            persist_mode = false
        }
        require('toggleterm').setup(opts)
        -- vim.cmd.set('hidden')
    end
}
