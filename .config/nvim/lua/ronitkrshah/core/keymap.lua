-- Keymaps

local keymap = vim.api.nvim_set_keymap

-- global leader key
vim.g.mapleader = " "

-- INSERT mode keybindings
keymap('i', 'jk', '<esc>', { noremap = true, desc = "Quick Escape with jk", silent = true })


-- Better Window Switching
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>l", "<C-w>l")

-- PLUGINS
-- nvim-tree
vim.keymap.set("n", "<Leader>ee", ":NvimTreeToggle<CR>", { silent = true })
vim.keymap.set("n", "<Leader>ef", ":NvimTreeFindFile<CR>", { silent = true })
vim.keymap.set("n", "<Leader>ec", ":NvimTreeCollapse<CR>", { silent = true })
