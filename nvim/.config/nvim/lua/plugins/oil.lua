return {
	{
		"stevearc/oil.nvim",
		---@module 'oil'
		---@type oil.SetupOpts
		opts = {},
		-- Optional dependencies
		--dependencies = { { "nvim-mini/mini.icons", opts = {} } },
		dependencies = { "nvim-tree/nvim-web-devicons" },
		lazy = false,
		config = function() 
			require("oil").setup({
				default_file_explorer = false,
				columns = { },
				keymaps = { },
				delete_to_trash = true,
				view_options = {
					show_hidden = true,
				},
				skip_confirm_for_simple_edits = true,
			})

			vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
			vim.keymap.set("n", "<leader>-",require("oil").toggle_float, { desc = "Open parent in floating window" })

			vim.api.nvim_create_autocmd("FileType", {
				pattern = "oil",
				callback = function ()
					vim.opt_local.cursorline = true
				end,
			})
		end
	}
}
