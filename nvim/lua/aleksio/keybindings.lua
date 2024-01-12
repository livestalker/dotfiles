-- n: Normal mode.
-- i: Insert mode.
-- x: Visual mode.
-- s: Selection mode.
-- v: Visual + Selection.
-- t: Terminal mode.
-- o: Operator-pending.
-- '': Yes, an empty string. Is the equivalent of n + v + o

vim.keymap.set('i', 'jk', '<esc>', {desc = 'Exit from insert mode', silent = true})
vim.keymap.set('n', '<leader><space>', ':nohlsearch<cr>', {desc = 'Stop hl', silent = true})
vim.keymap.set({'n', 'x'}, 'x', '"_x')
-- vim.keymap.set('n', '<F2>', '<cmd>Lexplore<cr>')

-- nvim-tree
vim.keymap.set('n', '<F2>', '<cmd>NvimTreeToggle<cr>')
