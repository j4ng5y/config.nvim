return {
  {
    'github/copilot.vim',
    config = function()
      vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', { desc = 'Copilot Accept', expr = true, replace_keycodes = false })
      vim.keymap.set('i', '<C-K>', 'copilot#Cancel()', { desc = 'Copilot Cancel', expr = true, replace_keycodes = false })
      vim.keymap.set('i', '<C-L>', 'copilot#Next()', { desc = 'Copilot Next', expr = true, replace_keycodes = false })
      vim.keymap.set('i', '<C-H>', 'copilot#Prev()', { desc = 'Copilot Prev', expr = true, replace_keycodes = false })
    end,
  }
}


