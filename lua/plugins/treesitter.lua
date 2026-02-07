-- Main plugin and its dependencies
vim.pack.add({"https://github.com/nvim-treesitter/nvim-treesitter.git"})
vim.pack.add({"https://github.com/windwp/nvim-ts-autotag.git"})

-- Define the configuration logic
require("nvim-treesitter.install").prefer_git = true
local treesitter = require('nvim-treesitter.configs')

treesitter.setup({
    -- Automatically install parsers for missing languages
    auto_install = true,
    sync_install = false,
    
    -- Enable highlighting, indenting, auto-tagging
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = { enable = true },
    autotag = { enable = true },
    
    -- Parsers for specific languages
    ensure_installed = {
        "lua", "python", "sql", "r", "go", "json", "toml", 
        "bash", "csv", "tsv", "dockerfile", "rust", "html", 
        "javascript", "typescript", "xml", "yaml"
    },
    
    ignore_install = {},
    
    -- Incremental selection keymaps
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = '<C-Space>',
            node_incremental = '<C-Space>',
            scope_incremental = false,
            node_decremental = '<bs>',
        },
    },
})
