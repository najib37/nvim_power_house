return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
  config = true,
	-- config = function()
	-- 	require("nvim-autopairs").setup({
	-- 		enable_check_bracket_line = false,
	-- 	})
	-- end,


	--   npairs.setup({
	--     check_ts = true,
	--     ts_config = {
	--       lua = { 'string' }, -- it will not add a pair on that treesitter node
	--       javascript = { 'template_string' },
	--       typescript = { 'template_string' },
	--       java = false, -- don't check treesitter on java
	--     }
	--   })
	--
	--   local ts_conds = require('nvim-autopairs.ts-conds')
	--
	--
	--   -- press % => %% only while inside a comment or string
	--   npairs.add_rules({
	--     Rule("%", "%", "lua")
	--         :with_pair(ts_conds.is_ts_node({ 'string', 'comment' })),
	--     Rule("$", "$", "lua")
	--         :with_pair(ts_conds.is_not_ts_node({ 'function' }))
	--   })
	--   local cmp_autopairs = require "nvim-autopairs.completion.cmp"
	--   local cmp_status_ok, cmp = pcall(require, "cmp")
	--   if not cmp_status_ok then
	--     return
	--   end
	--   cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done { map_char = { tex = "" } })
	-- end
}
