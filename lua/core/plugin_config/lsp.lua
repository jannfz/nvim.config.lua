local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

---
-- Replace these language servers
-- with the ones you have installed in your system
---
require('lspconfig').lua_ls.setup({})
require('lspconfig').clangd.setup({})
require('lspconfig').vhdl_ls.setup({})
require('lspconfig').arduino_language_server.setup({})
