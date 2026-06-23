local map = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Center cursor
map("n", "<C-d>", "<C-d>zz", { desc = "Move down in buffer with cursor centered" })
map("n", "<C-u>", "<C-u>zz", { desc = "Move up in buffer with cursor centered" })

-- Buffer navigation
map("n", "<Tab>", ":bnext<CR>", { desc = "Next buffer" })
map("n", "<S-Tab>", ":bprevious<CR>", { desc = "Previous buffer" })
map("n", "<leader>bn", ":bnext<CR>", { desc = "Next buffer" })
map("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous buffer" })
map("n", "<C-PageDown>", ":bnext<CR>", { desc = "Next buffer" })
map("n", "<C-PageUp>", ":bprevious<CR>", { desc = "Previous buffer" })

-- Quick switch to last edited file
map("n", "<leader>bb", "<cmd>e #<CR>", { desc = "Switch to other buffer" })
map("n", "<leader>'", "<cmd>e #<CR>", { desc = "Switch to other buffer" })

-- Resize windows
map("n", "<C-S-Up>", "<cmd>resize +5<CR>", opts)
map("n", "<C-S-Down>", "<cmd>resize -5<CR>", opts)
map("n", "<C-S-Left>", "<cmd>vertical resize +5<CR>", opts)
map("n", "<C-S-Right>", "<cmd>vertical resize -5<CR>", opts)

-- Move block of visual selection
map("v", "J", ":move '>+1<CR>gv=gv", { desc = "Move block down" })
map("v", "K", ":move '<-2<CR>gv=gv", { desc = "Move block up" })

-- Indent without reselecing after each move
map("n", "<", "<gv", opts)
map("n", ">", ">gv", opts)

-- Don't replace clipboard with deleted text
map("x", "<leader>p", [["_dP]], opts)
map("v", "p", '"_dP', opts)
map("n", "x", '"_x', opts)

-- Clear highlights from search
map("n", "<C-c>", ":nohl<CR>", { desc = "Clear search highlights", silent = true })

-- Auto-close pairs -- Moved to util.autopairs
--map("i", "`","``<left>")
--map("i", '"','""<left>')
--map("i", "{","{}<left>")
--map("i", "[","[]<left>")
--map("i", "(","()<left>")
--map("i", "<","<><left>")

-- Save
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- Folds
map("n", "zv", "zMzvzz", { desc = "Close all folds except the current one" })
map("n", "zj", "zcjzOzz", { desc = "Close current fold when open. Always open next fold." })
map("n", "zk", "zckzOzz", { desc = "Close current fold when open. Always open previous fold." })

-- Undo breakpoints so typing "u" deletes back to a character
map("i", ",", ",<c-g>u")
map("i", ".", ".<c-g>u")
map("i", ";", ";<c-g>u")

-- Replace the word cursor is on globally
--vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace word cursor is on globally" })


--TODO
--Add splits
--https://github.com/Sin-cy/dotfiles/blob/main/nvim/.config/nvim/lua/sethy/core/keymaps.lua

