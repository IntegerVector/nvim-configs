require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
    disable = {}
  },
  indent = {
    enable = true,
    disable = { 'yaml' }
  },
  ensure_installed = {
    'html',
    'css',
    'scss',
    'json',
    'c',
    'cpp',
    'python',
    'javascript',
    'typescript',
    'vue',
    'rust',
    'lua',
    'sql',
    'markdown',
    'markdown_inline',
    'bash'
  },
  autotag = {
    enable = true
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
    query = 'rainbow-parens',
    strategy = require('ts-rainbow').strategy.global
  }
}

