return {
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function ()
      require("chatgpt").setup({
        api_key_cmd = "echo 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"
      })
      vim.keymap.set({'n', 'v'}, '<leader>cc', '<cmd>ChatGPT<CR>', { desc = '[C]hatGPT' })
      vim.keymap.set({'n', 'v'}, '<leader>ce', '<cmd>ChatGPTEditWithInstruction<CR>', { desc = '[C]hatGPT [E]dit With Instructions' })
      vim.keymap.set({'n', 'v'}, '<leader>cg', '<cmd>ChatGPTRun grammer_correction<CR>', { desc = '[C]hatGPT [G]rammer Correction' })
      vim.keymap.set({'n', 'v'}, '<leader>ct', '<cmd>ChatGPTRun translate<CR>', { desc = '[C]hatGPT [T]ranslate' })
      vim.keymap.set({'n', 'v'}, '<leader>ck', '<cmd>ChatGPTRun keywords<CR>', { desc = '[C]hatGPT [K]eywords' })
      vim.keymap.set({'n', 'v'}, '<leader>cd', '<cmd>ChatGPTRun docstring<CR>', { desc = '[C]hatGPT [D]ocstring' })
      vim.keymap.set({'n', 'v'}, '<leader>c+', '<cmd>ChatGPTRun add_tests<CR>', { desc = '[C]hatGPT [A]dd Tests' })
      vim.keymap.set({'n', 'v'}, '<leader>co', '<cmd>ChatGPTRun optimize_code<CR>', { desc = '[C]hatGPT [O]ptimize Code' })
      vim.keymap.set({'n', 'v'}, '<leader>cs', '<cmd>ChatGPTRun summarize<CR>', { desc = '[C]hatGPT [S]ummarize' })
      vim.keymap.set({'n', 'v'}, '<leader>cf', '<cmd>ChatGPTRun fix_bugs<CR>', { desc = '[C]hatGPT [F]ix Bugs' })
      vim.keymap.set({'n', 'v'}, '<leader>cx', '<cmd>ChatGPTRun explain_code<CR>', { desc = '[C]hatGPT E[X]plain Code' })
      vim.keymap.set({'n', 'v'}, '<leader>cr', '<cmd>ChatGPTRun roxygen_edit<CR>', { desc = '[C]hatGPT [R]oxygen Edit' })
      vim.keymap.set({'n', 'v'}, '<leader>cy', '<cmd>ChatGPTRun code_readability_analysis<CR>', { desc = '[C]hatGPT Code Readability Anal[Y]sis' })
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  }
}


