return {
	{
		"Mofiqul/dracula.nvim",
		config = function()
			require("dracula").setup({
				underline = true,
				bold = true,

				overrides = {
					bg = "#282A36",
					black = "#282A36",
					Underlined = { underline = true, bold = true, sp = "#FF79C6" },
				},
			})
			-- vim.cmd([[
			--      highlight Underlined gui=underline,bold
			--    ]])
		end,
	},
}
