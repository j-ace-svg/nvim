local Remap = require('j-ace-svg.keymap')
local nnrm = Remap.nnoremap
local cnrm = Remap.cnoremap
local dap = require('dap')
local osv = require('osv')

-- GODOT
dap.adapters.godot = {
    type = 'server',
    host = '127.0.0.1',
    port = 6007,
}

dap.configurations.godot = {
    {
        type = 'godot',
        request = 'launch',
        name = 'Launch scene',
        program = '${workspaceFolder}/project.godot',
        launch_scene = true,
    },
}

-- LUA
local dap = require"dap"
dap.configurations.lua = { 
  { 
    type = 'nlua', 
    request = 'attach',
    name = "Attach to running Neovim instance",
  }
}

dap.adapters.nlua = function(callback, config)
  callback({ type = 'server', host = config.host or "127.0.0.1", port = config.port or 8086 })
end

-- Mappings
nnrm('<F5>', dap.continue)
nnrm('<F6>', function() osv.launch({port = 8086}) end)
nnrm('<Leader>dc', dap.continue)
nnrm('<F10>', dap.step_over)
nnrm('<Leader>dsl', dap.step_over)
nnrm('<F11>', dap.step_into)
nnrm('<Leader>dsj', dap.step_into)
nnrm('<F12>', dap.step_out)
nnrm('<Leader>dsk', dap.step_out)
nnrm('<Leader>db', dap.toggle_breakpoint)
