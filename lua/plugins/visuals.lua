-- Color theme
vim.pack.add({"https://github.com/kuri-sun/yoda.nvim.git"})
vim.cmd.colorscheme("yoda")

-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

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

