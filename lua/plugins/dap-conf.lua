local dap = require('dap')

vim.fn.sign_define('DapBreakpoint', { text = '🔴', texthl = '', linehl = '', numhl = '' })

local keymap = vim.keymap
keymap.set('n', '<F5>', function()
  vim.cmd [[ :DapLoadLaunchJSON ]]
  vim.cmd [[ :DapContinue ]]
end)
keymap.set('n', '<F10>', '<Cmd>DapStepOver<CR>')
keymap.set('n', '<F11>', '<Cmd>DapStepInto<CR>')
keymap.set('n', '<F12>', '<Cmd>DapStepOut<CR>')
keymap.set('n', '<F9>', '<Cmd>DapToggleBreakpoint<CR>')
keymap.set('n', '<c-F9>', '<Cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>')

local dapui = require('dapui')
dapui.setup()

dap.listeners.after.event_initialized['dapui_config'] = function()
  dapui.open()
end

dap.listeners.before.event_terminated['dapui_config'] = function()
  dapui.close()
end

dap.listeners.before.event_exited['dapui_config'] = function()
  dapui.close()
end

local mason_dap = require('mason-nvim-dap')
mason_dap.setup({
  automatic_setup = true
})

