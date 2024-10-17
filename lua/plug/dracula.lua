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
				},
			})
			-- vim.cmd([[
			--      highlight Underlined gui=underline,bold
			--    ]])
		end,
	},
}
