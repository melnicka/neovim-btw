-- Installed themes
vim.pack.add({"https://github.com/xero/miasma.nvim"})
vim.pack.add({"https://github.com/savq/melange-nvim.git"})
vim.pack.add({"https://github.com/ramojus/mellifluous.nvim.git"})
-- Current theme
vim.cmd.colorscheme('miasma')
-- This theme doesn't have built-in configuration option for transparency 
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- Highlighting colors
vim.pack.add({"https://github.com/brenoprata10/nvim-highlight-colors.git"})
require('nvim-highlight-colors').setup({
  enable_named_colors = false
})

-- Icons
vim.pack.add({"https://github.com/nvim-tree/nvim-web-devicons.git"})
require("nvim-web-devicons").setup()

--Lualine
vim.pack.add({"https://github.com/nvim-lualine/lualine.nvim.git"})
require("lualine").setup()

