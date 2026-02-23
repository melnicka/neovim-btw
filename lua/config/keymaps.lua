vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set({"n", "v"}, "<leader>cd", "<Cmd>Ex<CR>", { desc = "File explorer" })

-- Better behaviours
vim.keymap.set({ "n", "v" }, "d", '"_d', { desc = "Delete without yanking" })
vim.keymap.set("x", "p", '"_dP', { desc = "Paste without yanking" })
vim.keymap.set("v", "y", "ygv", { desc = "Yank and keep selection" })
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and reselect" })

-- Re-mapping 
vim.keymap.set("n", "B", "^", { desc = "Jump to the first non-blank character of the line" })
vim.keymap.set("n", "W", "g_", { desc = "Jump to the last non-blank character of the line" })

-- Buffer navigation
vim.keymap.set("n", "<leader>bn", "<Cmd>bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bp", "<Cmd>bprevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>ls", "<Cmd>ls<CR>", { desc = "List all buffers " })

-- Window splitting
vim.keymap.set("n", "<leader>wv", "<Cmd>vsplit<CR>", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>wh", "<Cmd>split<CR>", { desc = "Split window horizontally" })

-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Window resizing
vim.keymap.set("n", "<C-Up>", "<Cmd>resize +2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", "<Cmd>resize -2<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", "<Cmd>vertical resize -2<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", "<Cmd>vertical resize +2<CR>", { desc = "Increase window width" })

-- copy file path
vim.keymap.set("n", "<leader>cp", function()
	local path = vim.fn.expand("%:p")
	vim.fn.setreg("+", path)
	print("file:", path)
end)

