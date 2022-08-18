require("legendary").setup()

local opts = { noremap = true, silent = true }

-- Nvim-tree
vim.keymap.set("n", "<C-n>", "<cmd> NvimTreeToggle<CR>")
vim.keymap.set("n", "<F3>", "<cmd> NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>e", "<cmd> NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>f", "<cmd> NvimTreeFindFile<CR>")

-- Show / search keymaps
vim.keymap.set("n", "<Leader>km", "<cmd>Legendary keymaps<CR>")

-- Telescope
vim.keymap.set("n", "<Leader>ff", "<cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<Leader>fa", "<cmd>Telescope find_files follow=true hidden=true<CR>")
vim.keymap.set("n", "<Leader>fw", "<cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "<Leader>fb", "<cmd>Telescope buffers<CR>")
vim.keymap.set("n", "<Leader>fh", "<cmd>Telescope help_tags<CR>")
vim.keymap.set("n", "<Leader>fe", "<cmd>Telescope oldfiles<CR>")
vim.keymap.set("n", "<Leader>fc", "<cmd>Telescope colorscheme<CR>")

-- LSP
vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, opts)

local keymaps_module = {}
keymaps_module.lsp_mapping = function(client, bufnr)
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  --    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  --    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  --    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  --    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  --    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  --    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  --    vim.keymap.set('n', '<space>wl', function()
  --        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  --    end, bufopts)
  --    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  --    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  --    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
  vim.keymap.set("n", "<C-l>", vim.lsp.buf.format, bufopts)
  vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
  vim.keymap.set("n", "<leader>gr", "<cmd>Telescope lsp_references<CR>", bufopts)
  vim.keymap.set("n", "<F7>", "<cmd>Telescope treesitter<CR>", bufopts)
end

--	["gD"] = { "<cmd> Telescope lsp_type_definitions<CR>", "Type definition" },
--	["gd"] = { "<cmd> Telescope lsp_definitions<CR>", "Definition" },
--	["gp"] = { "<cmd>Lspsaga preview_definition<CR>", "Preview definition" },
--	["gi"] = { "<cmd> Telescope lsp_implementations<CR>", "Implementation" },
--	["gr"] = { "<cmd> Telescope lsp_references<CR>", "References" },
--	["gc"] = { "<cmd> Telescope lsp_incoming_calls<CR>", "In calls" },
--	["go"] = { "<cmd> Telescope lsp_outgoing_calls<CR>", "Out calls" },
--	["K"] = { "<cmd>Lspsaga hover_doc<CR>", "Hover" },
--	["<C-k>"] = { "<cmd>Lspsaga signature_help<CR>", "Signature info" },
--	["<Leader>ca"] = { vim.lsp.buf.code_action, "Code action" },
--	["<Leader>rca"] = { vim.lsp.buf.range_code_action, "Range code action" },
--	["<Leader>rn"] = { vim.lsp.buf.rename, "Rename" },
--	["<Leader>ss"] = { "<cmd> Telescope lsp_dynamic_workspace_symbols<CR>", "Show symbols" },
--	["<Leader>sd"] = { "<cmd> Telescope treesitter<CR>", "Show document symbols" },

-- Terminal
--vim.keymap.set("t", "<C-x>", [[<C-\><C-n>]], {}) -- move terminal into normal mode
--wk.register({ [",tt"] = { "<cmd>FloatermToggle<CR>", "Toggle terminal" } }, { mode = "n" })
--wk.register({ [",tt"] = { "<cmd>FloatermToggle<CR>", "Toggle terminal" } }, { mode = "t" })
--wk.register({ [",tn"] = { "<cmd>FloatermNext<CR>", "Next terminal" } }, { mode = "t" })
--wk.register({ [",tp"] = { "<cmd>FloatermPrev<CR>", "Prev terminal" } }, { mode = "t" })
--wk.register({ [",tc"] = { "<cmd>FloatermNew<CR>", "New terminal" } }, { mode = "n" })
--wk.register({ [",tc"] = { "<cmd>FloatermNew<CR>", "New terminal" } }, { mode = "t" })

-- Marks / harpoon
--wk.register({
--	["<Leader>ms"] = { "<cmd>Telescope harpoon marks<CR>", "Show marks" },
--	["<Leader>ma"] = { require("harpoon.mark").add_file, "Add mark" },
--	["<Leader>mn"] = { require("harpoon.ui").nav_next, "Next mark" },
--	["<Leader>mp"] = { require("harpoon.ui").nav_prev, "Prev mark" },
--})

-- Barbar
--wk.register({
--	["<C-p>"] = { "<cmd>BufferPick<CR>", "Pick buffer" },
--}, { mode = "n" })
--

-- Code / lsp mappings (visual mode)
--wk.register({
--	["<Leader>rca"] = { vim.lsp.buf.range_code_action, "Range code action" },
--}, { mode = "v" })
--

-- Bufdelete
-- Remap bd to Bdelete to close buffer and preserve it's window
vim.cmd("cnoreabbrev bd Bdelete")
vim.cmd("cnoreabbrev bdelete Bdelete")

-- Avoid neovim bug when it refuses to close when there are terminal buffers
--vim.cmd("command Z wa | qa")
--vim.cmd("cabbrev wqa Z")

return keymaps_module
