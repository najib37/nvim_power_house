return {
  'akinsho/bufferline.nvim',
  version = "*",
  event= false,
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
		-- vim.keymap.set("n", "<leader>x", closeBuffer, { noremap = true, silent = true })
		-- vim.keymap.set("n", "<C-l>", ":BufferLineMoveNext<CR>", { noremap = true, silent = true })
		-- vim.keymap.set("n", "<C-h>", ":BufferLineMovePrev<CR>", { noremap = true, silent = true })

    require("bufferline").setup {
    }
  end
}
