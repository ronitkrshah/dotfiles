local opt = vim.opt

-- Enable Number
opt.number = true
opt.relativenumber = true

-- Line Wrap
opt.wrap = false

-- Indent
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- Ignore Casing While Searching
opt.ignorecase = true
opt.smartcase = true

-- Show Cursor Line
opt.cursorline = true

-- True Colors For Better Dev Env
opt.termguicolors = true

-- Disable Backups
opt.swapfile = false
opt.backup = false
opt.writebackup = false

-- Disable Highlight In Searching
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Keep Cursor On 10 Lines Up From Bottom
opt.scrolloff = 10

-- Update Time
opt.updatetime = 100

-- Color Column (A Vertical Line on 80 chars)
-- opt.colorcolumn = "80"

-- Sign Column
opt.signcolumn = "yes"

-- Show whitespace characters
vim.opt.list = true
vim.opt.listchars = { tab = "»·", trail = "·", space = "·" }

-- Set Cursor to block
vim.cmd("set guicursor=i:block")
