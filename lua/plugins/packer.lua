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
  use 'nvim-telescope/telescope-media-files.nvim' -- Media files preview
  use 'nvim-lualine/lualine.nvim' -- Status bar
  use 'neovim/nvim-lspconfig' -- LSP
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'mfussenegger/nvim-dap' -- Debug
  use 'rcarriga/nvim-dap-ui' -- Debug UI
  use 'jay-babu/mason-nvim-dap.nvim' -- Debug with mason helper
  use 'glepnir/lspsaga.nvim' -- LSP tools
  use 'brenoprata10/nvim-highlight-colors' -- Highlight colors
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'p00f/nvim-ts-rainbow'
end)

require 'plugins.color-conf'
require 'plugins.telescope-conf'
require 'plugins.lualine-conf'
require 'plugins.nvim-highlight-colors-conf'
require 'plugins.mason-conf'
require 'plugins.dap-conf'
require 'plugins.lspsaga-conf'
require 'plugins.treesitter-conf'

