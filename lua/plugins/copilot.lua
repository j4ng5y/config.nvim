return {
  {
    'zbirenbaum/copilot.lua',
    opts = {
      suggestion = { enabled = false },
      panel = { enabled = false }
    }
  },
  {
    'zbirenbaum/copilot-cmp',
    after = { 'copilot.lua' },
  }
}
