require('lsp-zero')
require('lspconfig').clangd.setup({})
require('lspconfig').rust_analyzer.setup({})
require('lspconfig').gopls.setup({})

local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

lsp_zero.format_on_save({
  format_opts = {
    async = false,
    timeout_ms = 10000,
  },
  servers = {
    ['rust_analyzer'] = {'rust'}, 
    ['gofmt'] = {'go'},
    ['clangd'] = {'c', 'cpp'}
  }
})
