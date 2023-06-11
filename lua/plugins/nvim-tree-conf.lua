local function _on_attach(bufnr)
  local api = require 'nvim-tree.api'
  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  api.config.mappings.default_on_attach(bufnr)

  vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
  vim.keymap.set('n', '<Tab>', api.marks.toggle, opts('Toggle Bookmark'))
  vim.keymap.set('n', '<C-O>', api.node.open.preview, opts('Open Preview'))
  vim.keymap.set('n', '<C-H>', api.node.open.horizontal, opts('Open: Horizontal Split'))
  vim.keymap.set('n', 'gY', api.fs.copy.absolute_path, opts('Copy Absolute Path'))
  vim.keymap.set('n', 'gy', api.fs.copy.relative_path, opts('Copy Relative Path'))
  vim.keymap.set('n', 'Y', api.fs.copy.filename, opts('Copy Name'))
  vim.keymap.set('n', 'y', api.fs.copy.node, opts('Copy'))
  vim.keymap.set('n', 'c', api.fs.create, opts('Create'))
  vim.keymap.set('n', 'm', api.marks.bulk.move, opts('Move Bookmarked'))
end

require('nvim-tree').setup {
  on_attach = _on_attach,
  sort_by = 'case_sensitive',
  git = {
    enable = true
  },
  view = {
    width = 40
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "*",
      info = "",
      warning = "",
      error = "",
    },
  },
  renderer = {
    highlight_git = true,
    group_empty = true,
    icons = {
      show = {
        git = true
      },
      glyphs = {
        git = {
          unstaged = 'U',
          staged = 'S',
          unmerged = '',
          renamed = 'R',
          untracked = 'N',
          deleted = 'D',
          ignored = '◌'
        }
      }
    }
  },
  filters = {
    dotfiles = true
  }
}

vim.api.nvim_set_keymap('n', 'se', ':NvimTreeToggle<CR>', { noremap = true })

