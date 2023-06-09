require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'onedark',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'progress', 'location'},
    lualine_y = {},
    lualine_z = {}
  }
}

