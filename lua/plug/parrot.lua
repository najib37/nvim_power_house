return {
	"frankroeder/parrot.nvim",
	dependencies = { "ibhagwan/fzf-lua", "nvim-lua/plenary.nvim" },
	opts = {},
	config = function()
		-- vim.keymap.set("n", "<leader>v<CR>", "<cmd>PrtChatToggle popup <cr>", { buffer = bufnr})
    vim.api.nvim_set_keymap("n", "<leader>v", ":PrtChatToggle popup<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>,", ":PrtChatResponde<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<M-d>", ":PrtAsk<CR>", { noremap = true, silent = true })
		require("parrot").setup({
			providers = {
				anthropic = {
					api_key = os.getenv("ANTHROPIC_API_KEY"),
					-- endpoint = "https://api.anthropic.com/v1/messages",
					topic_prompt = "You only respond with 3 to 4 words to summarize the past conversation. and avoid code comments",
					topic = {
						-- model = "claude-3-haiku-20240307",
						params = { max_tokens = 32 },
					},
					params = {
						chat = { max_tokens = 4096 },
						command = { max_tokens = 4096 },
					},
				},
				-- gemini = {
				--   api_key = os.getenv "GEMINI_API_KEY",
				-- },
				-- groq = {
				--   api_key = os.getenv "GROQ_API_KEY",
				-- },
				-- mistral = {
				--   api_key = os.getenv "MISTRAL_API_KEY",
				-- },
				-- pplx = {
				--   api_key = os.getenv "PERPLEXITY_API_KEY",
				-- },
				-- -- provide an empty list to make provider available (no API key required)
				-- ollama = {},
				-- openai = {
				--   api_key = os.getenv "OPENAI_API_KEY",
				-- },
				-- github = {
				--   api_key = os.getenv "GITHUB_TOKEN",
				-- },
			},
		})
	end,
}
