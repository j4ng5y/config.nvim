return {
  'stevearc/oil.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('oil').setup({
      float = {
        winblend = 10,
        border = "rounded",
      },
      view_options = {
        show_hidden = true,
      },
    })
    vim.keymap.set("n", "<leader>-", "<cmd>Oil --float<CR>", { desc = "Open parent directory" })
  end,
}
