return {
  {
    'nvim-neorg/neorg',
    after = 'nvim-treesitter',
    config = function ()
      require('neorg').setup({
        load = {
          ['core.defaults'] = {},
          ['core.concealer'] = {},
          ['core.dirman'] = {
            config = {
              workspaces = {
                notes = "~/notes",
              },
            },
          },
        },
      })
    end,
    run = ':Neorg sync-parsers',
    requires = 'nvim-lua/plenary.nvim'
  }
}
