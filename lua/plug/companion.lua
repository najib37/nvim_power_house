return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "ravitemer/mcphub.nvim"
  },
  config = function()
    require("codecompanion").setup({
      extensions = {
        mcphub = {
          callback = "mcphub.extensions.codecompanion",
          opts = {
            make_vars = true,
            make_slash_commands = true,
            show_result_in_chat = true
          }
        }
      },
      sources = {
        per_filetype = {
          codecompanion = { "codecompanion" },
        }
      },
      preview = {
        filetypes = { "markdown", "codecompanion" },
        ignore_buftypes = {},
      },
      adapters = {
        default = "copilot",
      },
      strategies = {
        chat = {
          adapter = "copilot",
        },
        inline = {
          adapter = "copilot",
        },
      },
    })

    vim.keymap.set("n", "<M-5>", "<Cmd>CodeCompanionChat Toggle<CR>", { noremap = true, silent = true })
  end,
}
