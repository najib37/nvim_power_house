return {
	{ "nvim-tree/nvim-web-devicons" },
	{ "nvim-lua/plenary.nvim" },

	-- lsp config
	require("lsp.Mason"),
	require("lsp.MasonLspConfig"),
	require("lsp.LspConfig"),
	require("lsp.serverSetting.TsTools"),
	require("plug.lua_snip"),
	require("plug.friendly_snippets"),

	-- ai setup
	require("plug.copilot"),
	require("plug.copilot_chat"),
	require("plug.companion"),

	-- format config
	require("format.conform"),
	require("plug.nvimsoround"),
	require("plug.tree_sj"),


	-- dap config
	require("dap.Dap"),
	-- require "dap.nodeDap",

	-- flutter
	require("plug.dart_tools"),

	-- View plugins
	require("plug.alpha"),
	require("plug.diffview"),
	require("plug.window"),
	require("plug.aerial"),
	require("plug.undo_tree"),
	require("plug.neotree"),
	require("plug.telescope"),
	require("plug.bufferline"),
	require("plug.lualine"),
	-- require "plug.notify",
	require("plug.noice"),
	require("plug.dressing"),
	require("plug.oil"),
	require("plug.todocmp"),

  -- Navigation plugins
	require("plug.lightspeed"),
	require("plug.tree_nav"),

  

  -- Editing plugins
	require("plug.leetcode"),
	require("plug.presistence"),
	require("plug.luarocks"),
	require("plug.neorg"),
	require("plug.treesitter"),
	require("plug.comments"),
	require("plug.indentline"),
	require("plug.toggleterm"),
	require("plug.autopaire"),
	require("plug.cmp"),
	require("plug.neogit"),
	require("plug.git_sign"),
	require("plug.auto_tag"),
	require("plug.snacks"),
	require("plug.trouble"),

	-- themes
	-- require "plug.TokyoNight",
	-- require "plug.capuccin",
	require("plug.dracula"),
	-- require "plug.monokai",


	-- trash
	-- require "NvimShip",
	-- require "NvimUfo",
	-- require "plug.scoopNvim",
	-- require "NvimRest",
	-- require "plug.navic",
	-- require "plug.image",
}

