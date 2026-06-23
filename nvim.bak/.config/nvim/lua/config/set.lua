-- Wide cursor
vim.opt.guicursor = ""

-- Line numbering
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tab behavior
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

vim.opt.smartindent = true

-- Line wrapping
vim.opt.wrap = false

-- Make undotree aware of all history
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Persist search result highlighting
vim.opt.hlsearch = false
-- Incrementeally search. Ex: 's/vim.opt.* =' will search for wildcard up to = sign
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- Minimum number of screen lines to keep above and below the cursor
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- Highlight a vertical column at 80 characters
vim.opt.colorcolumn = "80"

vim.g.mapleader = " "







































