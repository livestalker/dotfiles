local lspconfig = require("lspconfig")
local util = require("lspconfig/util")
local keymaps_module = require("aleksio.keymaps")

local on_attach = function(client, bufnr)
  require("illuminate").on_attach(client)
  keymaps_module.lsp_mapping(client, bufnr)
end

lspconfig.bashls.setup({
  on_attach = on_attach,
})

lspconfig.sumneko_lua.setup({
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})
