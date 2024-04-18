# neovim.conf

## Installation

1. Install [neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md)
2. Clone this repository to `~/.config/nvim`
3. Profit

## Getting Things Working

I did my best to make this config as plug-and-play as possible, but there are a few things you'll need to do to get everything working:

### Copilot

You will need to authenticate the Copilot plugin with the following command: `:Copilot auth`. This will open a browser window where you can authenticate with GitHub.

### GP.nvim

I have this set to use OpenAI's ChatGPT-4. You will need an API key to use this. If you don't have access to GPT-4, you can change the configuration in `lua/plugins/ai.lua` to use GPT-3 or whatever else instead.

Additionally, if you DO have a key, you will need to set up how to access the key. You can see all the supported methods [here](https://github.com/Robitx/gp.nvim#2-openai-api-key). This config is using my [password manager cli tool](https://bitwarden.com/help/cli/) to access the key. Feel free to use whatever method or tool you like.

Open an issue if I'm forgetting something.

## Credits (Plugins)

This config stands on the shoulders of the following giants:

- [Comment.nvim](https://github.com/numToStr/Comment.nvim)
  - Comment Formatting
- [FTerm.nvim](https://github.com/numToStr/FTerm.nvim)
  - Floating Terminals
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
  - Snippet Engine
- [alpha-nvim](https://github.com/goolord/alpha-nvim)
  - Greeter
- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
  - LSP Integration
- [cmp-path](https://github.com/hrsh7th/cmp-path)
  - Path Completion
- [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
  - Snippet Completion
- [copilot.vim](https://github.com/github/copilot.vim)
  - Copilot Integration
- [fidget.nvim](https://github.com/j-hui/fidget.nvim)
  - Better Notifications
- [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
  - Snippet Collection
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
  - Visual Git Decorations
- [gp.nvim](https://github.com/Robitx/gp.nvim)
  - GPT Integration
- [gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim)
  - Gruvbox theme
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
  - Indentation Guides
- [lazy.nvim](https://github.com/folke/lazy.nvim)
  - Plugin Package Manager
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
  - Configurable status line
- [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
  - LSP Configuration
- [mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
  - DAP Bridge
- [mason.nvim](https://github.com/williamboman/mason.nvim)
  - LSP/Dap/Linter Package Manager
- [neodev.nvim](https://github.com/folke/neodev.nvim)
  - Makes neovim lua development easier
- [noice.nvim](https://github.com/folke/noice.nvim)
  - Fancy Menus and Notifications
- [none-ls.nvim](https://github.com/nvimtools/none-ls.nvim)
  - LSP Client for everything else
- [nui.nvim](https://github.com/MunifTanjim/nui.nvim)
  - UI Toolkit
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
  - Completion Engine
- [nvim-dap](https://github.com/mfussenegger/nvim-dap)
  - Debug Adapter Protocol Client
- [nvim-dap-go](https://github.com/leoluz/nvim-dap-go)
  - Go Debug Adapter Protocol Extension
- [nvim-dap-ruby](https://github.com/suketa/nvim-dap-ruby)
  - Ruby Debug Adapter Protocol Extension
- [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
  - Debug Adapter Protocol UI
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
  - Quickstart LSP Configurations
- [nvim-nio](https://github.com/nvim-neotest/nvim-nio)
  - Async Neovim IO
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
  - Notifications Manager
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
  - Syntax Highlighting
- [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
  - Text Objects for Treesitter
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
  - Icons for Neovim
- [oil.nvim](https://github.com/stevearc/oil.nvim)
  - File Explorer
- [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
  - Lua Utility Functions
- [telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
  - FZF Native Integration with Telescope
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
  - Find Everything Interface
- [vim-sleuth](https://github.com/tpope/vim-sleuth)
  - Adaptive Indentation
- [vim-visual-multi](https://github.com/mg979/vim-visual-multi)
  - Multiple Cursors Support
- [which-key.nvim](https://github.com/folke/which-key.nvim)
  - Keybindings Helper
- [neovim](https://neovim.io/)
  - The Best Text Editor

If you want to create your own config, I highly recommend checking out the "Neovim for Newbs" youtube series by typecraft. They are all fantastic.

[![Neovim for Newbs: Episode 1](https://img.youtube.com/vi/zHTeCSVAFNY/0.jpg)](https://www.youtube.com/watch?v=zHTeCSVAFNY)
[![Neovim for Newbs: Episode 2](https://img.youtube.com/vi/4zyZ3sw_ulc/0.jpg)](https://www.youtube.com/watch?v=4zyZ3sw_ulc)
[![Neovim for Newbs: Episode 3](https://img.youtube.com/vi/S-xzYgTLVJE/0.jpg)](https://www.youtube.com/watch?v=S-xzYgTLVJE)
[![Neovim for Newbs: Episode 4](https://img.youtube.com/vi/SxuwQJ0JHMU/0.jpg)](https://www.youtube.com/watch?v=SxuwQJ0JHMU)
[![Neovim for Newbs: Episode 5](https://img.youtube.com/vi/iXIwm4mCpuc/0.jpg)](https://www.youtube.com/watch?v=iXIwm4mCpuc)
[![Neovim for Newbs: Episode 6](https://img.youtube.com/vi/oYzZxi3SSnM/0.jpg)](https://www.youtube.com/watch?v=oYzZxi3SSnM)
