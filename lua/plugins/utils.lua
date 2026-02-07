-- Autopairs 
vim.pack.add({"https://github.com/windwp/nvim-autopairs.git"})
require("nvim-autopairs").setup()

-- Floating terminal
vim.pack.add({"https://github.com/numToStr/FTerm.nvim.git"})
require("FTerm")

-- Creating terminal commands
vim.api.nvim_create_user_command('FTermOpen', require('FTerm').open, { bang = true }) 
vim.api.nvim_create_user_command('FTermClose', require('FTerm').close, { bang = true }) 
vim.api.nvim_create_user_command('FTermExit', require('FTerm').exit, { bang = true })  
vim.api.nvim_create_user_command('FTermToggle', require('FTerm').toggle, { bang = true }) 
-- Creating terminal keymaps
vim.keymap.set("n", "<leader>To", "<Cmd>FTermOpen<CR>", { desc =  "Open a floating terminal" })
vim.keymap.set("n", "<leader>Tc", "<Cmd>FTermClose<CR>", { desc =  "Close a floating terminal" })
vim.keymap.set("n", "<leader>Te", "<Cmd>FTermExit<CR>", { desc =  "Exit a floating terminal" })
vim.keymap.set("n", "<leader>Tt", "<Cmd>FTermToggle<CR>", { desc =  "Toggle a floating terminal" })

