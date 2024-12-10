return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	priority = 1000,
	event = "InsertEnter",
  fix_pairs = true,
	config = function()
		require("copilot").setup({
			suggestion = {
				enabled = true,
				auto_trigger = false,
				hide_during_completion = true,
				max_suggestions = 100,
				debounce = 50,
				keymap = {
					accept = "<M-p>",
					accept_word = "<M-n>",
					accept_line = "<M-g>",
					next = "<M-]>",
					prev = "<M-[>",
					dismiss = "<C-]>",
				},
			},
		})
		require("copilot.suggestion").toggle_auto_trigger()
		require("copilot.suggestion").is_visible()
		vim.keymap.set("n", ",e", ":Copilot toggle<CR>", { noremap = true, silent = true })
	end,
}
