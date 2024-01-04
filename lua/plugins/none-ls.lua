return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.buf,
        null_ls.builtins.formatting.codespell,
        null_ls.builtins.formatting.cue_fmt,
        null_ls.builtins.formatting.cueimports,
        null_ls.builtins.formatting.gofumpt,
        null_ls.builtins.formatting.goimports,
        null_ls.builtins.formatting.goimports_reviser,
        null_ls.builtins.formatting.hclfmt,
        null_ls.builtins.formatting.json_tool,
        null_ls.builtins.formatting.protolint,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.terraform_fmt,
        null_ls.builtins.formatting.yamlfmt,
      },
    })
    vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "[C}ode [F]ormat" })
  end
}
