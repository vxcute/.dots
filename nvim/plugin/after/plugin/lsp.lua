require('lsp-zero')
require('lspconfig').clangd.setup({})
require('lspconfig').rust_analyzer.setup({})
require('lspconfig').gopls.setup({})

local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
  local opts = {buffer = bufnr}

  vim.keymap.set({'n', 'x'}, 'gq', function()
    local range = vim.fn.visualmode() == 'V' and {vim.fn.line('\'<'), vim.fn.line('\'>')} or nil
    vim.lsp.buf.range_format(range, {async = false, timeout_ms = 10000})
  end, opts)

  vim.keymap.set({'n', 'x'}, 'gw', function()
    vim.lsp.buf.format({async = false, timeout_ms = 10000})
  end, opts)
end)

