-- Visual
vim.opt.termguicolors = true -- enable 24-bit color
vim.opt.winborder = "rounded"

-- Others 
vim.opt.clipboard = "unnamedplus" -- integrate yanking/pasting with OS clipboard
vim.opt.undofile = true -- enable undoing changes after closing a file
vim.opt.swapfile = false -- disable creating swapfiles
vim.opt.updatetime = 250 -- faster idle state

-- Basics
vim.opt.relativenumber = true
vim.opt.number = true -- show the absolute line number on the current line only
vim.opt.cursorline = true -- highlight current line 
vim.opt.scrolloff = 8 -- keep a buffer of 8 lines above and below the cursor when scrolling
vim.opt.showmatch = true -- highlight matching brackets
vim.opt.matchtime = 2 -- how long to show matching bracket
vim.opt.signcolumn = "yes" -- it's ugly

-- Indentation
vim.opt.tabstop = 2 -- tab width
vim.opt.shiftwidth = 2 -- indent width
vim.opt.expandtab = true -- use spaces instead of tabs
vim.opt.smartindent = true -- smart auto-indenting
vim.opt.autoindent = true -- copy indent from current line

-- Search settings
vim.opt.ignorecase = true -- case insensitive search
vim.opt.smartcase = true -- case sensitive if uppercase in search
vim.opt.hlsearch = false -- don't highlight search results 
vim.opt.incsearch = true -- show matches as you type


