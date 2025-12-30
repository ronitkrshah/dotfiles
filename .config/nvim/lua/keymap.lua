local keymap = vim.keymap

-- The Leader (SPACE)
vim.g.mapleader = " "

-- Quickly Exit INSERT Mode
keymap.set("i", "jk", "<ESC>");

-- Easier Pane Creation
keymap.set("n", "<leader>|", "<C-w>v")
keymap.set("n", "<leader>-", "<C-w>s")

-- Better Pane Switching
keymap.set("n", "<leader>j", "<C-w>j")
keymap.set("n", "<leader>k", "<C-w>k")
keymap.set("n", "<leader>h", "<C-w>h")
keymap.set("n", "<leader>l", "<C-w>l")

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

keymap.set("v", "<", "<gv", { noremap = true })
keymap.set("v", ">", ">gv", { noremap = true })

-- Make Resizing Easier
keymap.set("n", "<leader><Up>", ":resize +5<CR>")
keymap.set("n", "<leader><Down>", ":resize -5<CR>")
keymap.set("n", "<leader><Left>", ":vertical resize -5<CR>")
keymap.set("n", "<leader><Right>", ":vertical resize +5<CR>")
