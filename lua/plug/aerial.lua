return {
  'stevearc/aerial.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = {
     "nvim-treesitter/nvim-treesitter",
     "nvim-tree/nvim-web-devicons"
  },
	config = function()
		require("aerial").setup({
      max_width = 20,
			on_attach = function(bufnr)
				vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
				vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
				vim.keymap.set("n", "<C-Up>", "<cmd>AerialPrev<CR>", { buffer = bufnr })
				vim.keymap.set("n", "<C-Down>", "<cmd>AerialNext<CR>", { buffer = bufnr })
				vim.keymap.set("n", "<leader>b", "<cmd>AerialToggle! right<CR>", { buffer = bufnr })
			end,
		})
	end,
}
