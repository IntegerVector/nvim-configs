local utils = require('core.utils')

vim.g.mapleader = ' '
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd('autocmd!')
vim.opt.spell = true
vim.opt.title = true
vim.opt.number = true
vim.opt.showcmd = true
vim.opt.ttyfast = true
vim.opt.hlsearch = true
vim.opt.undofile = true
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.incsearch = true
vim.opt.showmatch = true
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.autoindent = true
vim.opt.cursorline = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.termguicolors = true
vim.opt.backup = false
vim.opt.ruler = false
vim.opt.winblend = 0
vim.opt.cc = '81'
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.numberwidth = 4
vim.opt.timeoutlen = 400
vim.opt.pumblend = 5
vim.opt.mouse = 'a'
vim.opt.signcolumn = 'yes'
vim.opt.fileformat = 'unix'
vim.opt.wildmode = 'longest'
vim.opt.background = 'dark'
vim.opt.wildignore:append { '*/node_modules/*' }
vim.opt.wildoptions = 'pum'
vim.opt.clipboard = 'unnamedplus'
vim.opt.backupskip = '/tmp/*,/private/tmp/*'
vim.opt.whichwrap:append '<>[]hl'
vim.opt.shortmess:append 'sI'
vim.opt.path:append { '**' }
vim.opt.formatoptions:append { 'r' }

utils.set_tab(2)

if utils.has('macunix') then
  vim.opt.clipboard:append { 'unnamedplus' }
end
if utils.has('unix') then
  vim.opt.clipboard:append { 'unnamedplus' }
end
if utils.has('win32') then
  vim.opt.clipboard:prepend { 'unnamed', 'unnamedplus' }
end

