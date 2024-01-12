return {
    "nvim-tree/nvim-tree.lua",
    version = "1.*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        hijack_cursor = true,
        sort = {
            sorter = "case_sensitive",
            folders_first = true,
        },
        view = {
            width = 40,
            number = true,
            relativenumber = true,
        },
        renderer = {
            add_trailing = true,
            hidden_display = "simple"
        },
        on_attach = function(bufnr)
            local api = require("nvim-tree.api")

            local function opts(desc)
                return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
            end

            local jump_to_buf = function()
                local tabno = vim.api.nvim_get_current_tabpage()
                local winno = vim.api.nvim_tabpage_list_wins(tabno)
                --local bufno = vim.api.nvim_win_get_buf(winno)
                print(vim.inspect(winno))
            end

            api.config.mappings.default_on_attach(bufnr)
            vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
            vim.keymap.set('n', '<ESC>', '<C-W><C-P>', opts('jump to last accessed window'))
        end
    }
}
