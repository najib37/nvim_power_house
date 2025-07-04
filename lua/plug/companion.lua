return {
  "olimorris/codecompanion.nvim",
  config = function()
    require("codecompanion").setup({
      adapters = {
        default = "copilot",
        -- 	anthropic = function()
        -- 		return require("codecompanion.adapters").extend("anthropic", {
        -- 			env = {
        -- 				api_key = "ANTHROPIC_API_KEY",
        -- 			},
        -- 		})
        -- 	end,
        -- },
        -- strategies = {
        -- 	chat = {
        -- 		adapter = "anthropic",
        -- 	},
        -- 	inline = {
        -- 		adapter = "anthropic",
        -- 	},
      },
    })

    -- vim.keymap.set("n", "<C- >", "<Cmd>CodeCompanionChat Toggle<CR>", { noremap = true, silent = true })
  end,
}
