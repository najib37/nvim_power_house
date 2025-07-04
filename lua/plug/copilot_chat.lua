return {
  "CopilotC-Nvim/CopilotChat.nvim",
  branch = "main",
  dependencies = {
    { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
    { "nvim-lua/plenary.nvim" },  -- for curl, log wrapper
  },
  config = function()
    require("CopilotChat").setup({
      model = "claude-3.7-sonnet",
      window = {
        layout = "float",
        relative = "cursor",
        width = 1,
        height = 0.8,
        row = 0.3,
      },
      prompts = {
        Explain = {
          mapping = "<leader>cce",
        },
        Fix = {
          mapping = "<leader>ccf",
        },
        Optimize = {
          mapping = "<leader>cco",
        },
      },
      context = "buffer",
    })
    vim.api.nvim_set_keymap("n", "<M-c>", ":CopilotChatToggle<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<C- >", ":CopilotChatToggle<CR>", { noremap = true, silent = true })
  end,
}
