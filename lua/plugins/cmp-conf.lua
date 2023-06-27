local lspkind = require('lspkind')
local cmp = require('cmp')

cmp.setup {
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    -- { name = 'vsnip' }, -- For vsnip users.
    -- { name = 'luasnip' }, -- For luasnip users.
    -- { name = 'ultisnips' }, -- For ultisnips users.
    -- { name = 'snippy' }, -- For snippy users.
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

