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
        copilot = function()
          return require("codecompanion.adapters").extend("copilot", {
            schema = {
              model = {
                default = "claude-sonnet-4", -- Use the full model name
              },
            },
          })
        end,
        -- copilot = function()
        --   return require("codecompanion.adapters").extend("copilot", {
        --     schema = {
        --       model = {
        --         model = "claude-sonnet-4",
        --       },
        --     },
        --   })
        -- end,
        tavily = function()
          return require("codecompanion.adapters").extend("tavily", {
            env = {
              url = "https://api.tavily.com/search",
            },
            headers = {
              ["Content-Type"] = "application/json",
              ["Authorization"] = "Bearer ${api_key}",
            },
            -- parameters = {
            --   sync = true,
            -- },
          })
        end,
      },

      strategies = {
        chat = {
          adapter = "copilot",
        },
        inline = {
          adapter = "copilot",
        },
      },
    }


    )



    vim.keymap.set("n", "<M-5>", "<Cmd>CodeCompanionChat Toggle<CR>", { noremap = true, silent = true })
  end,
}
