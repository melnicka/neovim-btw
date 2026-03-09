vim.pack.add{

  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = "https://github.com/L3MON4D3/LuaSnip" },
  { src = "https://github.com/rafamadriz/friendly-snippets" },
  { src = "https://github.com/Saghen/blink.cmp" },
}


-- Enable lsp servers
vim.lsp.enable({
  'lua_ls',
  'pyright',
  'ruff',
  'bashls',
  'sqlls',
  'r_language_server',
  'rust_analyzer',
  'ccls'
})

-- Diagnostics
vim.diagnostic.config({
  virtual_text = false,
  virtual_lines = false,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    source = "if_many",
    header = '--- Diagnostics ---'
  }
})

-- Opening diagnostic windows
local function show_diag()
    vim.diagnostic.open_float(nil, { focus = false })
end

vim.keymap.set("n", "<leader>h", show_diag)

-- Diagnostics color scheme
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    local set = vim.api.nvim_set_hl
  -- signs
  set(0, "DiagnosticSignError", { fg="#ff5555", bold=true })
  set(0, "DiagnosticSignWarn",  { fg="#f1fa8c", bold=true })
  set(0, "DiagnosticSignInfo",  { fg="#8be9fd", bold=true })
  set(0, "DiagnosticSignHint",  { fg="#50fa7b", bold=true })

  -- floating window text
  set(0, "DiagnosticFloatingError", { fg="#ff5555" })
  set(0, "DiagnosticFloatingWarn",  { fg="#f1fa8c" })
  set(0, "DiagnosticFloatingInfo",  { fg="#8be9fd" })
  set(0, "DiagnosticFloatingHint",  { fg="#50fa7b" })

  -- undercurl
  set(0, "DiagnosticUnderlineError", { undercurl=true, sp="#ff5555" })
  set(0, "DiagnosticUnderlineWarn",  { undercurl=true, sp="#f1fa8c" })
  set(0, "DiagnosticUnderlineInfo",  { undercurl=true, sp="#8be9fd" })
  set(0, "DiagnosticUnderlineHint",  { undercurl=true, sp="#50fa7b" })
end
})


-- Autocompletion, code snippets
require("luasnip.loaders.from_vscode").lazy_load()
require("blink.cmp").setup({
  keymap = {
    ['<C-y>'] = false,
    ['<CR>'] = { 'select_and_accept', 'fallback' },
    ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
    ['<C-e>'] = { 'hide', 'fallback' },
    ['<C-b>'] = false,
    ['<PageUp>'] = { 'scroll_documentation_up', 'fallback' },
    ['<C-f>'] = false,
    ['<PageDown>'] = { 'scroll_documentation_down', 'fallback' }
  },
  fuzzy = {
    implementation = "lua",
    prebuilt_binaries = {
      force_version = "prefer_lua"
    }
  },
  signature = { enabled = true },
	completion = {
		documentation = { auto_show = true, auto_show_delay_ms = 500 },
		menu = {
			auto_show = true,
			draw = {
				treesitter = { "lsp" },
				columns = { { "kind_icon", "label", "label_description", gap = 1 }, { "kind" } },
			},
		},
	},
})

-- Disabling that annoying global warning
vim.lsp.config('lua_ls', {
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
      telemetry = {
        enable = false,
      },
    },
  },
})

-- Disabling pyright's annoying type checking
vim.lsp.config("pyright", {
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "off", -- The most important line. Stops the "float has no detach" BS.
      }
    }
  }
})
