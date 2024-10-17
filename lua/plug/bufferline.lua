return {
	"akinsho/bufferline.nvim",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function(_, opts)
		function closeBuffer()
			local current_buf = vim.api.nvim_get_current_buf()
			vim.cmd("bnext")
			vim.cmd("bdelete " .. current_buf)
		end

		vim.keymap.set("n", "<leader>x", closeBuffer, { noremap = true, silent = true })
		vim.keymap.set("n", "<C-l>", ":BufferLineMoveNext<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<C-h>", ":BufferLineMovePrev<CR>", { noremap = true, silent = true })

    local bufferline = require('bufferline')
		bufferline.setup({
			options = {
				mode = { "buffers" },
        style_preset = bufferline.style_preset.default,
				middle_mouse_command = "bdelete! %d",
				indicator = {
					style = "underline",
				},
				buffer_close_icon = "󰅖",
				modified_icon = "●",
				close_icon = "",
				left_trunc_marker = "",
				right_trunc_marker = "",
				separator_style = "thick",
				-- truncate_names = true,
				offsets = {
					{
						filetype = "neo-tree",
						text = "Explorer",
						highlight = "Directory",
						text_align = "left",
						separator = true,
					},
					{
						filetype = "aerial",
						text = "Aerial Files Symbols ",
						highlight = "Directory",
						text_align = "left",
						separator = true,
					},
				},
				max_name_length = 18,
				max_prefix_length = 15,
				tab_size = 18,
				-- diagnostics = "nvim_lsp",
				-- diagnostics_indicator = function(count, level, diagnostics_dict, context)
				-- 	local icon = level:match("error") and " " or " "
				-- 	return icon .. count
				-- end,
				sort_by = "insert_after_current",
				highlights = {
					buffer_selected = {
						guifg = "#88C0D0",
						guibg = "#4C566A",
						gui = "bold",
					},
					diagnostic_selected = {
						guifg = "#88C0D0",
						guibg = "#4C566A",
						gui = "bold",
					},
				},
			},
		})

		local groups = require("bufferline.groups")
		groups = {
			items = {
				{ name = "front" },
				groups.builtin.ungrouped,
				{ name = "back" },
			},
		}
	end,
}
