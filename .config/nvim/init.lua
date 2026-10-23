vim.g.mapleader = " "

-- Numbering
vim.opt.number = true
vim.opt.relativenumber = true

-- Tab Stop 2 (Use Spaces)
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

require("config.lazy")
require("config.lsp")
require("config.keymaps")
