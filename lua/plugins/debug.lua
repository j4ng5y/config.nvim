return {
  'mfussenegger/nvim-dap',
  dependencies = {
    {
      'rcarriga/nvim-dap-ui',
      dependencies = {
        'nvim-neotest/nvim-nio',
      },
    },
    'williamboman/mason.nvim',
    'jay-babu/mason-nvim-dap.nvim',
    'leoluz/nvim-dap-go',
    'suketa/nvim-dap-ruby',
  },
  config = function()
    local dap = require 'dap'
    local dapui = require 'dapui'

    require('mason-nvim-dap').setup {
      automatic_setup = true,
      automatic_installation = true,
      handlers = {},
      ensure_installed = {
        'delve', 'stylua', 'debugpy', 'bash-debug-adapter', 'codelldb'
      },
    }

    -- Basic debugging keymaps, feel free to change to your liking!
    vim.keymap.set('n', '<leader>ds', dap.continue, { desc = '[D]ebug: [S]tart' })
    vim.keymap.set('n', '<leader>dc', dap.continue, { desc = '[D]ebug: [C]ontinue' })
    vim.keymap.set('n', '<leader>dn', dap.step_into, { desc = '[D]ebug: Step I[n]to' })
    vim.keymap.set('n', '<leader>dv', dap.step_over, { desc = '[D]ebug: Step O[v]er' })
    vim.keymap.set('n', '<leader>do', dap.step_out, { desc = '[D]ebug: Step [O]ut' })
    vim.keymap.set('n', '<leader>dx', dap.terminate, { desc = '[D]ebug: Terminate' })
    vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint, { desc = '[D]ebug: Toggle [B]reakpoint' })
    vim.keymap.set('n', '<leader>dB', function()
      dap.set_breakpoint(vim.fn.input 'Breakpoint condition: ')
    end, { desc = '[D]ebug: Set [B]reakpoint' })

    -- Dap UI setup
    -- For more information, see |:help nvim-dap-ui|
    dapui.setup {
      -- Set icons to characters that are more likely to work in every terminal.
      --    Feel free to remove or use ones that you like more! :)
      --    Don't feel like these are good choices.
      icons = { expanded = '▾', collapsed = '▸', current_frame = '*' },
      controls = {
        icons = {
          pause = '⏸',
          play = '▶',
          step_into = '⏎',
          step_over = '⏭',
          step_out = '⏮',
          step_back = 'b',
          run_last = '▶▶',
          terminate = '⏹',
          disconnect = '⏏',
        },
      },
    }

    -- Toggle to see last session result. Without this, you can't see session output in case of unhandled exception.
    vim.keymap.set('n', '<leader>du', dapui.toggle, { desc = '[D]ebug: See last session result: [U]I' })

    dap.listeners.after.event_initialized['dapui_config'] = dapui.open
    dap.listeners.before.event_terminated['dapui_config'] = dapui.close
    dap.listeners.before.event_exited['dapui_config'] = dapui.close

    -- Install golang specific config
    require('dap-go').setup()
  end,
}
