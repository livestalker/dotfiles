-- n:  Normal mode.
-- i:  Insert mode.
-- x:  Visual mode.
-- s:  Selection mode.
-- v:  Visual + Selection.
-- t:  Terminal mode.
-- o:  Operator-pending.
-- '': An empty string. Is the equivalent of n + v + o

vim.keymap.set('i', 'jk', '<esc>', { desc = 'exit from insert mode', silent = true })
vim.keymap.set('n', '<leader><space>', ':nohlsearch<cr>', { desc = 'stop hl', silent = true })
vim.keymap.set({ 'n', 'x' }, 'x', '"_x', { desc = 'delete in black hole register' })
vim.keymap.set('n', '<leader>e', '<C-^>', { desc = "switch to alternate buffer" })
vim.keymap.set('n', '<leader>lf', ':luafile %<CR>', { desc = "execute lua file", silent = true })
vim.keymap.set('n', '<leader>m', ':messages<CR>', { desc = "open messages area", silent = true })
vim.keymap.set('i', '<C-Space>', '<C-X><C-O>', { desc = "omni completion", silent = true })

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'telescope [f]ind [f]iles' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'telescope [f]ind [b]uffers' })
vim.keymap.set('n', '<leader>fj', builtin.jumplist, { desc = 'telescope [f]ind [j]umps' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope [f]ind live [g]rep' })
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- nvim tree
local nvim_tree_api = require('nvim-tree.api')

local custom_toggle = function()
    local in_tree = nvim_tree_api.tree.is_tree_buf()
    if in_tree then
        nvim_tree_api.tree.close()
        return
    end
    local tab = vim.api.nvim_get_current_tabpage()
    local visible = nvim_tree_api.tree.is_visible({ tabpage = tab })
    if not visible then
        nvim_tree_api.tree.open({ focus = true })
    else
        nvim_tree_api.tree.focus()
    end
end

local custom_find_file = function()
    nvim_tree_api.tree.find_file({ focus = true })
end

vim.keymap.set('n', '<leader>1', custom_toggle, { desc = 'open nvim tree' })
vim.keymap.set('n', '<leader>t', custom_find_file, { desc = 'open nvim tree' })
