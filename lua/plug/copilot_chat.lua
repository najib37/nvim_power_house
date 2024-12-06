return {
	"CopilotC-Nvim/CopilotChat.nvim",
	branch = "main",
	dependencies = {
		{ "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
		{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
	},
	config = function()
		require("CopilotChat").setup({

			model = "claude-3.5-sonnet",
			window = {
				layout = "float",
				relative = "cursor",
				width = 1,
				height = 0.8,
				row = 0.3,
			},
		})
		vim.api.nvim_set_keymap("n", "<M-c>", ":CopilotChatToggle<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap(
			"n",
			"<C- >",
			[[:lua require('CopilotChat').ask(_, { selection = require('CopilotChat.select').buffer })<CR>]],
			{ noremap = true, silent = true }
		)
	end,
}
