return {
  {
    'github/copilot.vim',
    config = function()
      vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', { desc = 'Copilot Accept', expr = true, replace_keycodes = false })
      vim.keymap.set('i', '<C-K>', 'copilot#Cancel()', { desc = 'Copilot Cancel', expr = true, replace_keycodes = false })
      vim.keymap.set('i', '<C-L>', 'copilot#Next()', { desc = 'Copilot Next', expr = true, replace_keycodes = false })
      vim.keymap.set('i', '<C-H>', 'copilot#Prev()', { desc = 'Copilot Prev', expr = true, replace_keycodes = false })
    end,
  },
  --{
  --  'dpayne/CodeGPT.nvim',
  --  dependencies = {
  --    'nvim-lua/plenary.nvim',
  --    'MunifTanjim/nui.nvim',
  --  },
  --  config = function()
  --    require('codegpt.config')
  --    vim.g["codegpt_commands_defaults"] = {
  --      ["completion"] = {
  --        model = "gpt-4-turbo-preview",
  --        max_tokens = 128000,
  --        user_message_template = "I have the following {{language}} code snippet: ```{{filetype}}\n{{text_selection}}```\nComplete the rest. Use best practices and write really good documentation. {{language_instructions}} Only return the code snippet and nothing else.",
  --        language_instructions = {
  --          cpp = "Use modern C++ features.",
  --          java = "Use modern Java syntax. Use var when applicable.",
  --        },
  --      },
  --      ["code_edit"] = {
  --        model = "gpt-4-turbo-preview",
  --        max_tokens = 128000,
  --        user_message_template = "I have the following {{language}} code: ```{{filetype}}\n{{text_selection}}```\n{{command_args}}. {{language_instructions}} Only return the code snippet and nothing else.",
  --        language_instructions = {
  --          cpp = "Use modern C++ syntax.",
  --        },
  --      },
  --      ["explain"] = {
  --        model = "gpt-4-turbo-preview",
  --        max_tokens = 128000,
  --        user_message_template = "Explain the following {{language}} code: ```{{filetype}}\n{{text_selection}}``` Explain as if you were explaining to another developer.",
  --        callback_type = "text_popup",
  --      },
  --      ["question"] = {
  --        model = "gpt-4-turbo-preview",
  --        max_tokens = 128000,
  --        user_message_template = "I have a question about the following {{language}} code: ```{{filetype}}\n{{text_selection}}``` {{command_args}}",
  --        callback_type = "text_popup",
  --      },
  --      ["debug"] = {
  --        model = "gpt-4-turbo-preview",
  --        max_tokens = 128000,
  --        user_message_template = "Analyze the following {{language}} code for bugs: ```{{filetype}}\n{{text_selection}}```",
  --        callback_type = "text_popup",
  --      },
  --      ["doc"] = {
  --        model = "gpt-4-turbo-preview",
  --        max_tokens = 128000,
  --        user_message_template = "I have the following {{language}} code: ```{{filetype}}\n{{text_selection}}```\nWrite really good documentation using best practices for the given language. Attention paid to documenting parameters, return types, any exceptions or errors. {{language_instructions}} Only return the code snippet and nothing else.",
  --        language_instructions = {
  --          cpp = "Use doxygen style comments for functions.",
  --          java = "Use JavaDoc style comments for functions.",
  --        },
  --      },
  --      ["opt"] = {
  --        model = "gpt-4-turbo-preview",
  --        max_tokens = 128000,
  --        user_message_template = "I have the following {{language}} code: ```{{filetype}}\n{{text_selection}}```\nOptimize this code. {{language_instructions}} Only return the code snippet and nothing else.",
  --        language_instructions = {
  --          cpp = "Use modern C++.",
  --        },
  --      },
  --      ["tests"] = {
  --        model = "gpt-4-turbo-preview",
  --        max_tokens = 128000,
  --        user_message_template = "I have the following {{language}} code: ```{{filetype}}\n{{text_selection}}```\nWrite really good unit tests using best practices for the given language. {{language_instructions}} Only return the unit tests. Only return the code snippet and nothing else. ",
  --        callback_type = "code_popup",
  --        language_instructions = {
  --          cpp = "Use modern C++ syntax. Generate unit tests using the gtest framework.",
  --          java = "Generate unit tests using the junit framework.",
  --        },
  --      },
  --      ["chat"] = {
  --        model = "gpt-4-turbo-preview",
  --        max_tokens = 128000,
  --        system_message_template = "You are a general assistant to a software developer.",
  --        user_message_template = "{{command_args}}",
  --        callback_type = "text_popup",
  --      },
  --    }
  --  end,
  --}
}


