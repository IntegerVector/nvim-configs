local lspkind = require('lspkind')
local cmp = require('cmp')

cmp.setup {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' }
  }, {
    { name = 'buffer' }
  }),
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol',
      maxwidth = 50,
      ellipsis_char = '...'
    })
  },
  mapping = cmp.mapping.preset.insert({
   ['<leader>c'] = cmp.mapping.complete(),
   ['q'] = cmp.mapping.abort(),
   ['<CR>'] = cmp.mapping.confirm({ select = true })
  })
}

