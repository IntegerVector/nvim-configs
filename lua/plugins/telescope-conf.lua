local telescope = require('telescope')
local builtin = require('telescope.builtin')
local actions = require('telescope.actions')

vim.keymap.set('n', '<leader>d', builtin.find_files, {})
vim.keymap.set('n', '<leader>f', builtin.live_grep, {})
vim.keymap.set('n', '<leader>a', builtin.buffers, {})
vim.keymap.set('n', '<leader>s', builtin.help_tags, {})

vim.api.nvim_set_keymap('n', '<space>e', ':Telescope file_browser initial_mode=normal <CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<space>r', ':Telescope file_browser initial_mode=normal path=%:p:h select_buffer=true<CR>', { noremap = true })

telescope.setup {
  mappings = {
    n = {
      ['q'] = actions.close
    }
  },
  extensions = {
    file_browser = {
      theme = 'ivy',
      initial_mode = 'normal',
      hijack_netrw = true,
      dir_icon = ''
    }
  }
}

telescope.load_extension('file_browser')

