return {
  {
    'numToStr/FTerm.nvim',
    config = function()
      vim.keymap.set('n', '<leader>tt', '<cmd>lua require("FTerm").toggle()<CR>', {desc = '[T]oggle [T]terminal'})
      vim.keymap.set('t', '<leader>tt', '<C-\\><C-n><cmd>lua require("FTerm").toggle()<CR>', {desc = '[T]oggle [T]erminal'})
    end,
  }
}
