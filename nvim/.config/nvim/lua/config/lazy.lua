-- If not installed, install
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Install plugins
-- TODO: Move {plugins, opts} to config.plugins
vim.g.mapleader = " " -- Set before lazy to ensure mappings are correct
require("lazy").setup({
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		-- or                              , branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{
		"ellisonleao/gruvbox.nvim", -- Color scheme
		priority = 1000
	},
	{
		"nvim-treesitter/nvim-treesitter", build = ":TSUpdate" -- Syntax highlightin
	},
	{
		'ThePrimeagen/harpoon', -- File mark for quick navigation
		dependencies = {'nvim-lua/plenary.nvim'} -- Required for harpoon
	},
	"mbbill/undotree", -- Complete undo history, similar to git repo
	"tpope/vim-fugitive", -- Nvim git integration
	"junegunn/gv.vim", -- Visual git history
	{
		'VonHeikemen/lsp-zero.nvim', -- LSP
		branch = 'v2.x',
		dependencies = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
		}
	}
})


