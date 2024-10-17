return {
	"CopilotC-Nvim/CopilotChat.nvim",
	branch = "canary",
	dependencies = {
		{ "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
		{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
	},
	keys = {
		{
			"<leader>a",
			function()
				local input = vim.fn.input("Quick Chat: ")
				if input ~= "" then
					require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
				end
			end,
			desc = "CopilotChat - Quick chat",
		},
		{
			"<M-c>",
			":CopilotChatToggle<CR>",
			desc = "Toggle CopilotChat",
			silent = true,
		},
	},
	config = function()
		require("CopilotChat").setup({
			window = {
				layout = "float",
				relative = "cursor",
				width = 1,
				height = 0.8,
				row = 0.3,
			},
		})
	end,
}
