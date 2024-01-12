return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set("n", "<leader>tt", function()
      require("neo-tree.command").execute({
        source = "filesystem",
        position = "left",
        toggle = true,
        reveal = true,
      })
    end, { desc = "[T]oggle [T]ree" })
    vim.keymap.set("n", "<leader>tf", function ()
      require("neo-tree.command").execute({
        action = "focus"
      })
    end, { desc = "[T]oggle Tree [F]ocus" })
  end,
}
