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
opt.autoindent = true

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
opt.hlsearch = false
opt.incsearch = true

-- Keep Cursor On 10 Lines Up From Bottom
opt.scrolloff = 10

-- Update Time
opt.updatetime = 100

-- Color Column (A Vertical Line on 80 chars)
opt.colorcolumn = "80"

-- Sign Column
opt.signcolumn = "yes"

-- Folding
opt.foldcolumn = '1' -- '0' is not bad
opt.foldlevel = 99   -- Using ufo provider need a large value, feel free to decrease the value
opt.foldlevelstart = 99
opt.foldenable = true

-- Set Cursor to block
vim.cmd("set guicursor=i:block")

require("keymap")

-- Lazy Plugin Manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Setup Lazy Plugin Manager
require("lazy").setup({
    spec = "plugins",
    change_detection = { notify = false },
})
