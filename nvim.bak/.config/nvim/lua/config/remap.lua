vim.g.mapleader = " "

-- Open netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Use "jk" to exit Insert mode 
vim.keymap.set("i", "jk", "<Esc>")

-- Move Visual Mode selection up/down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- When using "J" to append the next to to the current one with a space, keep the cursor in place
vim.keymap.set("n", "J", "mzJ`z")

-- Keep cursor in middle of page when navigating or searching
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Delete highlighted work to be pasted over into the void register instead of current register
vim.keymap.set("x", "<leader>p", "\"_dp")

-- Yank into system clipboard for pasting outside of Vim
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>y", "\"+Y")

-- Tmux session picker
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux new tmux-sessionizer<CR>")
