return {
	{'nvim-tree/nvim-web-devicons'},
	{"nvim-lua/plenary.nvim"},

  -- lsp config
	require "lsp.Mason",
	require "lsp.MasonLspConfig",
	require "lsp.LspConfig",
	require "lsp.serverSetting.TsTools",

  -- ai setup
  require "plug.copilot",
  require "plug.copilot_chat",
  require "plug.parrot",
  require "plug.companion",

  -- format config
  require "format.conform",

  -- dap config
	require "dap.Dap",
	-- require "dap.nodeDap",

  -- plugins
	require "plug.navic",
	require "plug.image",
	require "plug.undo_tree",
  require "plug.leetcode",
  require "plug.presistence",
  require "plug.aerial",
	require 'plug.luarocks',
  require 'plug.tscomments',
	require "plug.neorg",
	require 'plug.treesitter',
	require 'plug.comments',
	require 'plug.neotree',
	require 'plug.telescope',
	require 'plug.bufferline',
	require "plug.alpha",
	require "plug.lualine",
  require "plug.indentline",
	require "plug.toggleterm",
	require "plug.notify",
	require "plug.noice",
	require "plug.tree_sj",
	require "plug.lightspeed",
	require "plug.autopaire",
	require "plug.dressing",
	require "plug.cmp",
	require "plug.tree_nav",
	require "plug.neogit",
	require "plug.git_sign",
	require "plug.lua_snip",
	require "plug.friendly_snippets",
	require "plug.auto_tag",
	require "plug.todocmp",
  require "plug.oil",

  -- themes
  -- require "plug.TokyoNight",
  -- require "plug.capuccin",
  require "plug.dracula",
  -- require "plug.monokai",

  -- flutter
  require "plug.dart_tools",

  -- trash
	-- require "NvimShip",
	-- require "NvimUfo", 
  -- require "plug.scoopNvim",
	-- require "NvimRest",
}
