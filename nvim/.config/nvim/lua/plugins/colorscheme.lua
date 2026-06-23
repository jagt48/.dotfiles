return {
	-- the colorscheme should be available when starting Neovim
	{
		"folke/tokyonight.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- load the colorscheme here
			--      vim.cmd([[colorscheme tokyonight]])
		end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
		config = function()
			vim.cmd("colorscheme rose-pine")
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function ()
			--vim.cmd.("colorscheme catppuccin")
			--vim.cmd.("colorscheme catppuccin-latte")
			--vim.cmd.("colorscheme catppuccin-frappe")
			--vim.cmd.("colorscheme catppuccin-macchiato")
			--vim.cmd.("colorscheme catppuccin-mocha")
		end,
	},
}
