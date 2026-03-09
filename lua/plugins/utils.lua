-- Fuzzy finder
vim.pack.add({"https://github.com/nvim-mini/mini.nvim.git"})
require "mini.pick".setup()

vim.keymap.set('n', '<leader>ff', ":Pick files<CR>")
vim.keymap.set('n', '<leader>fb', ":Pick buffers<CR>")
vim.keymap.set('n', '<leader>fg', ":Pick grep<CR>")

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
vim.keymap.set("n", "<leader>to", "<Cmd>FTermOpen<CR>", { desc =  "Open a floating terminal" })
vim.keymap.set("n", "<leader>tc", "<Cmd>FTermClose<CR>", { desc =  "Close a floating terminal" })
vim.keymap.set("n", "<leader>te", "<Cmd>FTermExit<CR>", { desc =  "Exit a floating terminal" })
vim.keymap.set("n", "<leader>tt", "<Cmd>FTermToggle<CR>", { desc =  "Toggle a floating terminal" })

-- Docstring generator
vim.pack.add({"https://github.com/danymat/neogen.git"})
require("neogen").setup({
  snippet_engine = "luasnip",
  languages = {
    python = {
      template = {
        annotation_convention = "google_docstrings"
      }
    },
  }
})
