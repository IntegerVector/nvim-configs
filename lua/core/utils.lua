local utils = {}

utils.new_cmd = vim.api.nvim_create_user_command

utils.has = function(str)
  return vim.fn.has(str) == 1
end

utils.set_tab = function(size)
  vim.opt.tabstop = size
  vim.opt.softtabstop = size
  vim.opt.shiftwidth = size
end

utils.reload_nvim = function()
  for name,_ in pairs(package.loaded) do
    if name:match('^user') and not name:match('nvim-tree') then
      package.loaded[name] = nil
    end
  end

  dofile(vim.env.MYVIMRC)
  vim.notify('Nvim user configurations reloaded', vim.log.levels.INFO)
end

utils.copy_file_name = function()
  vim.cmd("let @+ = expand('%:t')")
end

utils.copy_full_path = function()
  vim.cmd("let @+ = expand('%:p')")
end

utils.copy_relative_path = function()
  vim.cmd("let @+ = expand('%')")
end

utils.set_colorscheme = function(name)
  vim.cmd(name)
end

return utils

