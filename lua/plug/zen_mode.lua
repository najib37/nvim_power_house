return {
	"folke/zen-mode.nvim",
	config = true,
	keys = {
    {
      "<leader>m",
      function()
        require("zen-mode").toggle({
          window = {
            width = 1,
          },
        })
      end,
    }
	},
}
