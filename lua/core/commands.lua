local utils = require('core.utils')

utils.new_cmd('Tab2', function()
  utils.set_tab(2)
end, {})

utils.new_cmd('Tab4', function()
  utils.set_tab(4)
end, {})

utils.new_cmd('Tab8', function()
  utils.set_tab(8)
end, {})

utils.new_cmd('SetUnix', function()
  vim.opt.fileformat = 'unix'
end, {})

utils.new_cmd('SetDos', function()
  vim.opt.fileformat = 'dos'
end, {})

utils.new_cmd('SetMac', function()
  vim.opt.fileformat = 'mac'
end, {})

utils.new_cmd('Reload', function()
  utils.reload_nvim()
end, {})

utils.new_cmd('CopyName', function()
  utils.copy_file_name()
end, {})

utils.new_cmd('CopyFullPath', function()
  utils.copy_full_path()
end, {})

utils.new_cmd('CopyPath', function()
  utils.copy_relative_path()
end, {})

