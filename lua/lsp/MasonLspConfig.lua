return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  },
  opts = {
    ensure_installed = require("lsp.servers"),
    automatic_installation = true,
  },
  config = function(_, opts)
    require("mason-lspconfig").setup {
      automatic_enable = false
    }
  end
}
