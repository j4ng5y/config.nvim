return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        -- Code Actions
        null_ls.builtins.code_actions.gitsigns,
        null_ls.builtins.code_actions.gomodifytags,
        null_ls.builtins.code_actions.shellcheck,
        -- Diagnostics
        null_ls.builtins.diagnostics.buf,
        null_ls.builtins.diagnostics.codespell,
        null_ls.builtins.diagnostics.golangci_lint,
        null_ls.builtins.diagnostics.jsonlint,
        null_ls.builtins.diagnostics.mypy,
        null_ls.builtins.diagnostics.protolint,
        null_ls.builtins.diagnostics.rubocop,
        null_ls.builtins.diagnostics.shellcheck,
        null_ls.builtins.diagnostics.terraform_validate,
        null_ls.builtins.diagnostics.tfsec,
        null_ls.builtins.diagnostics.yamllint,
        null_ls.builtins.diagnostics.zsh,
        -- Formatters
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.buf,
        null_ls.builtins.formatting.codespell,
        null_ls.builtins.formatting.gofumpt,
        null_ls.builtins.formatting.goimports,
        null_ls.builtins.formatting.goimports_reviser,
        null_ls.builtins.formatting.hclfmt,
        null_ls.builtins.formatting.json_tool,
        null_ls.builtins.formatting.protolint,
        null_ls.builtins.formatting.rubocop,
        null_ls.builtins.formatting.shellharden,
        null_ls.builtins.formatting.sqlfmt,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.terraform_fmt,
        null_ls.builtins.formatting.yamlfmt,
      },
    })
    vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "[C}ode [F]ormat" })
  end
}
