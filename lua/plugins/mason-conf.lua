require('mason').setup {
  ui = {
    icons = {
      package_installed = "+",
      package_pending = ".",
      package_uninstalled = "x"
    }
  }
}

local protocol = require('vim.lsp.protocol')
local capabilities = protocol.make_client_capabilities()

local handlers = {
  ['textDocument/publishDiagnostics'] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = false
  })
}

local on_attach = function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', 'ca', vim.lsp.buf.code_action, bufopts)
end

local mason_lsp = require('mason-lspconfig')
mason_lsp.setup()
mason_lsp.setup_handlers {
  function(server_name)
    require('lspconfig')[server_name].setup({
      on_attach = on_attach,
      capabilities = capabilities,
      handlers = handlers
    })
  end
}

