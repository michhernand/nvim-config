-- Resize Panes
vim.keymap.set("n", "<leader>Rk", ":res -5<CR>")
vim.keymap.set("n", "<leader>Rj", ":res +5<CR>")
vim.keymap.set("n", "<leader>Rh", ":vertical res -5<CR>")
vim.keymap.set("n", "<leader>Rl", ":vertical res +5<CR>")

-- Jumps
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-f>", "<C-f>zz")
vim.keymap.set("n", "<C-b>", "<C-b>zz")

-- Splits
vim.keymap.set("n", "<leader>wv", "<cmd> vsplit<CR>")
vim.keymap.set("n", "<leader>wh", "<cmd> split<CR>")

-- Delete, but keep register
vim.keymap.set("x", "<leader>p", '"_dP')
vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')

-- Copy, but keep register
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- Cycle Buffers
vim.keymap.set("n", "<leader>bn", "<cmd> bnext<CR>")
vim.keymap.set("n", "<leader>bp", "<cmd> bprev<CR>")
vim.keymap.set("n", "<leader>bd", "<cmd> bdelete<CR>")

-- Help
vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end)
