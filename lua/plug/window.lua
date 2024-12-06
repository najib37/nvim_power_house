return {
	"anuvyklack/windows.nvim",
	dependencies = {
		"anuvyklack/middleclass",
		"anuvyklack/animation.nvim",
	},
	config = function()
		vim.o.winwidth = 10
		vim.o.winminwidth = 10
		vim.o.equalalways = false
		require("windows").setup()
		vim.keymap.set("n", "<M-8>", "<Cmd>WindowsToggleAutowidth<CR>")
		vim.keymap.set("n", "<M-9>", "<Cmd>WindowsMaximize<CR>")
	end,
}
