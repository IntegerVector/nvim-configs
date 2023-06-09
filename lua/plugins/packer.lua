local status, packer = pcall(require, 'packer')

if (not status) then
  print('Packer is not installed!')
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'rafi/awesome-vim-colorschemes' -- Color schemes collection
  use 'nvim-lua/popup.nvim' -- Dependency for other plugins
  use 'nvim-lua/plenary.nvim' -- Dependency for other plugins
  use 'nvim-telescope/telescope.nvim' -- File search
  use 'nvim-telescope/telescope-file-browser.nvim' -- File browsing
  use 'nvim-tree/nvim-tree.lua' -- File tree
  use 'nvim-tree/nvim-web-devicons' -- Icons for file tree
  use 'nvim-lualine/lualine.nvim' -- Status bar
  use 'neovim/nvim-lspconfig' -- LSP
  use 'williamboman/mason.nvim' -- LSP setup
  use 'williamboman/mason-lspconfig.nvim' -- helper for previous
  use 'mfussenegger/nvim-dap' -- Debug
  use 'rcarriga/nvim-dap-ui' -- Debug UI
  use 'jay-babu/mason-nvim-dap.nvim' -- Debug with mason helper
  use 'glepnir/lspsaga.nvim' -- LSP tools
  use 'hrsh7th/nvim-cmp' -- LSP based auto complete
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for auto complete
  use 'hrsh7th/cmp-path' -- For file system path auto completion
  use 'onsails/lspkind.nvim' -- VScode-like pictograms
  use 'L3MON4D3/LuaSnip' -- Snippets
  use 'saadparwaiz1/cmp_luasnip' -- Autocompletion with snippets
  use 'brenoprata10/nvim-highlight-colors' -- Highlight colors
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'HiPhish/nvim-ts-rainbow2'
  use 'APZelos/blamer.nvim' -- Git blame
  use 'rhysd/git-messenger.vim' -- Git messenger
end)


-- Order of scripts below might be important, so don't change it!
require 'plugins.color-conf'
require 'plugins.telescope-conf'
require 'plugins.nvim-tree-conf'
require 'plugins.lualine-conf'
require 'plugins.nvim-highlight-colors-conf'
require 'plugins.mason-conf'
require 'plugins.dap-conf'
require 'plugins.lspsaga-conf'
require 'plugins.luasnip-conf'
require 'plugins.cmp-conf'
require 'plugins.treesitter-conf'
require 'plugins.blamer-conf'
require 'plugins.git-messenger-conf'

