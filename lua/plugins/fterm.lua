return {
  {
    'numToStr/FTerm.nvim',
    config = function()
      vim.keymap.set('n', '<leader>tt', '<cmd>lua require("FTerm").toggle()<CR>', {desc = '[T]oggle [T]terminal'})
      vim.keymap.set('t', '<leader>tt', '<C-\\><C-n><cmd>lua require("FTerm").toggle()<CR>', {desc = '[T]oggle [T]erminal'})
      vim.keymap.set('n', '<leader>lg', '<cmd>lua require("FTerm").run("lazygit")<CR>', {desc = '[L]azy[G]it'})
      vim.keymap.set('t', '<leader>lg', '<cmd>lua require("FTerm").close()<CR>', {desc = 'Close [L]azy[G]it'})
    end,
  }
}
