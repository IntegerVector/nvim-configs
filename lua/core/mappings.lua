vim.keymap.set('n', '<SPACE>', '<Nop>')
vim.keymap.set('n', '+', '<C-a>')
vim.keymap.set('n', '-', '<C-x>')
vim.keymap.set('n', 'x', '"_x')
vim.keymap.set('n', 'X', '"_X')
vim.keymap.set('n', '<leader>p', '"0p')
vim.keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Terminal
vim.keymap.set('n', '<leader>t', ':term<Return>')
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- Tabs
vim.keymap.set('n', 'st', ':tabedit<Return>', { silent = true })

-- Window management
vim.keymap.set('n', 'sh', ':split<Return>')
vim.keymap.set('n', 'sv', ':vsplit<Return>')
vim.keymap.set('n', '<leader>h', '<C-w>h')
vim.keymap.set('n', '<leader>j', '<C-w>j')
vim.keymap.set('n', '<leader>k', '<C-w>k')
vim.keymap.set('n', '<leader>l', '<C-w>l')
vim.keymap.set('t', '<leader>h', '<C-\\><C-n><C-w>h')
vim.keymap.set('t', '<leader>j', '<C-\\><C-n><C-w>j')
vim.keymap.set('t', '<leader>k', '<C-\\><C-n><C-w>k')
vim.keymap.set('t', '<leader>l', '<C-\\><C-n><C-w>l')
vim.keymap.set('n', '<leader><left>', '20<C-w><')
vim.keymap.set('n', '<leader><right>', '20<C-w>>')
vim.keymap.set('n', '<leader><up>', '5<C-w>+')
vim.keymap.set('n', '<leader><down>', '5<C-w>-')

